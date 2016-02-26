Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZO1A-0003OM-IS
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 19:25:37 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 26 Feb 2016 20:12:39 +0100
Message-Id: <1456513959-26781-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1456513959-26781-1-git-send-email-dev@lynxeye.de>
References: <1456513959-26781-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/3] arm: bootm: be more clever about kernel spacing
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

When the kernel load address is chosen by the user/image we need
to check if the kernel needs to relocate itself before decompression.
If that's the case the spacing behind the kernel must allow for this
relocation without overwriting anything placed behind the kernel.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/lib/bootm.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index a18d149..28b4f4a 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -92,6 +92,14 @@ static void get_kernel_addresses(unsigned long mem_start, size_t image_size,
 		if (verbose)
 			printf("no OS load address, defaulting to 0x%08lx\n",
 				*load_address);
+	} else if (*load_address <= mem_start + image_decomp_size) {
+		/*
+		 * If the user/image specified an address where the kernel needs
+		 * to relocate itself before decompression we need to extend the
+		 * spacing to allow this relocation to happen without
+		 * overwriting anything placed behind the kernel.
+		 */
+		*spacing += image_decomp_size;
 	}
 }
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
