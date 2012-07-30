Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Svl5K-00037X-U7
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 08:12:15 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 30 Jul 2012 10:11:32 +0200
References: <1343387347-24504-1-git-send-email-j.weitzel@phytec.de>
 <201207271854.16758.jbe@pengutronix.de>
 <20120730074040.GG30009@pengutronix.de>
In-Reply-To: <20120730074040.GG30009@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201207301011.32695.jbe@pengutronix.de>
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
Subject: Re: [PATCH] omap: use 512k barebox partition
To: barebox@lists.infradead.org

Hi Sascha,

Sascha Hauer wrote:
> On Fri, Jul 27, 2012 at 06:54:16PM +0200, Juergen Beisert wrote:
> > Sascha Hauer wrote:
> > > On Fri, Jul 27, 2012 at 01:09:07PM +0200, Jan Weitzel wrote:
> > > > Use 512k NAND Partion for barebox. Problem is we don't know the size
> > > > of the barebox inside xload. Set it also to 512k
> > > > Fix enviroment for boards with size in config
> > >
> > > The barebox binary has the size encoded into it at offset 0x2c. We
> > > could use this to transfer the correct size.
> >
> > Will this be a reliable "API" to the outerworld? Also in future versions
> > of Barebox?
>
> Yes, definitely.
>
> That said, it is not a feature you can generally rely upon, because some
> SoCs may require some special image layout conflicting with this.

This would require a "movable marker" inside the binary image.

> If your SoC can support this header, barebox will support it in the future
> aswell.

Okay.

> The header is in arch/arm/include/asm/barebox-arm-head.h. As you can see
> it also contains the ascii string 'barebox' which means that you can
> test for it, and if you find it, the next word will contain the address
> this binary should be copied to (only used to skip copying the binary to
> the correct place, it's not mandatory to start the image there). The
> word after it will contain the image size.
>
> This means, what you can do is:
>
> - Test if the image contains 'barebox'

This might be very dangerous, as this kind of string can be part of the binary 
more than one times, if it is used as part of an output string for example 
("Hi, barebox here").

> - if yes, use the encoded image size
> - if no, fall back to whatever suitable size (It could be a U-Boot image
>   for example)

What we need for this "movable marker" is:
 - a string like "barebox" as its start indication
 - in-between some payload data we want to know
   - size of the "payload"
   - version marker
   - real data
 - something that indicates the end of the whole marker to verify, this entry
   is not a phantom (for example the string "xoberab" ;) )

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
