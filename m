Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpZSd-0000MI-2E
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 12:29:40 +0000
Date: Wed, 6 Sep 2017 14:29:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170906122917.xtlpwoazqiwebdpg@pengutronix.de>
References: <20170720200103.GA16205@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170720200103.GA16205@ravnborg.org>
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
Subject: Re: [PATCH 0/6] Add DT support for at91_udc and atmel_lcdfb
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jul 20, 2017 at 10:01:03PM +0200, Sam Ravnborg wrote:
> A few more patches on my journey to add DT support
> for the at91sam9263ek board.
> 
> Review / feedback / testing would be appreciated!
> 
> The at91_udc driver has seen only limited testing.
> Any hints how I can test this are appreciated.
> I tried to connect the board to my linux box,
> but nothing happened.
> The USB gadget core adds a few devices for which
> I did not manage to dig up any reasons:
> $ devinfo shows:
> udc0
> 
> And there is also a hidden usbgadget device that shows
> the following info:
> $ devinfo usbgadget
> Parameters:
>   manufacturer: barebox (type: string)
>   product: 0x0000 (type: uint32)
>   productname: Atmel at91sam9263ek (type: string)
>   vendor: 0x0000 (type: uint32)

To actually bind a function driver to the gadget you have to execute the
usbgadget command, for example with -a given. This should create a
gadget and on your host a /dev/ttyACM should show up.

The patch itself looks fine, so I applied it along with the rest of the
series.

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
