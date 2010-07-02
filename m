Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OUaTq-0002ZH-Ll
	for barebox@lists.infradead.org; Fri, 02 Jul 2010 07:16:11 +0000
Date: Fri, 2 Jul 2010 09:16:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100702071608.GE5929@pengutronix.de>
References: <AANLkTil-pLayTps_sfU1fURx3MrgFTvnaABgP5QSfn9h@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTil-pLayTps_sfU1fURx3MrgFTvnaABgP5QSfn9h@mail.gmail.com>
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
Subject: Re: Novice questions
To: Jose Luis Zabalza <jlz.3008@gmail.com>
Cc: barebox@lists.infradead.org

Hello Jose,

On Fri, Jul 02, 2010 at 05:03:27AM +0200, Jose Luis Zabalza wrote:
> Hello all
> 
> I'm trying write some code into barebox and  I have seen things that
> caught my attention.
> 
> 1.- Modules on barebox. lsmod, insmod commands, EXPORT_SYMBOL() macro.
> What is the purpouse of these ? Modules have no means less memory
> footprint ;-??

We have modules support because we can ;)

I haven't used it in production yet, but there are usecases for it. I'm
currently porting UBI to barebox and it turns out to be quite huge
(~40k). You normally do not need UBI support for normal booting, but you
need it for updating UBI images. So you could make a module from it and
load it on demand.

> 2.- usb command is on drivers/usb/usb.c file. What is the reason why
> it is not on commands dir?

Some commands are in other directory because they are close to a
particular framework. We could move it to commands though.

> 3.- What is the purpouse of usb command. Discover devices but after I
> can't read because I have not drivers associates to them. Actually, is
> there any way to read them?

You probably tried an USB memory stick. These are not yet supported.
Barebox currently only supports USB network adapters.

> 4.- Does anyone use the usb for anything other than firmwarize the
> device with DFU?

Yes, for networking on boards which do not have a NIC, like the Beagle
Board.

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
