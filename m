Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.zeus.flokli.de ([88.198.15.28] helo=zeus.flokli.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia6kP-0005dl-Tv
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 23:29:27 +0000
From: Florian Klink <flokli@flokli.de>
Date: Thu, 28 Nov 2019 00:19:46 +0100
Message-Id: <20191127231946.27941-4-flokli@flokli.de>
In-Reply-To: <20191127231946.27941-1-flokli@flokli.de>
References: <20191127231946.27941-1-flokli@flokli.de>
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
Subject: [PATCH 3/3] docs: use #!/usr/bin/env bash shebang instead of
 #!/bin/bash
To: barebox@lists.infradead.org
Cc: Florian Klink <flokli@flokli.de>

Some distributions might not have bash in /bin, but in $PATH.

Using #!/usr/bin/env bash solves this, and is consistent with how the
perl and python shebangs look like in the tree.
---
 Documentation/user/usb.rst | 2 +-
 MAKEALL                    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 029e46354..4c1b2925f 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -172,7 +172,7 @@ and initrd:
 
 .. code-block:: sh
 
-  #!/bin/bash
+  #!/usr/bin/env bash
 
   set -e
   set -v
diff --git a/MAKEALL b/MAKEALL
index 909e170b1..3548739e3 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/usr/bin/env bash
 
 # Print statistics when we exit
 trap exit 1 2 3 15
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
