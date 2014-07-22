Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9Ux4-0006Du-Ox
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 07:57:35 +0000
Received: by mail-we0-f173.google.com with SMTP id q58so8797533wes.4
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 00:57:10 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 22 Jul 2014 09:56:47 +0200
Message-Id: <1406015809-20711-4-git-send-email-holgerschurig@gmail.de>
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
Subject: [PATCH 3/5] Documentation: only write changed *.rst files
To: barebox@lists.infradead.org

From: Holger Schurig <holgerschurig@gmail.com>

Documentation/gen_commands.py use to re-write all auto-generated *.rst
file, changed or not. That in turn didn't work well with the internal
cache of the Sphinx documentation generator.

By comparing the SHA1 hash of the newly generated *.rst with the
current sha1 file, the time to execute "make docs" can be reduced
from 6.2s to 2.4s on my humble laptop.
---
 Documentation/gen_commands.py | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
index d3db350..eadea9e 100755
--- a/Documentation/gen_commands.py
+++ b/Documentation/gen_commands.py
@@ -4,6 +4,7 @@ import errno
 import os
 import re
 import sys
+import hashlib
 
 from collections import defaultdict
 from pprint import pprint
@@ -169,5 +170,18 @@ for name, cmd in CMDS.items():
     else:
       raise
   target = os.path.join(subdir, name+'.rst')
+
+  # Only write the new rst if it differs from the old one. Wroto
+  hash_old = hashlib.sha1()
+  try:
+    f = open(target, 'rb')
+    hash_old.update(f.read())
+  except:
+    pass
+  hash_new = hashlib.sha1()
+  hash_new.update(rst)
+  if hash_old.hexdigest() == hash_new.hexdigest():
+    continue
+
   file(target, 'w').write(rst)
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
