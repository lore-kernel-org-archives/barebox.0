Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.85 #2 (Red Hat Linux))
 id 1Zcu3l-000693-OQ
 for barebox@lists.infradead.org; Fri, 18 Sep 2015 11:42:35 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9DDD1A0031F
 for <barebox@lists.infradead.org>; Fri, 18 Sep 2015 13:42:08 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Fri, 18 Sep 2015 13:42:03 +0200
Message-Id: <1442576523-15880-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH] images: ignore *.imx-sram-img
To: barebox@lists.infradead.org

Add pattern to gitignore to hide files:

    start_imx6_cm_fx6.imx-sram-img
    start_imx6_utilite.imx-sram-img

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 images/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/images/.gitignore b/images/.gitignore
index b5004fe..b03ffdc 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -5,6 +5,7 @@
 *.imximg
 *.imximg.prep
 *.imximg.signed
+*.imx-sram-img
 *.map
 *.src
 *.kwbimg
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
