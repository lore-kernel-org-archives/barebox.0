Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cJGoA-000282-60
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 09:34:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cJGnk-00039l-Qj
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 10:33:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 20 Dec 2016 10:33:33 +0100
Message-Id: <20161220093340.14404-2-l.stach@pengutronix.de>
In-Reply-To: <20161220093340.14404-1-l.stach@pengutronix.de>
References: <20161220093340.14404-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/9] arm64: disable PBL support
To: barebox@lists.infradead.org

PBL is another feature, which needs some love to work on ARM64.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/Kconfig     | 1 -
 arch/arm/cpu/Kconfig | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 39f5f0165e01..3e8ccf7661c4 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -3,7 +3,6 @@ config ARM
 	select HAS_KALLSYMS
 	select HAS_CACHE
 	select HAVE_CONFIGURABLE_TEXT_BASE
-	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
 	default y
 
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index e45e05bdb19d..d889e9afb1bb 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -7,6 +7,7 @@ config CPU_32
 	bool
 	select HAS_MODULES
 	select HAS_DMA
+	select HAVE_PBL_IMAGE
 
 config CPU_64
 	bool
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
