Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMflH-0003Ug-Ke
	for barebox@lists.infradead.org; Thu, 10 Jun 2010 11:17:28 +0000
Date: Thu, 10 Jun 2010 13:17:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100610111726.GI20799@pengutronix.de>
References: <AANLkTikVBjnjLbC2LZBzRZ0C4FqgxOrbsT-tCgMTqGy8@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTikVBjnjLbC2LZBzRZ0C4FqgxOrbsT-tCgMTqGy8@mail.gmail.com>
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
Subject: Re: barebox with usb cdc-eth driver?
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

Hi Marek,

On Wed, Jun 09, 2010 at 12:55:47PM +0200, Belisko Marek wrote:
> Hi,
> 
> I'm not sure if this would be possible and also make a sense
> but I think about possibility to add cdc-eth driver to barebox.
> 
> If some board doesn't have a eth interface and could be used for development
> it would be nice to load kernel via usb cdc-eth and also mount rootfs
> via nfs for kernel.

Currently we do not have plans to add support for cdc ethernet, patches
welcome ;)

What we have if dfu support (device firmware upgrade) which can at least
be used to flash images to the board. We also have regular USB
networking support, so if you have a host interface you could use this.

Adding cdc ethernet support should be doable since barebox uses the
Linux Kernel gadget framework.

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
