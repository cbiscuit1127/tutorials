# スクリプトの概要:
# 指定したディレクトリ内のすべてのファイル名をアッパーキャメルケースからスネークケースに変換します。

# 使用法:
# 1. スクリプトを保存します (例: ConvertToSnakeCase.ps1)。
# 2. PowerShellターミナルでスクリプトを実行します:
#    .\ConvertToSnakeCase.ps1 -Directory "C:\Path\To\Directory"

param (
    [string]$Directory = "."
)

function ConvertToSnakeCase {
    param (
        [string]$InputString
    )

    # 大文字の前にアンダースコアを追加し、すべて小文字に変換
    $SnakeCaseString = ($InputString -replace '([A-Z])', '_$1').ToLower()

    # 先頭のアンダースコアを削除
    if ($SnakeCaseString.StartsWith('_')) {
        $SnakeCaseString = $SnakeCaseString.Substring(1)
    }

    return $SnakeCaseString
}

# 指定したディレクトリのファイルを取得
$files = Get-ChildItem -Path $Directory -File

foreach ($file in $files) {
    $originalName = $file.Name
    $newName = ConvertToSnakeCase -InputString $originalName

    if ($originalName -ne $newName) {
        $newPath = Join-Path -Path $file.DirectoryName -ChildPath $newName

        # ファイル名を変更
        Rename-Item -Path $file.FullName -NewName $newPath
        Write-Output "Renamed '$originalName' to '$newName'"
    }
}
