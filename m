Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXC-0003j4-9Y
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:11 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWz-0001xR-5u
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:53 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0000B4-Ke
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:48 +0100
Message-Id: <20181129113048.31857-16-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 15/15] ARM: Kconfig: select THIN_ARCHIVES for ARM
To: Barebox List <barebox@lists.infradead.org>

Use thin archives for all ARM platforms.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3b486f7b8bb8..d66d5e909ff0 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -4,6 +4,7 @@ config ARM
 	select HAS_CACHE
 	select HAVE_CONFIGURABLE_TEXT_BASE if !RELOCATABLE
 	select HAVE_IMAGE_COMPRESSION
+	select THIN_ARCHIVES
 	default y
 
 config ARM_LINUX
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
