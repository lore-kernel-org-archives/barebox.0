Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fUoFF-0002qN-12
 for barebox@lists.infradead.org; Mon, 18 Jun 2018 07:06:34 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 18 Jun 2018 09:06:16 +0200
Message-Id: <20180618070617.20996-2-o.rempel@pengutronix.de>
In-Reply-To: <20180618070617.20996-1-o.rempel@pengutronix.de>
References: <20180618070617.20996-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 1/2] fixup! add basic ELF parser
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

---
 common/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 6f839ea57..4909c8232 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -552,7 +552,6 @@ config TIMESTAMP
 	  automatically enabled when you select CFG_CMD_DATE .
 
 menuconfig BOOTM
-	select ELF
 	select UIMAGE
 	default y if COMMAND_SUPPORT
 	bool "bootm support"
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
