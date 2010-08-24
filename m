Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oo04d-0001vb-RR
	for barebox@lists.infradead.org; Tue, 24 Aug 2010 20:26:24 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 24 Aug 2010 22:26:10 +0200
Message-Id: <1282681572-20846-2-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/3] defaultenv: fix physmap-flash device name
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

The first physmap-flash device is called "physmap-flash.0" (like zero),
not "physmap-flash.o" (like in oops).

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 defaultenv/bin/boot |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 6a508fb..5312d1e 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -43,7 +43,7 @@ else
 fi
 
 if [ -n $nor_parts ]; then
-	mtdparts="${mtdparts}physmap-flash.o:${nor_parts};"
+	mtdparts="${mtdparts}physmap-flash.0:${nor_parts};"
 fi
 
 if [ -n $nand_parts ]; then
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
