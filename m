Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIB8P-0004yZ-JS
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 13:36:38 +0000
From: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
Date: Tue, 15 Sep 2020 15:36:30 +0200
Message-Id: <20200915133630.32511-2-a.schwarzkopf@phytec.de>
In-Reply-To: <20200915133630.32511-1-a.schwarzkopf@phytec.de>
References: <20200915133630.32511-1-a.schwarzkopf@phytec.de>
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
Subject: [PATCH 1/1] bootm: Allow loading OP-TEE from FIT image
To: barebox@lists.infradead.org

Currently, TEE binaries can only be loaded if CONFIG_BOOTM_FORCE_SIGNED_IMAGES
is not set. No signature check is being performed on them.

Allow loading OP-TEE from FIT images. Therefore, now it's possible
to ensure that only trusted OP-TEE binaries will be loaded by using
signed FIT images.

Signed-off-by: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
---
 arch/arm/lib32/bootm.c | 44 +++++++++++++++++++++++++++++++++++++-----
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 971ebee8a..c33ecc2ad 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -20,7 +20,7 @@
 #include <restart.h>
 #include <globalvar.h>
 #include <tee/optee.h>
-
+#include <image-fit.h>
 #include <asm/byteorder.h>
 #include <asm/setup.h>
 #include <asm/barebox-arm.h>
@@ -166,6 +166,34 @@ static int optee_verify_header_request_region(struct image_data *data, struct op
 	return ret;
 }
 
+static int bootm_load_tee_from_fit(struct image_data *data)
+{
+	int ret = 0;
+	struct optee_header hdr;
+
+	if (data->os_fit &&
+	    fit_has_image(data->os_fit, data->fit_config, "tee")) {
+		const void *tee;
+		unsigned long tee_size;
+
+		ret = fit_open_image(data->os_fit, data->fit_config, "tee",
+				     &tee, &tee_size);
+		if (ret) {
+			pr_err("Error opening tee fit image: %s\n", strerror(-ret));
+			return ret;
+		}
+		memcpy(&hdr, tee, sizeof(hdr));
+		if (optee_verify_header_request_region(data, &hdr) < 0) {
+			pr_err("%s", strerror(errno));
+			ret = -errno;
+			goto out;
+		}
+		memcpy((void *)data->tee_res->start, tee + sizeof(hdr), hdr.init_size);
+		printf("Read optee image to %pa, size 0x%08x\n", (void *)data->tee_res->start, hdr.init_size);
+	}
+out:
+	return ret;
+}
 static int bootm_load_tee_from_file(struct image_data *data)
 {
 	int fd, ret;
@@ -262,10 +290,16 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 			return ret;
 	}
 
-	if (IS_ENABLED(CONFIG_BOOTM_OPTEE) && data->tee_file) {
-		ret = bootm_load_tee_from_file(data);
-		if (ret)
-			return ret;
+	if (IS_ENABLED(CONFIG_BOOTM_OPTEE)) {
+		if (data->tee_file && !IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES)) {
+			ret = bootm_load_tee_from_file(data);
+			if (ret)
+				return ret;
+		} else if (IS_ENABLED(CONFIG_FITIMAGE)) {
+			ret = bootm_load_tee_from_fit(data);
+			if (ret)
+				return ret;
+		}
 	}
 
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
