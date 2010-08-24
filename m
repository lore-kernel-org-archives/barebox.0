Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oo04i-0001wb-O3
	for barebox@lists.infradead.org; Tue, 24 Aug 2010 20:26:29 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 24 Aug 2010 22:26:11 +0200
Message-Id: <1282681572-20846-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1282681572-20846-1-git-send-email-mkl@pengutronix.de>
References: <1282681572-20846-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/3] defaultenv: fix adding of nand_parts
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Really add nand_parts if nand_parts are set, not nor_parts.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 defaultenv/bin/boot |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 5312d1e..a9e589b 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -47,7 +47,7 @@ if [ -n $nor_parts ]; then
 fi
 
 if [ -n $nand_parts ]; then
-	mtdparts="${mtdparts}$nand_device:${nor_parts};"
+	mtdparts="${mtdparts}${nand_device}:${nand_parts};"
 fi
 
 if [ -n $mtdparts ]; then
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
