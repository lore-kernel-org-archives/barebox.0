Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtVS9-0003Cm-Pc
 for barebox@lists.infradead.org; Tue, 03 Nov 2015 06:52:22 +0000
Date: Tue, 3 Nov 2015 07:51:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151103065158.GC25416@pengutronix.de>
References: <20151103012055.1fd914dbb7d224a0c56fb0d4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151103012055.1fd914dbb7d224a0c56fb0d4@gmail.com>
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
Subject: Re: some patches are missed in the next branch
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Tue, Nov 03, 2015 at 01:20:55AM +0300, Antony Pavlov wrote:
> Hi!
> 
> These patches were added to the next branch last month:
> 
>   ARM: mvebu: Lenovo IX4 300D: Fix pblb generation
>   scripts/kwbimage: Make BINARY files relative to config file
>   scripts/kwbimage: Move configfile opening to the function that reads it
>   usb: ehci-hcd: Use regular mdelay()
>   Revert "usb: ehci-hcd: detect re-entrance"
>   Revert "usb: ehci-hcd: use mdelay_non_interruptible()"
>   usb: core: return -EAGAIN on usb_* functions reentrance
>   input: usb_kbd: skip poll on -EAGAIN error
>   net: mvneta: add Armada XP compatible
>   clk: mvebu: Add corediv clock driver for Armada 370/XP
> 
> Now they have gone away! Why?

I remember that I accidently did some desastrous git command like git
reset --hard and haven't been on the branch I assumed I was on. I
thought I recovered that, but it seems I haven't. Do you by accident
have the patches in one of your branches? I cannot find them in my
repository. I just picked them from the mailing list, but I would prefer
to get the original patches again.

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
