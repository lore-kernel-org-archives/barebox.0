Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5fvs-0008KN-V3
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 18:52:33 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Fri, 11 Jul 2014 20:51:58 +0200
Message-Id: <1405104718-15156-1-git-send-email-jlu@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Documentation: use command groups
To: barebox@lists.infradead.org

The help definition already contained a group declaration.
This is now reused for the HTML documentation.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 Documentation/commands.rst    | 86 ++++++++++++++++++++++++++++++++++++++++++-
 Documentation/gen_commands.py | 13 ++++++-
 2 files changed, 95 insertions(+), 4 deletions(-)

diff --git a/Documentation/commands.rst b/Documentation/commands.rst
index 55b04f6..0dc9e1b 100644
--- a/Documentation/commands.rst
+++ b/Documentation/commands.rst
@@ -1,9 +1,91 @@
 Command reference
 =================
 
+Information
+-----------
 .. toctree::
+   :titlesonly:
    :glob:
-   :maxdepth: 1
 
-   commands/*
+   commands/info/*
+
+Booting
+-------
+.. toctree::
+   :titlesonly:
+   :glob:
+
+   commands/boot/*
+
+Partitions and Filesystems
+--------------------------
+.. toctree::
+   :titlesonly:
+   :glob:
+
+   commands/part/*
+
+Environment
+-----------
+.. toctree::
+   :titlesonly:
+   :glob:
+
+   commands/env/*
+
+Files
+-----
+.. toctree::
+   :titlesonly:
+   :glob:
+
+   commands/file/*
+
+Shell Scripting
+---------------
+.. toctree::
+   :titlesonly:
+   :glob:
+
+   commands/script/*
+
+Console and Framebuffer
+-----------------------
+.. toctree::
+   :titlesonly:
+   :glob:
+
+   commands/console/*
+
+Memory
+------
+.. toctree::
+   :titlesonly:
+   :glob:
+
+   commands/mem/*
+
+Hardware Manipulation
+---------------------
+.. toctree::
+   :titlesonly:
+   :glob:
+
+   commands/hwmanip/*
+
+Miscelleanous
+-------------
+.. toctree::
+   :titlesonly:
+   :glob:
+
+   commands/misc/*
+
+Networking
+----------
+.. toctree::
+   :titlesonly:
+   :glob:
+
+   commands/net/*
 
diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
index 4e33cca..d3db350 100755
--- a/Documentation/gen_commands.py
+++ b/Documentation/gen_commands.py
@@ -1,5 +1,6 @@
 #!/usr/bin/python
 
+import errno
 import os
 import re
 import sys
@@ -76,7 +77,7 @@ def parse_c(name):
     x = CMD_GROUP.match(line)
     if x:
       last = cmd['c_group']
-      last.append(x.group(1).decode("string_escape"))
+      last.append(x.group(1).split('_')[-1].lower())
       continue
     x = CONT.match(line)
     if x:
@@ -159,6 +160,14 @@ for name in CMDS.keys():
 for name, cmd in CMDS.items():
   #pprint({name: cmd})
   rst = gen_rst(name, cmd)
-  target = os.path.join(sys.argv[2], name+'.rst')
+  subdir = os.path.join(sys.argv[2], cmd['c_group'][0])
+  try:
+    os.makedirs(subdir)
+  except OSError as e:
+    if e.errno == errno.EEXIST and os.path.isdir(subdir):
+      pass
+    else:
+      raise
+  target = os.path.join(subdir, name+'.rst')
   file(target, 'w').write(rst)
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
