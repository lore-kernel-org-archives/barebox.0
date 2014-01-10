Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Zuw-0006iT-VO
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 11:06:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 12:05:57 +0100
Message-Id: <1389351959-20448-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] ARM: bootm: locate zImage higher into RAM
To: barebox@lists.infradead.org

The zImage should be placed where it won't be overwritten by the
uncompressed image, otherwise the kernel decompressing code has
to relocate the zImage before decompression. As Kernels tend to
become bigger put it into 32MiB into RAM if we have enough RAM
available.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 3604df0..11ff98c 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -195,7 +195,17 @@ static int do_bootz_linux(struct image_data *data)
 	if (load_address == UIMAGE_INVALID_ADDRESS) {
 		struct memory_bank *bank = list_first_entry(&memory_banks,
 				struct memory_bank, list);
-		data->os_address = bank->start + SZ_8M;
+
+		/*
+		 * The kernel should stay in the first 128MiB of RAM, recommended
+		 * is 32MiB into RAM so that relocation prior to decompression
+		 * can be avoided.
+		 */
+		if (mem_size > SZ_64M)
+			data->os_address = bank->start + SZ_32M;
+		else
+			data->os_address = bank->start + SZ_8M;
+
 		load_address = data->os_address;
 		if (bootm_verbose(data))
 			printf("no os load address, defaulting to 0x%08lx\n",
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
