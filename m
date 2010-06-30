Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OTrKv-0004zR-I1
	for barebox@lists.infradead.org; Wed, 30 Jun 2010 07:03:58 +0000
Date: Wed, 30 Jun 2010 09:03:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100630070355.GQ12115@pengutronix.de>
References: <AANLkTimjBoeR8qBpdmbcuRgxr6o7xNRKaYQ6OdyDi_Fu@mail.gmail.com>
	<20100628080442.GH12115@pengutronix.de>
	<AANLkTila-9RsB4fiMy35ZDW0NHUckd4fj5kELB8R7VX-@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTila-9RsB4fiMy35ZDW0NHUckd4fj5kELB8R7VX-@mail.gmail.com>
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

On Mon, Jun 28, 2010 at 11:08:36AM +0200, Belisko Marek wrote:
> Hi Sascha,
> 
> 
> I disable autostart and download barebox image to 0x8000 with
> tftp 0x8000 barebox.bin and then jut go 0x8000 ended with:
> ## Starting application at 0x00008000 ...
> 
> Same I got when load latest compiled u-boot binary.

U-Boot binaries compiled for starting from flash are usually not
suitable to be run as second stage from SDRAM. Most of the time
it requires at least a include/config.h tweaking.

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
