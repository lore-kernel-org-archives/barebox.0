Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGzpO-0000yZ-RQ
 for barebox@lists.infradead.org; Sat, 12 Sep 2020 07:20:08 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Sat, 12 Sep 2020 09:12:41 +0200
Message-Id: <20200912071241.29924-5-r.czerwinski@pengutronix.de>
In-Reply-To: <20200912071241.29924-1-r.czerwinski@pengutronix.de>
References: <20200912071241.29924-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 4/4] fastboot: only unset image, not loadaddr
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

In case the board needs to setup the load address of the kernel, don't
overwrite the variable, instead only override the image.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/fastboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 302720c43d..5402a56e66 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -383,7 +383,7 @@ static void __maybe_unused cb_boot(struct fastboot *fb, const char *opt)
 	fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "Booting kernel..\n");
 
 	globalvar_set_match("linux.bootargs.dyn.", "");
-	globalvar_set_match("bootm.image", "");
+	globalvar_set_single("bootm.image", "");
 
 	data.os_file = fb->tempname;
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
