Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp8.mail.ru ([94.100.176.53])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Txbib-0002Sq-KR
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 11:08:42 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 22 Jan 2013 15:08:32 +0400
Message-Id: <1358852915-17983-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1358852915-17983-1-git-send-email-shc_work@mail.ru>
References: <1358852915-17983-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/5] ARM: ccmx51: Fix ethernet devices control by MC13892 GPOs
To: barebox@lists.infradead.org

LAN9221 is eth1, FEC is eth0, so fix power/reset control by
MC13892 GPOs.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index acd2aef..1ca966e 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -363,12 +363,12 @@ static int ccxmx51_power_init(void)
 	/* De-assert reset of external devices on GP01, GPO2, GPO3 and GPO4 */
 	mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_POWER_MISC, &val);
 	/* GPO1 - External */
-	/* GP02 - LAN9221  */
-	/* GP03 - FEC      */
-	/* GP04 - Wireless */
-	if (IS_ENABLED(CONFIG_DRIVER_NET_SMC911X) && ccxmx51_id->eth0)
+	/* GP02 - LAN9221 Power */
+	/* GP03 - FEC Reset */
+	/* GP04 - Wireless Power */
+	if (IS_ENABLED(CONFIG_DRIVER_NET_SMC911X) && ccxmx51_id->eth1)
 		val |= (1 << 8);
-	if (IS_ENABLED(CONFIG_DRIVER_NET_FEC_IMX) && ccxmx51_id->eth1)
+	if (IS_ENABLED(CONFIG_DRIVER_NET_FEC_IMX) && ccxmx51_id->eth0)
 		val |= (1 << 10);
 	if (ccxmx51_id->wless)
 		val |= (1 << 12);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
