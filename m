Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yb1m7-0000Tw-1T
 for barebox@lists.infradead.org; Thu, 26 Mar 2015 07:00:19 +0000
Date: Thu, 26 Mar 2015 07:59:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150326065956.GI9742@pengutronix.de>
References: <1427317062-20969-1-git-send-email-l.stach@pengutronix.de>
 <1427317062-20969-3-git-send-email-l.stach@pengutronix.de>
 <91E9E3EA-7E8E-40FF-B6B5-F5AF9B7DF859@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <91E9E3EA-7E8E-40FF-B6B5-F5AF9B7DF859@jcrosoft.com>
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
Subject: Re: [PATCH 3/4] ARM: highbank: select OFTREE
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 26, 2015 at 11:58:12AM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> > On Mar 26, 2015, at 4:57 AM, Lucas Stach <l.stach@pengutronix.de> wrote:
> > 
> > The board code uses quite a few OF functions and it doesn't seem
> > reasonable to run this board without DT support.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> > arch/arm/mach-highbank/Kconfig | 1 +
> > 1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm/mach-highbank/Kconfig b/arch/arm/mach-highbank/Kconfig
> > index 950810b57517..8af480861c3f 100644
> > --- a/arch/arm/mach-highbank/Kconfig
> > +++ b/arch/arm/mach-highbank/Kconfig
> > @@ -9,6 +9,7 @@ choice
> > 
> > config MACH_HIGHBANK
> > 	bool "Calxeda Highbank"
> > +	select OFTREE
> > 	select HAVE_DEFAULT_ENVIRONMENT_NEW
> 
> you can run wihtout it as the oftree code is only used if you decide to use the dtb provided by the
> firmware

With CONFIG_OFTREE disabled the board fails to link:

arch/arm/boards/built-in.o: In function `highbank_mem_init':
:(.text.highbank_mem_init+0x10): undefined reference to `of_unflatten_dtb'
arch/arm/boards/built-in.o: In function `highbank_devices_init':
:(.text.highbank_devices_init+0x54): undefined reference to `of_get_fixed_tree'

Even if we had a static inline no-op wrapper for of_get_fixed_tree, the
board doesn't check the return value of of_get_fixed_tree and does this:

	fdt = of_get_fixed_tree(NULL);
	add_mem_device("dtb", (unsigned long)fdt, be32_to_cpu(fdt->totalsize),
	       IORESOURCE_MEM_WRITEABLE);

Here the code would crash with a NULL pointer derefence. So unless we
get a couple of other patches I believe Lucas' patch is correct.

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
