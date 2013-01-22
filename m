Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp8.mail.ru ([94.100.176.53])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Txbid-0002TY-JZ
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 11:08:44 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 22 Jan 2013 15:08:34 +0400
Message-Id: <1358852915-17983-4-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 4/5] ARM: ccmx51js: Define reset pin for USB Host1
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51js.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51js.c b/arch/arm/boards/ccxmx51/ccxmx51js.c
index c947a1e..8c1d2dc 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51js.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51js.c
@@ -59,6 +59,7 @@ static iomux_v3_cfg_t ccxmx51js_pads[] = {
 	MX51_PAD_USBH1_DATA5__USBH1_DATA5,
 	MX51_PAD_USBH1_DATA6__USBH1_DATA6,
 	MX51_PAD_USBH1_DATA7__USBH1_DATA7,
+	MX51_PAD_DISPB2_SER_RS__GPIO3_8,	/* Reset */
 };
 
 static struct esdhc_platform_data sdhc1_pdata = {
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
