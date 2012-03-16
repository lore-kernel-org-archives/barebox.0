Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp24.mail.ru ([94.100.176.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S8Ulr-0002rm-5P
 for barebox@lists.infradead.org; Fri, 16 Mar 2012 10:52:32 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 16 Mar 2012 14:52:26 +0400
Message-Id: <1331895146-8176-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] PCM038: add support for MMC
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c |    9 +++++++++
 1 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 8dd6521..0d925cc 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -221,6 +221,13 @@ static int pcm038_devices_init(void)
 		/* I2C2 */
 		PC5_PF_I2C2_SDA,
 		PC6_PF_I2C2_SCL,
+		/* SD1 */
+		PE18_PF_SD1_D0,
+		PE19_PF_SD1_D1,
+		PE20_PF_SD1_D2,
+		PE21_PF_SD1_D3,
+		PE22_PF_SD1_CMD,
+		PE23_PF_SD1_CLK,
 	};
 
 	/* configure 16 bit nor flash on cs0 */
@@ -264,6 +271,8 @@ static int pcm038_devices_init(void)
 	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
 #endif
 
+	imx27_add_mmc0(NULL);
+
 	/* Register the fec device after the PLL re-initialisation
 	 * as the fec depends on the (now higher) ipg clock
 	 */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
