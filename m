Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NVM1K-0006Mb-Sz
	for barebox@lists.infradead.org; Thu, 14 Jan 2010 09:29:39 +0000
Date: Thu, 14 Jan 2010 10:29:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100114092932.GC23110@pengutronix.de>
References: <20100112193030.GL14051@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100112193030.GL14051@darwin>
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
Subject: Re: [PATCH 0/5] Add support for EDB93xx boards [rev2]
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

On Tue, Jan 12, 2010 at 08:30:30PM +0100, Matthias Kaehlcke wrote:
> Add support for the following Cirrus Logic EDB93xx boards:
> 
> EDB9301
> EDB9302
> EDB9302A
> EDB9307
> EDB9307A
> EDB93012
> EDB9315
> EDB9315A
> 
> This patchset has been tested on boards based on the EDB9301 and
> EDB9307A designs
> 
> Changes with respect to rev1:
> 
>  * use global linker script with EP93xx specific ifdef instead of a
>    board specific one
>  * eth driver: remove TODO comments about impossible enhancements
>  * eth driver: remove MII_STATUS_* and ETH_STATUS_* macros
> 
> Matthias Kaehlcke (5):
>   ARM: Add support for EP93xx SoCs
>   Add EP93xx ethernet driver
>   Add support for EP9xx GPIOs
>   Add PrimeCell PL010 serial driver
>   Add support for EDB93xx boards

Applied to -next

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
