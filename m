Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRD27-0000f2-0Z
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 09:18:25 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Nov 2018 10:18:00 +0100
Message-Id: <20181126091807.19398-4-o.rempel@pengutronix.de>
In-Reply-To: <20181126091807.19398-1-o.rempel@pengutronix.de>
References: <20181126091807.19398-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 03/10] pbl: enable MIPS for PBL_RELOCATABLE
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

it is needed for multiimage support

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 pbl/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/pbl/Kconfig b/pbl/Kconfig
index 117b79dcbd..f2250dd73b 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -35,7 +35,7 @@ config PBL_FORCE_PIGGYDATA_COPY
 if PBL_IMAGE
 
 config PBL_RELOCATABLE
-	depends on ARM
+	depends on ARM || MIPS
 	bool "relocatable pbl image"
 	help
 	  Generate a pbl binary which can relocate itself during startup to run
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
