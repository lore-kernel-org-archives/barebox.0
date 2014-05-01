Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WfykM-0006Ch-2w
 for barebox@lists.infradead.org; Thu, 01 May 2014 21:42:27 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Wfyjx-0005gz-Bu
 for barebox@lists.infradead.org; Thu, 01 May 2014 23:42:01 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  1 May 2014 23:42:04 +0200
Message-Id: <1398980524-19937-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1398980524-19937-1-git-send-email-l.stach@pengutronix.de>
References: <1398980524-19937-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: bootm: fix default uImage placement
To: barebox@lists.infradead.org

For small systems we would put the zImage at 32KiB after
the start of memory, and put the DT a bit after the uImage.
The kernel will always try to relocate itself and overwrite
the DT.

Try to be more clever at uImage placement to avoid
triggering the kernel relocation.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/lib/bootm.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index dc7d2d9dfbae..803546827945 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -127,7 +127,13 @@ static int do_bootm_linux(struct image_data *data)
 	load_address = data->os_address;
 
 	if (load_address == UIMAGE_INVALID_ADDRESS) {
-		load_address = mem_start + SZ_32K;
+		/*
+		 * Just use a conservative default of 4 times the size of the
+		 * compressed image, to avoid the need for the kernel to
+		 * relocate itself before decompression.
+		 */
+		load_address = mem_start + PAGE_ALIGN(
+		               uimage_get_size(data->os, data->os_num) * 4);
 		if (bootm_verbose(data))
 			printf("no os load address, defaulting to 0x%08lx\n",
 				load_address);
@@ -138,13 +144,10 @@ static int do_bootm_linux(struct image_data *data)
 		return ret;
 
 	/*
-	 * Put devicetree/initrd at maximum to 128MiB into RAM to not
-	 * risk to put it outside of lowmem.
+	 * put oftree/initrd close behind compressed kernel image to avoid
+	 * placing it outside of the kernels lowmem.
 	 */
-	if (mem_size > SZ_256M)
-		mem_free = mem_start + SZ_128M;
-	else
-		mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
+	mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
 
 	return __do_bootm_linux(data, mem_free, 0);
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
