Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvMLB-0000B1-9K
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:56:03 +0000
Received: by mail-la0-f51.google.com with SMTP id mc6so949746lab.24
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:38 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.37
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:37 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:31 +0200
Message-Id: <1402646075-22747-15-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
References: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
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
Subject: [PATCH 14/18] arm: am33xx: add usb base addresses
To: barebox@lists.infradead.org

---
 arch/arm/mach-omap/include/mach/am33xx-silicon.h |   10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
index 20b8e81..bccae89 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
@@ -76,6 +76,16 @@
 /* Watchdog Timer */
 #define AM33XX_WDT_BASE			0x44E35000
 
+/* USB */
+#define AM33XX_USBSS_BASE		0x47400000
+#define AM33XX_USB0_BASE		0x47401000
+#define AM33XX_USB0_PHY_BASE		0x47401300
+#define AM33XX_USB0_CORE_BASE		0x47401400
+#define USB1_OFFSET			0x00000800
+#define AM33XX_USB1_BASE		(AM33XX_USB0_BASE + USB1_OFFSET)
+#define AM33XX_USB1_PHY_BASE		(AM33XX_USB0_PHY_BASE + USB1_OFFSET)
+#define AM33XX_USB1_CORE_BASE		(AM33XX_USB0_CORE_BASE + USB1_OFFSET)
+
 /* EMIF Base address */
 #define AM33XX_EMIF4_0_CFG_BASE		0x4C000000
 #define AM33XX_EMIF4_1_CFG_BASE		0x4D000000
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
