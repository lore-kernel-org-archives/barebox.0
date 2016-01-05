Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGMEs-0005T1-64
 for barebox@lists.infradead.org; Tue, 05 Jan 2016 07:41:07 +0000
Date: Tue, 5 Jan 2016 08:40:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160105074043.GL13058@pengutronix.de>
References: <1451627918-31967-1-git-send-email-andrew.smirnov@gmail.com>
 <1451627918-31967-3-git-send-email-andrew.smirnov@gmail.com>
 <20160104092743.GF13058@pengutronix.de>
 <CAHQ1cqF1_OHa7RXhLNYY-Vn-GGC79_ck_D++aQeMvoT0OFA5Fw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqF1_OHa7RXhLNYY-Vn-GGC79_ck_D++aQeMvoT0OFA5Fw@mail.gmail.com>
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
Subject: Re: [PATCH 3/6] ARM: Fix exception table setup in MMU-less mode
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jan 04, 2016 at 09:01:23AM -0800, Andrey Smirnov wrote:
> >> +
> >> +#define __exceptions_size (__exceptions_stop - __exceptions_start)
> >> +
> >> +#if __LINUX_ARM_ARCH__ >= 7
> >> +
> >
> > This does not work. In arch/arm/Makefile we have:
> >
> > arch-$(CONFIG_CPU_32v7)         :=-D__LINUX_ARM_ARCH__=7 $(call cc-option,-march=armv7-a,-march=armv5t -Wa$(comma)-march=armv7-a)
> > arch-$(CONFIG_CPU_32v6)         :=-D__LINUX_ARM_ARCH__=6 $(call cc-option,-march=armv6,-march=armv5t -Wa$(comma)-march=armv6)
> > arch-$(CONFIG_CPU_32v5)         :=-D__LINUX_ARM_ARCH__=5 $(call cc-option,-march=armv5te,-march=armv4t)
> > arch-$(CONFIG_CPU_32v4T)        :=-D__LINUX_ARM_ARCH__=4 -march=armv4t
> >
> > We can build barebox with support for multiple ARM architectures, in this
> > case __LINUX_ARM_ARCH__ is set to the smallest supported ARM architecture.
> >
> > You can encapsulate this code in a #ifdef CONFIG_CPU_32v7 to make sure
> > it's only compiled when ARMv7 support is enabled. Then we still can not
> > be sure that we actually run on ARMv7, we'll need an additional runtime
> > check for:
> >
> >         if (cpu_architecture() >= CPU_ARCH_ARMv7)
> >
> 
> Ah, good point. Will fix.
> 
> >> +static struct resource *place_vector_table(void)
> >> +{
> >> +     int i;
> >> +     struct resource *vectors = NULL;
> >> +     resource_size_t addr[2] = { 0x00000000, 0xFFFF0000 };
> >> +
> >> +     for (i = 0; i < ARRAY_SIZE(addr); i++) {
> >> +             vectors = request_sdram_region("exceptions",
> >> +                                            addr[i],
> >> +                                            __exceptions_size);
> >> +             if (vectors)
> >> +                     break;
> >> +     }
> >> +
> >> +     return vectors;
> >> +}
> >> +
> >> +static int nommu_v4_vectors_init(void)
> >> +{
> >> +     u32 cr;
> >> +     struct resource *vectors;
> >> +
> >> +     vectors = place_vector_table();
> >> +     if (!vectors) {
> >> +             pr_crit("Critical Error: Can't place exception vector table\n");
> >> +             return 0;
> >> +     }
> >
> > Several SoCs do not have SDRAM at 0x0 and 0xFFFF0000, so on these SoCs
> > we would always see this message and have no chance to fix it.
> 
> I am not sure I see why this is a problem. Those SoC physically can't
> support this feature, so if you disable MMU you basically choose for
> boot ROM to handle the exceptions.

"Critical Error: Can't place exception vector table" implies that something
went really wrong. We shouldn't print such a message when everything is
fine. If we want to merge this code we should lower the message to
pr_debug.

> 
> >
> > Given that the < ARMv7 path is untested anyway I suggest to just skip it
> > and require MMU support to get exception support (unless someone has a
> > hardware to test this on).
> 
> The code seemed rather trivial, so I was hoping to save people some
> legwork, but sure I'll drop that portion in the next version.

From a quick grep through the code it seems that Nomadik is the only
architecture that could currently make use of the code.

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
