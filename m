Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFxkX-0002L5-EB
 for barebox@lists.infradead.org; Wed, 09 Sep 2020 10:54:50 +0000
From: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
Date: Wed, 9 Sep 2020 12:54:46 +0200
Message-Id: <20200909105446.22379-1-a.schwarzkopf@phytec.de>
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
Subject: [PATCH] common: bootm: Add missing check of fit_open_image() return
 code
To: barebox@lists.infradead.org

Check the return code of fit_open_image() inside bootm_load_initrd(). 
Without this check, the code works with undefined values of 
"initrd_size" and "initrd" should fit_open_image() fail.

Signed-off-by: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
---
 common/bootm.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 7f22ca5ce..5713edad3 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -232,7 +232,11 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 
 		ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk",
 				     &initrd, &initrd_size);
-
+		if (ret) {
+			pr_err("Cannot open ramdisk image in FIT image: %s\n",
+					strerror(-ret));
+			return ret;
+		}
 		data->initrd_res = request_sdram_region("initrd",
 				load_address,
 				initrd_size);
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
