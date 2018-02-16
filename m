Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1emaoV-0006XD-GP
 for barebox@lists.infradead.org; Fri, 16 Feb 2018 07:52:13 +0000
Date: Fri, 16 Feb 2018 08:51:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180216075158.srw63pfrlby67oub@pengutronix.de>
References: <ba32e817-48b6-9266-ffd7-d2397d103f7a@arcor.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba32e817-48b6-9266-ffd7-d2397d103f7a@arcor.de>
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
Subject: Re: barebox for a ti am335x based board
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

Hi Giorgio,

On Tue, Feb 13, 2018 at 11:12:54PM +0100, Giorgio Dal Molin wrote:
> Hi all,
> 
> I'm trying to add board code for an am335x based HW project.
> I had a look at similar boards like 'boards/phytec-som-am335x'
> or 'boards/beaglebone'.
> I understand that I need two images: the (little) MLO and the
> (bigger) barebox.
> 
> What it's not really clear is how the MLO loads and starts the
> barebox.

See arch/arm/mach-omap/xload.c. It is compiled when no shell is enabled
(I think at least for clarity there should be a separate Kconfig
symbol). In this file omap_xload() detects where the SoC has booted from
and loads the full barebox from the same source.

> 
> Moreover I saw there's always a call to:
> 
>  am33xx_save_bootinfo((void *)bootinfo);
> 
> in the MLO lowlevel entry function; I suspect the argument
> 'bootinfo' is the register r0 left by the function __barebox_arm_head()
> but I cannot really understand the logic behind it.

When the am335x ROM passes control to the bootloader then it passes in
R0 a pointer to the bootinfo. This is a three word structure which has
informations where the SoC has booted from. In am33xx_save_bootinfo() we
copy the information to a known place where we can pick it up later, see
am33xx_bootsource().

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
