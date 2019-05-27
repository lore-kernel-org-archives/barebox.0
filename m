Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCO5-0001nF-Mx
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-000227-TN
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003EX-Ux
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:39 +0200
Message-Id: <20190527095744.5923-14-a.fatoum@pengutronix.de>
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 13/18] scripts: omap3-usb-loader: don't depend on unportable
 le32toh
To: barebox@lists.infradead.org

The file already defines le32_to_cpu(), which does the same, so
use it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/omap3-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/omap3-usb-loader.c b/scripts/omap3-usb-loader.c
index 3ba9af06527c..73c5a6d97a53 100644
--- a/scripts/omap3-usb-loader.c
+++ b/scripts/omap3-usb-loader.c
@@ -403,7 +403,7 @@ static int transfer_first_stage(libusb_device_handle * handle, struct arg_state
 	data = file->data;
 	dbuf = data;
 
-	if (le32toh(dbuf[5]) == 0x45534843) {
+	if (le32_to_cpu(dbuf[5]) == 0x45534843) {
 		int chsettingssize = 512 + 2 * sizeof(uint32_t);
 
 		log_info("CHSETTINGS image detected. Skipping header\n");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
