import logging

logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')

logger = logging.getLogger(__name__)

logger.debug('this is a debug message.')
logger.info('this is an info message.')
logger.warning('this is a warning message.')
logger.error('this is an error message.')
logger.critical('this is a critical message.')

