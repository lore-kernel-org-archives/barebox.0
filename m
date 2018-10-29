Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH91o-0005uV-SJ
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 15:00:36 +0000
Date: Mon, 29 Oct 2018 16:00:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181029150015.l7rhqbcqo3jz2qxj@pengutronix.de>
References: <1540823231090.67191@mixed-mode.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1540823231090.67191@mixed-mode.de>
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
Subject: Re: issues loading a FIT image with bootm
To: Kai Che <Kai.Che@mixed-mode.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Kai,

On Mon, Oct 29, 2018 at 02:27:06PM +0000, Kai Che wrote:
> Hi all,
> 
> I'm trying to load a FIT image (image.itb) with the bootm command, but I'm getting the following issue:
> 
> barebox@RaspberryPi 3 Model B:/ bootm
> Loading open firmware Device Tree flattened Binary '/mnt/disk0.3/image.itb'
> no image handler found for image type open firmware Device Tree flattened Binary

This sounds like you have CONFIG_FITIMAGE or CONFIG_BOOTM_FITIMAGE disabled.

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
