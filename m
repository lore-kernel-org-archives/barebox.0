Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9mRP-00060Z-TI
 for barebox@lists.infradead.org; Thu, 05 Mar 2020 09:05:18 +0000
References: <2105504494.1423.1583396775377@mail.vodafone.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4b929efa-4d1b-5641-743d-96d94766c57d@pengutronix.de>
Date: Thu, 5 Mar 2020 10:05:11 +0100
MIME-Version: 1.0
In-Reply-To: <2105504494.1423.1583396775377@mail.vodafone.de>
Content-Language: en-US
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
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>, barebox@lists.infradead.org

On 3/5/20 9:26 AM, Giorgio Dal Molin wrote:
> Hi,
> 
> does barebox support generating a bootloader image that's able to boot
> from an spi nor flash (m25p0) on an imx7 soc ?
> 
> I'm currently able to read/write/erase the flash and I can also 'barebox_update'
> the image on the flash but the imx7 does not want to boot from it.
> 
> After comparing a working u-boot image with what 'barebox_update' flashes I think
> the problem is the barebox image does not have the proper binary layout.
> 
> Is this use case already implemented or is it still a TODO ?

At what offset is the barebox partition you apply the barebox update to?
If the barebox partition offset is not at the very start, try setting offset
to zero.

Not sure about the i.MX7 specifically, but for other i.MX*, the image already
contains padding at the start, so it can directly be written to the medium, unlike
U-Boot, which needs to be written at an offset.

Cheers
Ahmad

> 
> thank you,
> giorgio
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
