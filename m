Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5TPO-0003wc-MX
 for barebox@lists.infradead.org; Wed, 04 Sep 2019 11:25:08 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Wed,  4 Sep 2019 13:24:50 +0200
Message-Id: <20190904112450.28168-2-cleger@kalray.eu>
In-Reply-To: <20190904112450.28168-1-cleger@kalray.eu>
References: <d41be90a-e2aa-04c8-2ee5-c0bebca1cbf9@pengutronix.de>
 <20190904112450.28168-1-cleger@kalray.eu>
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
Subject: [PATCH v4 2/2] mips: bootm: Cast elf entry into unsigned long
To: Oleksij Rempel <o.rempel@pengutronix.de>, Barebox List <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Clement Leger <cleger@kalray.eu>

Since elf entry type is now a u64 to accomodate both type of elf files
(64 and 32 bits), we need to cast it to the pointer length before
casting it to the pointer type.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/mips/lib/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index f14540a4c..5bb09cc2d 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -72,7 +72,7 @@ static int do_bootm_elf(struct image_data *data)
 
 	shutdown_barebox();
 
-	entry = (void *)elf->entry;
+	entry = (void *) (unsigned long) elf->entry;
 
 	entry(-2, phys_to_virt((unsigned long)fdt));
 
-- 
2.15.0.276.g89ea799


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
