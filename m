Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5.mail.ru ([94.100.176.132])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsRdl-0005f4-HX
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 04:50:06 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 21 Jul 2012 08:50:09 +0400
Message-Id: <1342846209-10461-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1342846209-10461-1-git-send-email-shc_work@mail.ru>
References: <1342846209-10461-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/3] PCM038: Added setup for OTG host pins
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index ffd8d87..fdf7431 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -236,6 +236,19 @@ static int pcm038_devices_init(void)
 		PA29_PF_VSYNC,
 		PA30_PF_CONTRAST,
 		PA31_PF_OE_ACD,
+		/* OTG host */
+		PC7_PF_USBOTG_DATA5,
+		PC8_PF_USBOTG_DATA6,
+		PC9_PF_USBOTG_DATA0,
+		PC10_PF_USBOTG_DATA2,
+		PC11_PF_USBOTG_DATA1,
+		PC12_PF_USBOTG_DATA4,
+		PC13_PF_USBOTG_DATA3,
+		PE0_PF_USBOTG_NXT,
+		PE1_PF_USBOTG_STP,
+		PE2_PF_USBOTG_DIR,
+		PE24_PF_USBOTG_CLK,
+		PE25_PF_USBOTG_DATA7,
 		/* I2C1 */
 		PD17_PF_I2C_DATA | GPIO_PUEN,
 		PD18_PF_I2C_CLK,
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
