Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp36.i.mail.ru ([94.100.177.96])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYt2Z-000720-By
 for barebox@lists.infradead.org; Sat, 12 Apr 2014 08:11:57 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 12 Apr 2014 12:11:01 +0400
Message-Id: <1397290265-21273-8-git-send-email-shc_work@mail.ru>
In-Reply-To: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
References: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 08/12] commands/usbserial: Remove unused variable
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/usbserial.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/commands/usbserial.c b/commands/usbserial.c
index bd5067f..969fd25 100644
--- a/commands/usbserial.c
+++ b/commands/usbserial.c
@@ -31,7 +31,6 @@ static int do_usbserial(int argc, char *argv[])
 {
 	int opt;
 	struct usb_serial_pdata pdata;
-	char *argstr;
 	char *manufacturer = "barebox";
 	const char *productname = barebox_get_model();
 	u16 idVendor = 0, idProduct = 0;
@@ -68,8 +67,6 @@ static int do_usbserial(int argc, char *argv[])
 		}
 	}
 
-	argstr = argv[optind];
-
 	pdata.manufacturer = manufacturer;
 	pdata.productname = productname;
 	pdata.idVendor = idVendor;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
