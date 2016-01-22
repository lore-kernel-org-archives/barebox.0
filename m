Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMWDv-0003zQ-4L
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 07:33:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jan 2016 08:32:24 +0100
Message-Id: <1453447952-30818-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1453447952-30818-1-git-send-email-s.hauer@pengutronix.de>
References: <1453447952-30818-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/14] bootm: Push dryrun to handlers
To: Barebox List <barebox@lists.infradead.org>

We can make the dryrun option more useful by calling into the handlers.
With this we can detect more cases that can go wrong during boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c               | 3 +++
 arch/arm/mach-omap/omap_generic.c  | 5 +++++
 arch/blackfin/lib/blackfin_linux.c | 3 +++
 arch/efi/efi/efi-image.c           | 9 ++++++++-
 arch/mips/lib/bootm.c              | 5 +++++
 arch/nios2/lib/bootm.c             | 3 +++
 arch/ppc/lib/ppclinux.c            | 3 +++
 commands/bootm.c                   | 3 ---
 common/bootm.c                     | 6 +++---
 9 files changed, 33 insertions(+), 7 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 010b668..eef906a 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -110,6 +110,9 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 		printf("...\n");
 	}
 
+	if (data->dryrun)
+		return 0;
+
 	start_linux((void *)kernel, swap, initrd_start, initrd_size, data->oftree);
 
 	restart_machine();
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 4e26c6b..34ed940 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -79,6 +79,11 @@ static int do_bootm_omap_barebox(struct image_data *data)
 	if (!barebox)
 		return -EINVAL;
 
+	if (data->dryrun) {
+		free(barebox);
+		return 0;
+	}
+
 	omap_start_barebox(barebox);
 }
 
diff --git a/arch/blackfin/lib/blackfin_linux.c b/arch/blackfin/lib/blackfin_linux.c
index 2561a7e..da2f78b 100644
--- a/arch/blackfin/lib/blackfin_linux.c
+++ b/arch/blackfin/lib/blackfin_linux.c
@@ -50,6 +50,9 @@ static int do_bootm_linux(struct image_data *idata)
 	appl = (void *)(idata->os_address + idata->os_entry);
 	printf("Starting Kernel at 0x%p\n", appl);
 
+	if (idata->dryrun)
+		return 0;
+
 	icache_disable();
 
 	strncpy(cmdlinedest, cmdline, 0x1000);
diff --git a/arch/efi/efi/efi-image.c b/arch/efi/efi/efi-image.c
index b6437f4..c78043b 100644
--- a/arch/efi/efi/efi-image.c
+++ b/arch/efi/efi/efi-image.c
@@ -190,7 +190,7 @@ static inline void linux_efi_handover(efi_handle_t handle,
 static int do_bootm_efi(struct image_data *data)
 {
 	void *tmp;
-	void *initrd;
+	void *initrd = NULL;
 	size_t size;
 	efi_handle_t handle;
 	int ret;
@@ -244,6 +244,13 @@ static int do_bootm_efi(struct image_data *data)
 		printf("...\n");
 	}
 
+	if (data->dryrun) {
+		BS->unload_image(handle);
+		free(boot_header);
+		free(initrd);
+		return 0;
+	}
+
 	efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
 			      get_time_ns()/1000);
 
diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 84f72f5..ce1521f 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -17,6 +17,11 @@ static int do_bootm_barebox(struct image_data *data)
 	if (!barebox)
 		return -EINVAL;
 
+	if (data->dryrun) {
+		free(barebox)
+		return 0;
+	}
+
 	shutdown_barebox();
 
 	barebox();
diff --git a/arch/nios2/lib/bootm.c b/arch/nios2/lib/bootm.c
index 77da119..231568f 100644
--- a/arch/nios2/lib/bootm.c
+++ b/arch/nios2/lib/bootm.c
@@ -42,6 +42,9 @@ static int do_bootm_linux(struct image_data *idata)
 	if (ret)
 		return ret;
 
+	if (data->dryrun)
+		return 0;
+
 	kernel = (void *)(idata->os_address + idata->os_entry);
 
 	/* kernel parameters passing
diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index 409c0cf..a36682c 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -60,6 +60,9 @@ static int do_bootm_linux(struct image_data *data)
 		return -EINVAL;
 	}
 
+	if (data->dryrun)
+		return 0;
+
 	/* Relocate the device tree if outside the initial
 	 * Linux mapped TLB.
 	 */
diff --git a/commands/bootm.c b/commands/bootm.c
index 75849a1..063da62 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -133,9 +133,6 @@ static int do_bootm(int argc, char *argv[])
 		goto err_out;
 	}
 
-	if (data.dryrun)
-		printf("Dryrun. Aborted\n");
-
 err_out:
 	return ret ? 1 : 0;
 }
diff --git a/common/bootm.c b/common/bootm.c
index f8d9330..7f6533b 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -526,10 +526,10 @@ int bootm_boot(struct bootm_data *bootm_data)
 		printf("Passing control to %s handler\n", handler->name);
 	}
 
+	ret = handler->bootm(data);
 	if (data->dryrun)
-		ret = 0;
-	else
-		ret = handler->bootm(data);
+		printf("Dryrun. Aborted\n");
+
 err_out:
 	if (data->os_res)
 		release_sdram_region(data->os_res);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
