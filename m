Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvMKi-0008Qq-3l
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:55:32 +0000
Received: by mail-la0-f43.google.com with SMTP id e16so1255195lan.16
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:08 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.07
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:08 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:19 +0200
Message-Id: <1402646075-22747-3-git-send-email-chf.fritz@googlemail.com>
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
Subject: [PATCH 02/18] arm: am33xx: add pinmux config for USB
To: barebox@lists.infradead.org

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 arch/arm/mach-omap/am33xx_mux.c              |   24 ++++++++++++++++++++++++
 arch/arm/mach-omap/include/mach/am33xx-mux.h |    2 ++
 2 files changed, 26 insertions(+)

diff --git a/arch/arm/mach-omap/am33xx_mux.c b/arch/arm/mach-omap/am33xx_mux.c
index 8318713..8779f00 100644
--- a/arch/arm/mach-omap/am33xx_mux.c
+++ b/arch/arm/mach-omap/am33xx_mux.c
@@ -253,6 +253,20 @@ static const __maybe_unused struct module_pin_mux spi1_pin_mux[] = {
 	{-1},
 };
 
+static const __maybe_unused struct module_pin_mux usb0_pin_mux[] = {
+	{OFFSET(usb0_drvvbus), MODE(0)},
+	/* MCASP0_AHCLKR gpio3_17  */
+	{OFFSET(mcasp0_ahclkr), MODE(7) | PULLUDEN | RXACTIVE | PULLUP_EN},
+	{-1},
+};
+
+static const __maybe_unused struct module_pin_mux usb1_pin_mux[] = {
+	{OFFSET(usb1_drvvbus), MODE(0)},
+	/* MCASP0_ACLKR gpio3_18 */
+	{OFFSET(mcasp0_aclkr), MODE(7) | PULLUDEN | RXACTIVE | PULLUP_EN},
+	{-1},
+};
+
 /*
  * Configure the pin mux for the module
  */
@@ -321,3 +335,13 @@ void am33xx_enable_nand_pin_mux(void)
 {
 	configure_module_pin_mux(nand_pin_mux);
 }
+
+void am33xx_enable_usb0_pin_mux(void)
+{
+	configure_module_pin_mux(usb0_pin_mux);
+}
+
+void am33xx_enable_usb1_pin_mux(void)
+{
+	configure_module_pin_mux(usb1_pin_mux);
+}
diff --git a/arch/arm/mach-omap/include/mach/am33xx-mux.h b/arch/arm/mach-omap/include/mach/am33xx-mux.h
index fe3168b..64ad078 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-mux.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-mux.h
@@ -258,5 +258,7 @@ extern void am33xx_enable_uart2_pin_mux(void);
 extern void am33xx_enable_mmc0_pin_mux(void);
 extern void am33xx_enable_spi0_pin_mux(void);
 extern void am33xx_enable_nand_pin_mux(void);
+extern void am33xx_enable_usb0_pin_mux(void);
+extern void am33xx_enable_usb1_pin_mux(void);
 
 #endif /*__AM33XX_MUX_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
