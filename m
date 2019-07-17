Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hneCW-00025d-2j
 for barebox@lists.infradead.org; Wed, 17 Jul 2019 07:18:10 +0000
Date: Wed, 17 Jul 2019 09:18:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190717071803.opnegmgrtqbbv6si@pengutronix.de>
References: <20190716134948.8609-1-s.hauer@pengutronix.de>
 <CAHQ1cqHQRhR4jBCFn24aWb12UFABiiP3XbA2teF-MLL3fgxBXg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHQRhR4jBCFn24aWb12UFABiiP3XbA2teF-MLL3fgxBXg@mail.gmail.com>
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
Subject: Re: [PATCH 1/5] ARM: Fix global_variable_offset() for aarch64
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jul 16, 2019 at 06:28:17PM -0700, Andrey Smirnov wrote:
> On Tue, Jul 16, 2019 at 6:50 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > Not all toolchains use pc relative addresses for global variables.
> > Apparently the gcc 8.3.0 YOCTO toolchain uses absolute addresses.
> 
> Just out of curiosity, can this behavior be changed with -mcmodel=tiny
> or maybe -mpc-relative-literal-loads ?

This doesn't seem to have any influence with one toolchain or the other.

BTW with this diff:

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 4d957da1dc..65cf90f553 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -60,6 +60,14 @@ void pbl_barebox_break(void)
 	);
 }
 
+static noinline void _puthex_ll(unsigned long val)
+{
+	putc_ll('a');
+	putc_ll(':');
+	puthex_ll(val);
+	putc_ll('\n');
+}
+
 /*
  * relocate binary to the currently running address
  */
@@ -69,6 +77,8 @@ void relocate_to_current_adr(void)
 	unsigned long __maybe_unused *dynsym, *dynend;
 	void *dstart, *dend;
 
+	_puthex_ll((unsigned long)__rel_dyn_start);
+
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
 	offset_var = global_variable_offset();

This is what the two toolchains make from it (stripped some irrelevant instructions):

YOCTO:

0000000000003c38 <relocate_to_current_adr>:
    3c3c:       b0000100        adrp    x0, 24000 <__dtb_imx8mq_evk_start+0x5c40>
    3c48:       f943e013        ldr     x19, [x0, #1984]
    3c4c:       aa1303e0        mov     x0, x19
    3c50:       97ffffd1        bl      3b94 <_puthex_ll>

OSELAS:

0000000000003c20 <relocate_to_current_adr>:
    3c24:       b0000100        adrp    x0, 24000 <__dtb_imx8mq_evk_start+0x5c60>
    3c30:       911ee013        add     x19, x0, #0x7b8
    3c34:       aa1303e0        mov     x0, x19
    3c38:       97ffffd1        bl      3b7c <_puthex_ll>


Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
