Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiD3U-0006d6-E2
 for barebox@lists.infradead.org; Tue, 02 Jul 2019 07:18:22 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  2 Jul 2019 09:17:56 +0200
Message-Id: <20190702071754.32431-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20190702071754.32431-1-r.czerwinski@pengutronix.de>
References: <20190702071754.32431-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/2] f_fastboot: remove only image from bootm variables
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Remove only the bootm.image variable which will be set by fastboot.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index bdf0c807df..82a202cc21 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -767,7 +767,7 @@ static void __maybe_unused cb_boot(struct f_fastboot *f_fb, const char *opt)
 	fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO, "Booting kernel..\n");
 
 	globalvar_set_match("linux.bootargs.dyn.", "");
-	globalvar_set_match("bootm.", "");
+	globalvar_set_match("bootm.image", "");
 
 	data.os_file = xstrdup(FASTBOOT_TMPFILE);
 
-- 
2.22.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
