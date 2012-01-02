Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhiUy-0000iQ-UL
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 14:04:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jan 2012 15:04:17 +0100
Message-Id: <1325513057-30030-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] MAKEALL: explicitly use bash
To: barebox@lists.infradead.org

The script still contains bashisms, so use bash.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 MAKEALL |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 25b9977..1ba4710 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -1,4 +1,4 @@
-#!/bin/sh
+#!/bin/bash
 
 # Print statistics when we exit
 trap exit 1 2 3 15
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
