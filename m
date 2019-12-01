Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibTDI-0002iO-2a
 for barebox@lists.infradead.org; Sun, 01 Dec 2019 17:40:54 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Sun,  1 Dec 2019 18:40:28 +0100
Message-Id: <20191201174028.30319-1-rhi@pengutronix.de>
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
Subject: [PATCH] usb: gadget: fastboot: fix typo
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

According to Wikipedia[1]:

  [The indefinite article] "an" is used before words starting with a
  vowel sound, regardless of whether the word begins with a vowel
  letter. This avoids the glottal stop (momentary silent pause) that
  would otherwise be required between a and a following vowel sound.

"UBI" is pronounced like "you-bee-eye" or "youbee", so it starts with a
consonant sound, therefore the correct indefinite article is "a".

[1]: https://en.wikipedia.org/w/index.php?title=English_articles&oldid=928781459#Distinction_between_a_and_an

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 82a202cc21c8..35c4b8cf4c46 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -861,7 +861,7 @@ static int check_ubi(struct f_fastboot *f_fb, struct file_list_entry *fentry,
 
 	if (filetype == filetype_ubi) {
 		fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO,
-				  "This is an UBI image...");
+				  "This is a UBI image...");
 		return 1;
 	} else {
 		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL,
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
