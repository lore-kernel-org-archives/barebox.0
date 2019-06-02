Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXKxe-00021y-4o
 for barebox@lists.infradead.org; Sun, 02 Jun 2019 07:31:23 +0000
Received: by mail-lj1-x243.google.com with SMTP id h11so13358602ljb.2
 for <barebox@lists.infradead.org>; Sun, 02 Jun 2019 00:31:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  2 Jun 2019 10:31:00 +0300
Message-Id: <20190602073101.21352-4-antonynpavlov@gmail.com>
In-Reply-To: <20190602073101.21352-1-antonynpavlov@gmail.com>
References: <20190602073101.21352-1-antonynpavlov@gmail.com>
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
Subject: [RFC 3/4] WIP: make it work on litex
To: barebox@lists.infradead.org

  * litex platform does not use ns16550 at all
    so debug_ll_ns16550_init should be eliminated;

  * there is no IH_ARCH_RISCV definition in include/image.h
    at the moment, so the error stops compiling:
        common/bootm.c: In function 'bootm_open_os_uimage':
        common/bootm.c:491:34: error: 'IH_ARCH' undeclared (first use in this
        function)
        if (data->os->header.ih_arch != IH_ARCH) {
                                        ^~~~~~~

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/boot/start.S | 2 --
 common/bootm.c          | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/start.S b/arch/riscv/boot/start.S
index d1dbe48b7b..fab23e926f 100644
--- a/arch/riscv/boot/start.S
+++ b/arch/riscv/boot/start.S
@@ -28,8 +28,6 @@
 
 .globl _start
 _start:
-	debug_ll_ns16550_init
-
 	riscv_nmon
 
 	li	sp, STACK_BASE + STACK_SIZE
diff --git a/common/bootm.c b/common/bootm.c
index 36f6c41bbd..37379ef03f 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -487,11 +487,13 @@ static int bootm_open_os_uimage(struct image_data *data)
 
 	uimage_print_contents(data->os);
 
+#if 0
 	if (data->os->header.ih_arch != IH_ARCH) {
 		printf("Unsupported Architecture 0x%x\n",
 		       data->os->header.ih_arch);
 		return -EINVAL;
 	}
+#endif
 
 	if (data->os_address == UIMAGE_SOME_ADDRESS)
 		data->os_address = data->os->header.ih_load;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
