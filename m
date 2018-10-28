Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout02.posteo.de ([185.67.36.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGm0D-0001PW-HO
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 14:25:25 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id 2C8A12400E5
 for <barebox@lists.infradead.org>; Sun, 28 Oct 2018 15:25:01 +0100 (CET)
From: Patrick Boettcher <p@yai.se>
Date: Sun, 28 Oct 2018 15:24:51 +0100
Message-Id: <20181028142451.23205-1-p@yai.se>
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
Subject: [PATCH] bootm: abort if kernel is outside the first 128MB
To: barebox@lists.infradead.org
Cc: Patrick Boettcher <p@yai.se>

Huge images and the pessimistic approach of barebox to put the
kernel-image at five times its size may lead to it being
positioned not in the first 128MiB of RAM. This is however
required for it to be boot. (Referring to

  https://www.kernel.org/doc/Documentation/arm/Booting

"Calling the kernel image")

This commit aborts the boot and displays a message if the
image is located outside the first 128MB.

Signed-off-by: Patrick Boettcher <p@yai.se>
---
 arch/arm/lib32/bootm.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 4cf570e57..42febdc71 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -121,6 +121,12 @@ static int get_kernel_addresses(size_t image_size,
 		spacing += image_decomp_size;
 	}
 
+	if ((*load_address - mem_start) > SZ_128M) {
+		printf("boot aborted: kernel address outside 128MiB "
+		       "(0x%08lx)\n", *load_address);
+		return -ENOMEM;
+	}
+
 	*mem_free = PAGE_ALIGN(*load_address + image_size + spacing);
 
 	/*
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
