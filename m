Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WsQWh-0007Ol-4k
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 05:47:48 +0000
Date: Thu, 5 Jun 2014 07:47:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140605054721.GI15686@pengutronix.de>
References: <538EE612.1050105@atysmedical.com>
 <20140604101942.GF15686@pengutronix.de>
 <538F4514.7050501@atysmedical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <538F4514.7050501@atysmedical.com>
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
Subject: Re: redirect stdout
To: Thibaut Dambry <tdambry@atysmedical.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 04, 2014 at 06:11:00PM +0200, Thibaut Dambry wrote:
> Thank you for your answer
> 
> I would use the eeprom to change linux bootargs parameters.
> So the best way is to create a command isUsbDevice (where I read
> eeprom value and return 0 if OK )
> and add this in a boot shell script:
> 
> #!/bin/sh
> isUsbDevice
> if [ $? -ne 0 ]; then
>     bootargs="$bootargs pcm043_otg_mode=host"
> else
>     bootargs="$bootargs pcm043_otg_mode=device"
> fi

I would use a variable instead of a command. Then you don't have to
create a new command for each piece of information from the EEPROM.
See globalvar_add_simple() and friends.

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
