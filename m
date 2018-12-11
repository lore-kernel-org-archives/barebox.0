Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWdEt-0001DD-1E
 for barebox@lists.infradead.org; Tue, 11 Dec 2018 08:18:01 +0000
Date: Tue, 11 Dec 2018 09:17:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181211081745.mr2lt7e3vwu5svuk@pengutronix.de>
References: <1544442694.814981855@f482.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1544442694.814981855@f482.i.mail.ru>
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
Subject: Re: CCMX51 is not boot anymore
To: Alexander Shiyan <shc_work@mail.ru>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Alexander,

On Mon, Dec 10, 2018 at 02:51:34PM +0300, Alexander Shiyan wrote:
> Hello All.
> 
> CCMX51 is not boot anymore after patch "ARM: return positive offset in get_runtime_offset()".
> No console messages, even with lowlevel debug...
> 
> Does anyone have any idea how to fix this issue?

I just had a look at a43e2bbc46 again and found nothing that could cause
this.

Could you enable CONFIG_PBL_CONSOLE , DEBUG_LL (along with your correct
UART setting), apply the following patch and start the barebox image
from a running barebox?

Sascha

-----------------------------8<------------------------------

From 6b253be043c9add2cefb13a714c1f33c0a4aec52 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Dec 2018 09:15:21 +0100
Subject: [PATCH] debug

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c  | 9 +++++++++
 drivers/of/platform.c | 4 ++--
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 768fa9e1b2..b20ca2ec81 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -14,6 +14,7 @@
  * GNU General Public License for more details.
  *
  */
+#define DEBUG
 #define pr_fmt(fmt) "start.c: " fmt
 
 #include <common.h>
@@ -151,14 +152,22 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 							   endmem,
 							   barebox_size);
 
+	putc_ll('a');
+
 	if (IS_ENABLED(CONFIG_CPU_V7))
 		armv7_hyp_install();
 
+	putc_ll('b');
+
 	if (IS_ENABLED(CONFIG_RELOCATABLE))
 		relocate_to_adr(barebox_base);
 
+	putc_ll('c');
+
 	setup_c();
 
+	putc_ll('d');
+
 	barrier();
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ef8969ca8b..17052f4199 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -61,14 +61,14 @@ static void of_device_make_bus_id(struct device_d *dev)
 		 */
 		reg = of_get_property(node, "reg", NULL);
 		if (reg && (addr = of_translate_address(node, reg)) != OF_BAD_ADDR) {
-			dev_set_name(dev, dev->name ? "%llx.%s:%s" : "%llx.%s.of",
+			dev_set_name(dev, dev->name ? "%llx.%s:%s" : "%llx.%s",
 				     (unsigned long long)addr, node->name,
 				     dev->name);
 			return;
 		}
 
 		/* format arguments only used if dev_name() resolves to NULL */
-		dev_set_name(dev, dev->name ? "%s:%s" : "%s.of",
+		dev_set_name(dev, dev->name ? "%s:%s" : "%s",
 			     kbasename(node->full_name), dev->name);
 		node = node->parent;
 	}
-- 
2.19.1




-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
