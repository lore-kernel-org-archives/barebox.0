Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ws8Ih-0006J2-1q
 for barebox@lists.infradead.org; Wed, 04 Jun 2014 10:20:08 +0000
Date: Wed, 4 Jun 2014 12:19:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140604101942.GF15686@pengutronix.de>
References: <538EE612.1050105@atysmedical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <538EE612.1050105@atysmedical.com>
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

On Wed, Jun 04, 2014 at 11:25:38AM +0200, Thibaut Dambry wrote:
> Hello
> 
> I'm sorry if it is a dummy question, but I don't find a answer.
> I would like do that in a barebox hush shell:
> 
> value=`i2c_read -a 0x52 -b 0 -r 0x01 -c 1`
> 
> But the shell don't interpret the ``.
> 
> Is there a method to do that ?

There is no redirection of any kind in barebox and this is not trivial
to implement.

You are trying to read a i2c register into a variable. This is not
possible with the current implementation of the i2c command. Some
commands work around this by adding a commandline parameter which lets
you specify a variable in which the result is written, see for example
the readline command. The i2c_read command could be extended similarly.

OTOH most of the time this comes up it is better to implement a proper
driver for the device. In case it's an EEPROM you're trying to access
here you also better write C Code to interpret its content. This kind
of shell parsing is often very fragile.

> 
> Thank you for this exciting software, I would contribute but I'm a
> little intimidate by the great quality of hackers in this list.

C'mon, we do not bite ;)

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
