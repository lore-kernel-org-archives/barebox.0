Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHlMx-0003y1-Cz
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 10:05:58 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 12:05:48 +0200
Message-Id: <20200914100553.24808-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200914100553.24808-1-a.fatoum@pengutronix.de>
References: <20200914100553.24808-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master 2/7] sandbox: add_image: support mmaping block devices
 on 32-bit hosts
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

BLKGETSIZE64 writes 64-bit to the address pointed at by the ioctl argument.
As hf->size is a 32-bit size_t on 32-bit systems, on such systems,
the adjacent member might be corrupted. Fix this.

Fixes: 8d6da6462b12 ("sandbox: add_image: mmap block devices")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/dtb.c                          |  2 +-
 arch/sandbox/board/hostfile.c                     |  1 +
 arch/sandbox/dts/sandbox-state-example.dtsi       |  2 +-
 arch/sandbox/dts/skeleton.dtsi                    |  4 ++--
 arch/sandbox/mach-sandbox/include/mach/hostfile.h |  2 +-
 arch/sandbox/os/common.c                          | 10 +++++++---
 6 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/arch/sandbox/board/dtb.c b/arch/sandbox/board/dtb.c
index 74ecbadf4217..d11bde0249bd 100644
--- a/arch/sandbox/board/dtb.c
+++ b/arch/sandbox/board/dtb.c
@@ -46,7 +46,7 @@ static int of_sandbox_init(void)
 		if (ret)
 			return ret;
 
-		ret = of_property_write_u32(root, "#size-cells", 1);
+		ret = of_property_write_u32(root, "#size-cells", 2);
 		if (ret)
 			return ret;
 	}
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 56023b4ad45d..07287fc0b4a1 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -134,6 +134,7 @@ static int of_hostfile_fixup(struct device_node *root, void *ctx)
 	uint32_t reg[] = {
 		hf->base >> 32,
 		hf->base,
+		hf->size >> 32,
 		hf->size
 	};
 	int ret;
diff --git a/arch/sandbox/dts/sandbox-state-example.dtsi b/arch/sandbox/dts/sandbox-state-example.dtsi
index fc17bd078899..98640f6677cf 100644
--- a/arch/sandbox/dts/sandbox-state-example.dtsi
+++ b/arch/sandbox/dts/sandbox-state-example.dtsi
@@ -6,7 +6,7 @@
 	disk {
 		compatible = "barebox,hostfile";
 		barebox,filename = "disk";
-		reg = <0x0 0x0 0x100000>;
+		reg = <0x0 0x0 0x0 0x100000>;
 
 		partitions {
 			compatible = "fixed-partitions";
diff --git a/arch/sandbox/dts/skeleton.dtsi b/arch/sandbox/dts/skeleton.dtsi
index 38ead821bb42..8ba7663eb5c0 100644
--- a/arch/sandbox/dts/skeleton.dtsi
+++ b/arch/sandbox/dts/skeleton.dtsi
@@ -6,8 +6,8 @@
 
 / {
 	#address-cells = <2>;
-	#size-cells = <1>;
+	#size-cells = <2>;
 	chosen { };
 	aliases { };
-	memory { device_type = "memory"; reg = <0 0 0>; };
+	memory { device_type = "memory"; reg = <0 0 0 0>; };
 };
diff --git a/arch/sandbox/mach-sandbox/include/mach/hostfile.h b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
index 54f690be5f7f..e2f44c4f7b0c 100644
--- a/arch/sandbox/mach-sandbox/include/mach/hostfile.h
+++ b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
@@ -4,7 +4,7 @@
 struct hf_info {
 	int fd;
 	unsigned long long base;
-	size_t size;
+	unsigned long long size;
 	const char *devname;
 	const char *filename;
 };
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 69fadb3b47a4..9f26f8fa6e9a 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -267,9 +267,13 @@ static int add_image(char *str, char *devname_template, int *devname_number)
 			goto err_out;
 		}
 	}
-	hf->base = (unsigned long)mmap(NULL, hf->size,
-			PROT_READ | (readonly ? 0 : PROT_WRITE),
-			MAP_SHARED, fd, 0);
+	if (hf->size <= SIZE_MAX)
+		hf->base = (unsigned long)mmap(NULL, hf->size,
+				PROT_READ | (readonly ? 0 : PROT_WRITE),
+				MAP_SHARED, fd, 0);
+	else
+		printf("warning: %s: contiguous map failed\n", filename);
+
 	if (hf->base == (unsigned long)MAP_FAILED)
 		printf("warning: mmapping %s failed: %s\n", filename, strerror(errno));
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
