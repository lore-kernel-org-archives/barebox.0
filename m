Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rvor7-0002KE-4s
 for barebox@lists.infradead.org; Fri, 10 Feb 2012 11:41:34 +0000
Date: Fri, 10 Feb 2012 12:41:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120210114124.GH3852@pengutronix.de>
References: <alpine.DEB.2.02.1202091539470.7618@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1202091539470.7618@oneiric>
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
Subject: Re: a question about adding panda ES support before i get rolling
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Thu, Feb 09, 2012 at 03:45:44PM -0500, Robert P. J. Day wrote:
> 
>   a preliminary question to make sure i'm on the right track in terms
> of adding panda ES support.  i have a couple panda boards -- an
> earlier EA3 revision (OMAP 4430), and a panda ES (OMAP 4460).
> 
>   using a regular panda config and build, i can boot the earlier
> board:
> 
> barebox 2012.02.0-00090-g675502d-dirty (Feb  8 2012 - 17:03:18)
> 
> Board: Texas Instrument's Panda
> PandaBoard Revision: 003
> ehci@ehci0: USB EHCI 1.00
> Malloc space: 0x8d000000 -> 0x8effffff (size 32 MB)
> Stack space : 0x8cff8000 -> 0x8d000000 (size 32 kB)
> Open /boot/bareboxenv No such file or directory
> no valid environment found on /boot/bareboxenv. Using default
> environment
> running /env/bin/init...
> 
> so that's a good sign.  and the Revision number of 3 matches what i
> see here:
> 
> http://omappedia.org/wiki/PandaBoard_Revisions#PandaBoard_Revision_History
> 
> so far, so good.
> 
>   now if i use precisely the same files for my ES, i get absolutely no
> output.  none.  but that's not surprising since in the omap4_generic.c
> file, i read:
> 
> unsigned int omap4_revision(void)
> {
>         unsigned int chip_rev = 0;
>         unsigned int rev = cortex_a9_rev();
> 
>         switch(rev) {
>         case 0x410FC091:
>                 return OMAP4430_ES1_0;
>         case 0x411FC092:
>                 chip_rev = (readl(OMAP44XX_CTRL_BASE + 0x204)  >> 28) & 0xF;
>                 if (chip_rev == 3)
>                         return OMAP4430_ES2_1;
>                 else if (chip_rev >= 4)
>                         return OMAP4430_ES2_2;
>                 else
>                         return OMAP4430_ES2_0;
>         }
>         return OMAP4430_SILICON_ID_INVALID;
> }
> 
> i'm assuming the fact there is *no* checking for an OMAP4460 is the
> reason i get nothing, is that a reasonable assumption?  i'll post more
> detail later about what i'm going to try but given that the above
> function does not take into account the OMAP4460-based ES boards,
> would that cause a complete lack of output at boot time?  thanks.

This seems to be a good start to look for differences. Also it's worth
to grep for users of omap_revision() in U-Boot

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
