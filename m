Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OnNnU-0004Lz-Dl
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 03:34:09 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Aug 2010 05:33:54 +0200
Message-Id: <1282534435-20881-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100823033059.GS8693@game.jcrosoft.org>
References: <20100823033059.GS8693@game.jcrosoft.org>
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
Subject: [PATCH 4/5] macb: introduce HAS_MACB configuration
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig |    2 ++
 drivers/net/Kconfig        |    5 ++++-
 2 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 923ce0b..99d0f4d 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -18,11 +18,13 @@ choice
 config ARCH_AT91SAM9260
 	bool "AT91SAM9260"
 	select CPU_ARM926T
+	select HAS_MACB
 
 config ARCH_AT91SAM9263
 	bool "AT91SAM9263"
 	select CPU_ARM926T
 	select MACH_HAS_LOWLEVEL_INIT
+	select HAS_MACB
 
 endchoice
 
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 0955562..a106a7b 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -4,6 +4,9 @@ config HAS_CS8900
 config HAS_DM9000
 	bool
 
+config HAS_MACB
+	bool
+
 config HAS_AT91_ETHER
 	bool
 
@@ -71,7 +74,7 @@ config DRIVER_NET_EP93XX
 
 config DRIVER_NET_MACB
 	bool "macb Ethernet driver"
-	depends on ARCH_AT91
+	depends on HAS_MACB
 	select MIIPHY
 
 config DRIVER_NET_TAP
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
