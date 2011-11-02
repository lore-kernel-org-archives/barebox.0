Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLc8E-0003jv-H3
	for barebox@lists.infradead.org; Wed, 02 Nov 2011 14:49:36 +0000
Date: Wed, 2 Nov 2011 15:49:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111102144932.GM23421@pengutronix.de>
References: <4EAEDE2C.5010904@crane-soft.de>
	<20111102101652.GK23421@pengutronix.de>
	<4EB14DEA.2030901@crane-soft.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4EB14DEA.2030901@crane-soft.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Failed to launch barebox from flash memory on i.MX35
To: "Peter Kuennemann@Crane-Soft" <pkue@crane-soft.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 02, 2011 at 03:04:26PM +0100, Peter Kuennemann@Crane-Soft wrote:
> 
> Am 02.11.2011 11:16, schrieb Sascha Hauer:
> >>
> >> I am completly stuck. What went wrong?
> >> Any help will be very much appreciated.
> > There seems to be a bug in the pcm043_defconfig. It is configured for
> > internal bootmode, which means that the board has to specify a header
> > of size 0x2000 before the actual image. The pcm043 does not specify this
> > header as it uses the external bootmode.
> > Please disable CONFIG_ARCH_IMX_INTERNAL_BOOT in your config, that should
> > do it. If it works I'll commit a corresponding patch.
> >
> > Sascha
> >
> Thanks, that did the trick. I changed the option "support internal boot mode" to
> "support external boot mode" (What ever that means) and the relocation works
> pretty well now.

It's described in the i.MX datasheet. Internal bootmode means that after
reset the internal ROM is executed which parses a header in flash or on
a SD Card. The header describes how to setup memory, where to load the
image and so on. In external bootmode the i.MX simply executes the code
in NOR flash after reset.

> 
> Nevertheless, next problem appears right after relocation. The console displays the
> welcome messages: "barebox 2011.10.0 (Nov  2 2011 - 14:40:11)" and
> "Board: Phytec phyCORE-i.MX35" but then loops in mmu.c at function mmu_init
> in the for () loop at line 237 .. forever!

Strange. I just flashed a pcm043 with v2011.10.0 pcm043_defconfig +
external bootmode and it works for me. As you have printf available can
you put something like this into the loop?

	printf("0x%08x 0x%08x\n", mem->start, mem->size)

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
