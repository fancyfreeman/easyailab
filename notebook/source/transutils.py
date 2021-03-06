"""Translation related utilities. When imported, injects _ to builtins"""

# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

import os
import gettext


# Set up message catalog access
base_dir = os.path.realpath(os.path.join(__file__, '..', '..'))
trans = gettext.translation('notebook', localedir=os.path.join(base_dir, 'notebook/i18n'), languages=['zh_CN'], lback=True)
_ = trans.gettext
