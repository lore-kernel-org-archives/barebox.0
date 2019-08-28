Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vSH-0004OF-FN
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 10:45:34 +0000
Date: Wed, 28 Aug 2019 12:45:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190828104530.k4knoe2gw2kbudo6@pengutronix.de>
References: <4c123056-bf80-deb6-f0d7-6c1a928946dd@eurek.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c123056-bf80-deb6-f0d7-6c1a928946dd@eurek.it>
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
Subject: Re: MMC hardware partitioning
To: gianluca <gianlucarenzi@eurek.it>
Cc: barebox@lists.infradead.org

Hi Gianluca,

On Tue, Aug 27, 2019 at 03:38:46PM +0200, gianluca wrote:
> Hello everyone!
> I am wondering if there is some way to enable the partition protection for
> eMMC partition (usually to avoid data corruption due to a powerloss) in
> Barebox, as seen is mmc command in the bootloader counterpart U-Boot (as
> reference see u-boot/cmd/mmc.c ).

Have you found the barebox mmc_extcsd command? I don't know if that does
what you want, but it's worth a look.

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
