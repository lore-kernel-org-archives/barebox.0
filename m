Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3nhb-00074C-F6
 for barebox@lists.infradead.org; Thu, 16 Jan 2014 14:13:48 +0000
Date: Thu, 16 Jan 2014 15:13:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140116141322.GX16215@pengutronix.de>
References: <20131212080359.GE24559@pengutronix.de>
 <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
 <20131212195806.GL24559@pengutronix.de>
 <CAJyuEecPnTHU2rTgJzkvkv3p56f32jqaS1aQykn91TNGvcUawg@mail.gmail.com>
 <CAJyuEeejqixPzCez0EZU9hhQkO3f8yvpARLGLwPgQUfGBASZug@mail.gmail.com>
 <CAJyuEee+jyV6DTs3ZGYTercny4FNnxjj_PwWxNmjAEhe2eqeBg@mail.gmail.com>
 <20131219080917.GW24559@pengutronix.de>
 <CAJyuEedJxNN9mPJzAvE6d6kNHCaEqcF-BED0L+r2VCv7e6=T6A@mail.gmail.com>
 <20140110081302.GV6750@pengutronix.de>
 <CAJyuEefMzkW4mCfe+iR7FfVv6jeQMS3XuoPFtO3E8zNomecKoA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEefMzkW4mCfe+iR7FfVv6jeQMS3XuoPFtO3E8zNomecKoA@mail.gmail.com>
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
Subject: Re: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Michael Burkey <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 15, 2014 at 01:35:15PM -0500, Michael Burkey wrote:
> Sascha, thanks for the advice on the stack unwinding and other
> debugging aids. It was a huge help.
> 
> I have made progress and isolated and gotten past my earlier null
> pointer problem -- it turned out to be an issue that you had already
> fixed on the tip (the recent changes to armlinux_get_bootparams fixed
> the null pointer issue).
> 
> That said, I'm still having issues booting with an older kernel. Which
> brings me to my next question....
> 
> In the case where I am booting an old, non-devicetree, kernel with a
> newer, devicetree, version of barebox, and then using "oftree -f" to
> flush the devicetree before starting the kernel, what is the proper
> way to have things like the boot parameters, the boot architecture,
> etc. specified for passing to the older kernel? Just go back and add
> them into the board files like they used to be in older versions of
> barebox?

yes.

> Do you know if having stuff specified in both the old way and
> in the oftree will cause any potential problems?

Not sure if I understand you. The kernel either takes old style ATAGs or
a devicetree (in the same pointer), barebox sets up either one or the
other, but never both. The machine number becomes meaningless with
devicetree support, it doesn't matter if it is specified or not.

> 
> Basically, my goal is to have a version of barebox than can launch
> either our current (old) kernel or a newer mainline version
> interchangeably without having to upgrade barebox (basically, we will
> probably initially be shipping an older kernel and then upgrading to a
> newer one later -- and, if at all possible, I'd really rather not have
> to incur the risk of having our users need to update barebox in the
> field as well).

Basically barebox has to know whether a kernel is to be started with
devicetree or not, which means you have to have two boot entries, one
with devicetree and one without. There are two ways around it:

- Use bootloader spec based booting. This way you have text files on
  your boot medium describing what to boot. This text file would
  include information whether or not a kernel should be booted with
  devicetree
- Use appended devicetrees: cat zImage dtb > myImage. Such a kernel
  can be started the traditional way and still uses devicetree.

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
