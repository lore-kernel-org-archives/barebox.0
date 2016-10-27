Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bzfII-0000Xx-JR
 for barebox@lists.infradead.org; Thu, 27 Oct 2016 07:40:14 +0000
Date: Thu, 27 Oct 2016 09:39:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161027073948.26b4slsy6na5bi2i@pengutronix.de>
References: <CABDcavZ08eW8scP2zi_5hUp7J8ex-xj17-n7SRx_5YNC3q-8eQ@mail.gmail.com>
 <20161027073157.u6jmv6ux3xs4x46i@pengutronix.de>
 <CABDcava4zzJBLtku87=bmp5PdYy0TMejDgTpsoP8Z2zB5vQV-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABDcava4zzJBLtku87=bmp5PdYy0TMejDgTpsoP8Z2zB5vQV-Q@mail.gmail.com>
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
Subject: Re: Read kernel from static UBI volume
To: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 27, 2016 at 09:34:20AM +0200, Guillermo Rodriguez Garcia wrote:
> 2016-10-27 9:31 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> > On Thu, Oct 27, 2016 at 09:10:02AM +0200, Guillermo Rodriguez Garcia wrote:
> >> Hello all,
> >>
> >> I know Barebox can load files from UBIFS. However, is there support
> >> from booting a kernel directly from a static UBI volume?.
> >
> > bootm /dev/nand0.ubi.whatever should do.
> 
> That easy?
> 
> This is one of the reasons why I like barebox so much better than u-boot..
> 
> I assume this will just read the whole volume (as opposed to checking
> the zImage size and so on). Correct?

The bootm code only reads the actual image size.

> 
> Also will this do the UBI static volume CRC check?

You read a UBI volume using the UBI code which is more or less identical
to the Kernel, so I'd assume the code does whatever is necessary,
including the crc check.
I'm speaking a bit nebulous because I never used static UBI volumes
myself.

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
