Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y9VYO-00089d-Va
 for barebox@lists.infradead.org; Fri, 09 Jan 2015 09:08:25 +0000
References: <20150108194716.6CF6.AA925319@jp.panasonic.com>
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-reply-to: <20150108194716.6CF6.AA925319@jp.panasonic.com>
Date: Fri, 09 Jan 2015 10:07:54 +0100
Message-ID: <73d26o7251.fsf@dude.hi.pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [Question] How was zedboard lowlevel written?
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org


Hi!

Masahiro Yamada writes:
> Hello Steffen Trumtrar,
>
> I am seeing arch/arm/boards/avnet-zedboard/board.c
> written by you.
>

Sadly it's been a while since I touched this :(

> Is this file equivalent to ps7_init.c spit by Xilinx tool?
> Or did you write it by hand from scratch ? (I doubt it.)
>
>
> I have ZC706, another Zynq board.
> If I could port barebox to this board, that would be great!
> But I am just worndering whether I could get your advice about
> how to create the lowlevel file.
>

The lowlevel.c/flash_header.c are adapted from the ps7_init code IIRC.
Xilinx uses a prebootloader and a bootloader for the Zynq, barebox does
not. So you would have to put all values into the respective two files.
And you need to run scripts/zynq_mkimage for the checksum (but I think
the Makefile already does that).

I wish I could be of more help here, but I can't really remember the
actual steps necessary and I don't have a ps7_init handy at the moment.

Regards,
Steffen

-- 
Pengutronix e.K.                           | Steffen Trumtrar            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
