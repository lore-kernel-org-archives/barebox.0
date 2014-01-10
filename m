Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Zuw-0006iR-VP
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 11:06:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 12:05:54 +0100
Message-Id: <1389351959-20448-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389351959-20448-1-git-send-email-s.hauer@pengutronix.de>
References: <1389351959-20448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] ARM: bootm: move os loading to do_bootm_linux
To: barebox@lists.infradead.org

__do_bootm_linux is called from the uImage, zImage and raw handlers.
In case of the zImage handler the kernel will already be loaded and
the kernel load code in __do_bootm_linux will do nothing. Move the
loading code to do_bootm_linux so that __do_bootm_linux will always
be called with the kernel already loaded.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c | 37 +++++++++++++++++++------------------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 7401f2f..6f84cb3 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -26,24 +26,6 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 {
 	unsigned long kernel;
 	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
-	struct memory_bank *bank;
-	unsigned long load_address;
-	int ret;
-
-	if (data->os_address == UIMAGE_INVALID_ADDRESS) {
-		bank = list_first_entry(&memory_banks,
-				struct memory_bank, list);
-		load_address = bank->start + SZ_32K;
-		if (bootm_verbose(data))
-			printf("no os load address, defaulting to 0x%08lx\n",
-				load_address);
-	} else {
-		load_address = data->os_address;
-	}
-
-	ret = bootm_load_os(data, load_address);
-	if (ret)
-		return ret;
 
 	kernel = data->os_res->start + data->os_entry;
 
@@ -104,6 +86,25 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 
 static int do_bootm_linux(struct image_data *data)
 {
+	struct memory_bank *bank;
+	unsigned long load_address;
+	int ret;
+
+	load_address = data->os_address;
+
+	if (load_address == UIMAGE_INVALID_ADDRESS) {
+		bank = list_first_entry(&memory_banks,
+				struct memory_bank, list);
+		load_address = bank->start + SZ_32K;
+		if (bootm_verbose(data))
+			printf("no os load address, defaulting to 0x%08lx\n",
+				load_address);
+	}
+
+	ret = bootm_load_os(data, load_address);
+	if (ret)
+		return ret;
+
 	return __do_bootm_linux(data, 0);
 }
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
