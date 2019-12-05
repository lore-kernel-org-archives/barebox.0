Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.zeus.flokli.de ([88.198.15.28] helo=zeus.flokli.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icyx8-0008KK-EW
 for barebox@lists.infradead.org; Thu, 05 Dec 2019 21:46:27 +0000
From: Florian Klink <flokli@flokli.de>
Date: Thu,  5 Dec 2019 22:45:50 +0100
Message-Id: <20191205214550.21212-4-flokli@flokli.de>
In-Reply-To: <20191205214550.21212-1-flokli@flokli.de>
References: <20191203091202.cuamocvdyxtr5b6u@pengutronix.de>
 <20191205214550.21212-1-flokli@flokli.de>
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
Subject: [PATCH v2 4/4] docs: use #!/usr/bin/env python shebang instead of
 #!/usr/bin/python
To: barebox@lists.infradead.org
Cc: Florian Klink <flokli@flokli.de>

Some distributions might not have python in /usr/bin, but in $PATH.

Using #!/usr/bin/env python solves this, and is consistent with how the
other perl and python shebangs look like in the tree.
---
 Documentation/gen_commands.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
index 203a39bb1..a55b1acd8 100755
--- a/Documentation/gen_commands.py
+++ b/Documentation/gen_commands.py
@@ -1,4 +1,4 @@
-#!/usr/bin/python
+#!/usr/bin/env python
 
 from __future__ import print_function
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
