Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay05.ispgateway.de ([80.67.31.94])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SAONE-0003te-4a
 for barebox@lists.infradead.org; Wed, 21 Mar 2012 16:26:57 +0000
From: Asen Chavdarov Dimov <dimov@ronetix.at>
Date: Wed, 21 Mar 2012 18:27:24 +0200
Message-Id: <1332347246-8777-2-git-send-email-dimov@ronetix.at>
In-Reply-To: <1332347246-8777-1-git-send-email-dimov@ronetix.at>
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
 <1332347246-8777-1-git-send-email-dimov@ronetix.at>
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
Subject: [PATCH v3 2/4] pm9g45: fix Ethernet
To: barebox@lists.infradead.org

Enable PHY clock.

Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
---
since v1:
	- phy_init changed to pm9g45_phy_init
	- pm9g45_phy_init becamos void and "return 0" is removed
	- removed manual clock enabling

since v2:
	- dropped an empty line
---
 arch/arm/boards/pm9g45/init.c |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 480c751..567bad4 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -82,6 +82,17 @@ static struct at91_ether_platform_data macb_pdata = {
 	.phy_addr = 0,
 };
 
+static void pm9g45_phy_init(void)
+{
+	/*
+	 * PD2 enables the 50MHz oscillator for Ethernet PHY
+	 * 1 - enable
+	 * 0 - disable
+	 */
+	at91_set_gpio_output(AT91_PIN_PD2, 1);
+	at91_set_gpio_value(AT91_PIN_PD2, 1);
+}
+
 static int pm9g45_mem_init(void)
 {
 	at91_add_device_sdram(128 * 1024 * 1024);
@@ -93,6 +104,7 @@ mem_initcall(pm9g45_mem_init);
 static int pm9g45_devices_init(void)
 {
 	pm_add_device_nand();
+	pm9g45_phy_init();
 	at91_add_device_eth(&macb_pdata);
 
 	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
