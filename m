Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACZR-0005rc-6P
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 12:59:18 +0000
Date: Fri, 6 Mar 2020 13:59:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200306125912.GY3335@pengutronix.de>
References: <2105504494.1423.1583396775377@mail.vodafone.de>
 <4b929efa-4d1b-5641-743d-96d94766c57d@pengutronix.de>
 <1062353935.2358.1583401816499@mail.vodafone.de>
 <1104087736.13112.1583489476516@mail.vodafone.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1104087736.13112.1583489476516@mail.vodafone.de>
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
Subject: Re: barebox image for an spi flash (like m25p0) on an imx7 soc
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Fri, Mar 06, 2020 at 11:11:16AM +0100, Giorgio Dal Molin wrote:
> Hi,
> 
> I think I've found an error in the imx7 ref. manual: the table at 6.6.6.3 'QuadSPI
> configuration parameters' should be placed at offset 0x00 (the very beginning of the
> spi flash) and not at offset 0x400 as it is written on the ref. manual !!!

This seems to be specific to QuadSPI. Are you sure you boot from the
QuadSPI controller? There is a driver for that in barebox, but the i.MX7
dts files do not register it. Given that you have written the image with
barebox I doubt you are doing QuadSPI.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
