# スクリプトの概要:
# 指定したディレクトリ内のすべてのファイル名からアンダースコア（_）を削除します。

# 使用法:
# 1. スクリプトを保存します (例: RemoveUnderscores.ps1)。
# 2. PowerShellターミナルでスクリプトを実行します:
#    .\RemoveUnderscores.ps1 -Directory "C:\Path\To\Directory"

param (
    [string]$Directory = "."
)

function RemoveUnderscores {
    param (
        [string]$InputString
    )

    # アンダースコアを削除
    $NewString = $InputString -replace '_', ''

    return $NewString
}

# 指定したディレクトリのファイルを取得
$files = Get-ChildItem -Path $Directory -File

foreach ($file in $files) {
    $originalName = $file.Name
    $newName = RemoveUnderscores -InputString $originalName

    if ($originalName -ne $newName) {
        $newPath = Join-Path -Path $file.DirectoryName -ChildPath $newName

        # ファイル名を変更
        Rename-Item -Path $file.FullName -NewName $newName
        Write-Output "Renamed '$originalName' to '$newName'"
    }
}
