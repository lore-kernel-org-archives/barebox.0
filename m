Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from stcim.de ([2a01:4f8:120:63a3::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9aEz-000416-K9
 for barebox@lists.infradead.org; Sun, 15 Sep 2019 19:31:23 +0000
Received: from xdsl-87-79-171-119.nc.de ([87.79.171.119]
 helo=localhost.localdomain)
 by stcim with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <contact@stefanchrist.eu>)
 id 1i9aEt-0006jj-5K
 for barebox@lists.infradead.org; Sun, 15 Sep 2019 21:31:15 +0200
From: Stefan Lengfeld <contact@stefanchrist.eu>
Date: Sun, 15 Sep 2019 21:31:14 +0200
Message-Id: <20190915193114.3243-1-contact@stefanchrist.eu>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] docs: add python version in shebang
To: barebox@lists.infradead.org

On my machine 'make docs' fails with

    Traceback (most recent call last):
      File "/home/stc/git/barebox/Documentation/gen_commands.py", line 156, in <module>
        parse_c(source)
      File "/home/stc/git/barebox/Documentation/gen_commands.py", line 34, in parse_c
        for line in file(name, 'r'):
    NameError: name 'file' is not defined

because /usr/bin/python points to python3 instead of python2. Fix this
by including the language version in the shebang of the script.

Signed-off-by: Stefan Lengfeld <contact@stefanchrist.eu>
---
 Documentation/gen_commands.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
index 6251b4f22..b46165882 100755
--- a/Documentation/gen_commands.py
+++ b/Documentation/gen_commands.py
@@ -1,4 +1,4 @@
-#!/usr/bin/python
+#!/usr/bin/env python2
 
 import errno
 import os
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
