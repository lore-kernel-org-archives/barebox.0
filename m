Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.infomaniak.ch ([2001:1600:2:5:92b1:1cff:fe01:147])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WsDn0-00086Z-4N
 for barebox@lists.infradead.org; Wed, 04 Jun 2014 16:11:53 +0000
Message-ID: <538F4514.7050501@atysmedical.com>
Date: Wed, 04 Jun 2014 18:11:00 +0200
From: Thibaut Dambry <tdambry@atysmedical.com>
MIME-Version: 1.0
References: <538EE612.1050105@atysmedical.com>
 <20140604101942.GF15686@pengutronix.de>
In-Reply-To: <20140604101942.GF15686@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: redirect stdout
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Thank you for your answer

I would use the eeprom to change linux bootargs parameters.
So the best way is to create a command isUsbDevice (where I read eeprom =

value and return 0 if OK )
and add this in a boot shell script:

#!/bin/sh
isUsbDevice
if [ $? -ne 0 ]; then
     bootargs=3D"$bootargs pcm043_otg_mode=3Dhost"
else
     bootargs=3D"$bootargs pcm043_otg_mode=3Ddevice"
fi



Le 04/06/2014 12:19, Sascha Hauer a =E9crit :
> On Wed, Jun 04, 2014 at 11:25:38AM +0200, Thibaut Dambry wrote:
>> Hello
>>
>> I'm sorry if it is a dummy question, but I don't find a answer.
>> I would like do that in a barebox hush shell:
>>
>> value=3D`i2c_read -a 0x52 -b 0 -r 0x01 -c 1`
>>
>> But the shell don't interpret the ``.
>>
>> Is there a method to do that ?
> There is no redirection of any kind in barebox and this is not trivial
> to implement.
>
> You are trying to read a i2c register into a variable. This is not
> possible with the current implementation of the i2c command. Some
> commands work around this by adding a commandline parameter which lets
> you specify a variable in which the result is written, see for example
> the readline command. The i2c_read command could be extended similarly.
>
> OTOH most of the time this comes up it is better to implement a proper
> driver for the device. In case it's an EEPROM you're trying to access
> here you also better write C Code to interpret its content. This kind
> of shell parsing is often very fragile.
>
>> Thank you for this exciting software, I would contribute but I'm a
>> little intimidate by the great quality of hackers in this list.
> C'mon, we do not bite ;)
>
> Sascha
>


-- =

---------------------------------------------------------
---------------------------------------------------------
Thibaut DAMBRY

ATYSMEDICAL			mailto:rd@atysmedical.com
17 Parc d'Arbora
69510 Soucieu en Jarrest
FRANCE

Phone:(33)4-78-05-69-69
Fax:  (33)4-78-05-69-60

---------------------------------------------------------


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
