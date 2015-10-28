Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZrM7n-0005OQ-FG
 for barebox@lists.infradead.org; Wed, 28 Oct 2015 08:30:29 +0000
Date: Wed, 28 Oct 2015 09:30:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151028083005.GW25308@pengutronix.de>
References: <u74147@gmail.com>
 <1445683088-25675-1-git-send-email-u74147@gmail.com>
 <20151026071836.GQ14356@pengutronix.de>
 <20151026204056.GA23323@L64>
 <20151028065902.GT25308@pengutronix.de>
 <CANvTkNZSvJnaB=BXDTGO8-r-0r7YBHmqxJzrKt25oXcdiAU6uQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANvTkNZSvJnaB=BXDTGO8-r-0r7YBHmqxJzrKt25oXcdiAU6uQ@mail.gmail.com>
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
Subject: Re: [PATCH] lib:font:fbconsole: add custom font support for review
To: Kevin Du Huanpeng <u74147@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Oct 28, 2015 at 04:20:26PM +0800, Kevin Du Huanpeng wrote:
> 2015-10-28 14:59 GMT+08:00 Sascha Hauer <s.hauer@pengutronix.de>:
> > Hi,
> >
> > On Tue, Oct 27, 2015 at 04:40:56AM +0800, Kevin Du Huanpeng wrote:
> >> On Mon, Oct 26, 2015 at 08:18:36AM +0100, Sascha Hauer wrote:
> >> >
> >> > This patch has several hunks without changes which makes it hard to look
> >> > at.
> >> >
> >> > Somehow this looks like beginning unicode support. Wouldn't it be better
> >> > to pick the relevant parts we need from unicode and support them?
> >>
> >>
> >> How about store the font data externally, for reasons
> >>   1. the font data maybe hurge, it take time to burn it to flash make barebox fat.
> >>   2. the part of font data namally don't change durning the devolopment.
> >>   3. 'custom' means usless for other application.
> >>   4. the fontdata maybe stored in a external spi flash and share with OS.
> >> just pass the base address of index and fontdata or tell barebox how to get the
> >> font data.
> >
> > Do you know the pf2 font format? That may be the right candidate for a
> > font format. See: http://grub.gibibit.com/New_font_format
> > If we could read this font format we could throw arbitrary unicode fonts
> > into barebox.
> >
> 
> Nice font! it designed for bootloader!
> but it needs more learning, if being a bootloader user, for supportting several
> dozens of chars. the barebox user have to get font data from some .ttf or
> other format font, or hardware font(hardware font chip). and convert it
> to pf2 format. need more work.

My system already has a full unicode font under /boot/grub/unicode.pf2,
it probably came with a grub standard installation.

> but maybe some people use barebox as a bare-metal application, not a bootloader,
> it will be useful. I guess.

I don't think that people are doing that.

> How about simply support the 'bitmap' font, simple and friendly to barebox user.
> next step, support pf2.

I don't know what you are planning. Your current approach looks fine to
me if you are fine with keeping the unicode characters you need out of
tree. It doesn't scale very well if everybody starts to merge his
favourite characters to the tree.

If you want to be able to load external font files then these
files should describe themselves. We shouldn't use a file format which
needs additional informations like the widths of a font passed on the
commandline when loading a file.

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
