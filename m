Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kafxy-00087o-7F
 for barebox@lists.infradead.org; Thu, 05 Nov 2020 14:10:19 +0000
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1kafxv-0005id-KL
 for barebox@lists.infradead.org; Thu, 05 Nov 2020 15:10:16 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  5 Nov 2020 15:10:13 +0100
Message-Id: <20201105141015.1695515-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] ddr: imx8m: correct the pwrctl setting of selfref_en
To: barebox@lists.infradead.org

Port of upstream U-Boot commit: 1eb325af16e2

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/ddr/imx8m/ddr_init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index d4efee613343..bc64e7c17e1a 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -156,7 +156,7 @@ static int imx8m_ddr_init(unsigned long src_ddrc_rcr,
 	/* Step26: Set back register in Step4 to the original values if desired */
 	reg32_write(DDRC_RFSHCTL3(0), 0x0000000);
 	/* enable selfref_en by default */
-	setbits_le32(DDRC_PWRCTL(0), 0x1 << 3);
+	setbits_le32(DDRC_PWRCTL(0), 0x1);
 
 	/* enable port 0 */
 	reg32_write(DDRC_PCTRL_0(0), 0x00000001);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
