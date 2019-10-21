Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWCh-0003WP-MH
 for barebox@lists.infradead.org; Mon, 21 Oct 2019 11:50:30 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 21 Oct 2019 13:50:21 +0200
Message-Id: <20191021115021.3129-3-o.rempel@pengutronix.de>
In-Reply-To: <20191021115021.3129-1-o.rempel@pengutronix.de>
References: <20191021115021.3129-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3 3/3] MIPS: reloc: init bss and cpu
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

We need it to make flush_cache_all() work properly.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/lib/reloc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
index 798a68680d..df9760e38c 100644
--- a/arch/mips/lib/reloc.c
+++ b/arch/mips/lib/reloc.c
@@ -115,6 +115,8 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 	long off;
 
 	bss_len = (unsigned long)&__bss_stop - (unsigned long)__bss_start;
+	memset(__bss_start, 0, bss_len);
+	cpu_probe();
 
 	length = barebox_image_size + bss_len;
 	relocaddr = ALIGN_DOWN(ram_size - length, SZ_64K);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
