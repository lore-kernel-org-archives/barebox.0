Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9cGc-0007NM-PH
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 13:37:15 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id F0507BF0EB
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 15:37:09 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Thu, 6 Sep 2012 15:37:09 +0200
Message-Id: <1346938629-17752-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] PCM049: nand_bootstrap add shebang
To: barebox@lists.infradead.org


Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/pcm049/env/bin/nand_bootstrap |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/pcm049/env/bin/nand_bootstrap b/arch/arm/boards/pcm049/env/bin/nand_bootstrap
index f8873fa..49e38dc 100644
--- a/arch/arm/boards/pcm049/env/bin/nand_bootstrap
+++ b/arch/arm/boards/pcm049/env/bin/nand_bootstrap
@@ -1,4 +1,4 @@
-
+#!/bin/sh
 echo "copying barebox to nand..."
 
 mci0.probe=1
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
