Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bbiRz-0004pq-PJ
 for barebox@lists.infradead.org; Mon, 22 Aug 2016 06:11:12 +0000
Date: Mon, 22 Aug 2016 08:10:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160822061049.GC20657@pengutronix.de>
References: <7f89efef-2805-34d8-db7d-f3bc53d8e21a@gmail.com>
 <20160818073831.GL20657@pengutronix.de>
 <2b1f58b6-7d4b-5b85-240e-aa41c2e23c2e@gmail.com>
 <8b40b96f-0414-4566-1215-e1d6bb7abab1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b40b96f-0414-4566-1215-e1d6bb7abab1@gmail.com>
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
Subject: Re: AT91RM9200 hang in atmel_serial_putc
To: Peter Kardos <kardos.peter.sk@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 18, 2016 at 11:15:33PM +0200, Peter Kardos wrote:
> Hi Sascha,
> 
> I may have something. It seems the memory (MMU?) gets "messed" up;
> 
> Reading the debug uart registers (v2015.07) gives reasonable results, like
>     (gdb) x/32w 0xfffff200
>     0xfffff200:    0x00000000    0x00000800    0x00000000 0x00000000
>     0xfffff210:    0x00000000    0x40001a1a    0x00000000 0x00000000
>     0xfffff220:    0x00000021    0x00000000    0x00000000 0x00000000
>     0xfffff230:    0x00000000    0x00000000    0x00000000 0x00000000
>     0xfffff240:    0x09290781    0x00000000    0x00000000 0x00000000
> 
> However the content from v2016.08 gives
> 
> 0xFFFFF200    D78D7E1F    F1139ADE    413E0FE5    BBFB6DF2
> 0xFFFFF210    7D78666E    79CBDEA6    8FB2CB03    BEF6C2B7
> 0xFFFFF220    C9071D17    FA1EFA2D    C4BCD95E    27D73C7C
> 0xFFFFF230    727C3437    DFBDEBED    69C45C2A    7F5958F6
> 0xFFFFF240    834B237E    F8B8A211    1AC74D66    FAE06274

Uh, this indeed seems to be messed up by the MMU, more specifically
during setup of the vector table. Could you try the attached patch?
It's not a solution, but is a clear indication that the bug is in this
area.

Sascha

---------------------------8<--------------------------------

From eb66f09db694a0bc1fc88cde8d86e47faf6debf9 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Aug 2016 08:05:38 +0200
Subject: [PATCH] ARM: Disable vector table (tmp)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index a31bce4..fc26077 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -289,6 +289,8 @@ static void create_vector_table(unsigned long adr)
 	u32 *exc;
 	int idx;
 
+	return;
+
 	vectors_sdram = request_sdram_region("vector table", adr, SZ_4K);
 	if (vectors_sdram) {
 		/*
-- 
2.8.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
