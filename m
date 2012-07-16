Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqn2b-00068B-Dc
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 15:16:54 +0000
Date: Mon, 16 Jul 2012 17:16:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120716151648.GP30009@pengutronix.de>
References: <1342432439-27455-1-git-send-email-christian.kapeller@cmotion.eu>
 <1342432439-27455-3-git-send-email-christian.kapeller@cmotion.eu>
 <20120716143147.GO30009@pengutronix.de>
 <50042829.4000606@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50042829.4000606@cmotion.eu>
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
Subject: Re: [PATCH 2/2] tx51: Disable kallsyms. It prevents the board from
 booting.
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

On Mon, Jul 16, 2012 at 04:41:45PM +0200, Christian Kapeller wrote:
> On 07/16/2012 04:31 PM, Sascha Hauer wrote:
> > On Mon, Jul 16, 2012 at 11:53:59AM +0200, Christian Kapeller wrote:
> >>
> >> diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
> >> index 7fff0f0..e1796b9 100644
> >> --- a/arch/arm/configs/tx51stk5_defconfig
> >> +++ b/arch/arm/configs/tx51stk5_defconfig
> >> @@ -32,7 +32,6 @@ CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
> >>  CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
> >>  CONFIG_MEMORY_LAYOUT_DEFAULT=y
> >>  CONFIG_MALLOC_TLSF=y
> >> -CONFIG_KALLSYMS=y
> > 
> > Of course I rather would like to fix the underlying issue. Does this
> > happen on a second stage barebox aswell?
> 
> I hear you. My intend was to have at least a booting board, rather than
> a brick.
> 
> I just flashed tx51 barebox without CONFIG_KALLSYMS, and could
> successfully start a barebox binary with CONFIG_KALLSYMS set using
> bootm.

A binary built with CONFIG_KALLSYMS is >256k and without CONFIG_KALLSYMS
it's smaller than 256k. Looking at the karo i.MX51 flash_header.c it
seems it does it right:

unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;

Nevertheless 256k is a typical maximum bootloader size which is assumed
in some places, I would start looking there.

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
