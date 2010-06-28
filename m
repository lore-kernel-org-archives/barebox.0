Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OT9Ke-0005Rm-QK
	for barebox@lists.infradead.org; Mon, 28 Jun 2010 08:04:45 +0000
Date: Mon, 28 Jun 2010 10:04:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100628080442.GH12115@pengutronix.de>
References: <AANLkTimjBoeR8qBpdmbcuRgxr6o7xNRKaYQ6OdyDi_Fu@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimjBoeR8qBpdmbcuRgxr6o7xNRKaYQ6OdyDi_Fu@mail.gmail.com>
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
Subject: Re: testing barebox on calao sbc35-a9260 board
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

Hi Marek,

On Fri, Jun 25, 2010 at 11:31:49AM +0200, Belisko Marek wrote:
> Hi,
> 
> I have a calao board sbc35-a9260 with u-boot pre-installed on it.
> I would like to try barebox running on that board (also make some development).
> I build at91sam9260ek_defconfig to try it out. I became to situation
> that I don't know how to load image to board :)
> 
> I try via tftp but u-boot automatically try to boot it and I got some
> error about magic number.
> I think about possibility just download binary to some RAM address and
> then use go command in u-boot
> to test if barebox binary will work.
> 
> There exist some how-to or example how to do this?

It's perfectly fine to start barebox from U-Boot with the 'go' command.
Try 'setenv autostart no' in U-Boot to stop U-Boot from autostarting
images.

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
