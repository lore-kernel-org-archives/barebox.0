Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBvaW-0003w3-0u
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 08:20:04 +0000
Date: Tue, 16 Feb 2021 09:20:01 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20210216082001.GB16279@pengutronix.de>
References: <20210118190923.531-1-m.grzeschik@pengutronix.de>
 <fb80f1ad-acac-0f45-5f87-1b725252906f@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <fb80f1ad-acac-0f45-5f87-1b725252906f@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4010703628670229986=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: hub: fix state change check for not powercycled ports
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============4010703628670229986==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LyciRD1jyfeSSjG0"
Content-Disposition: inline


--LyciRD1jyfeSSjG0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Thu, Feb 11, 2021 at 01:03:54PM +0100, Ahmad Fatoum wrote:
>Hello,
>
>On 18.01.21 20:09, Michael Grzeschik wrote:
>> Since we don't power cycle the ports on start since patch "19bb0b2a usb:
>> hub: Do not power-cycle usb devices on init" it is possible that the
>> device on this port is already active from a previous enumeration. This
>> way barebox will never get any change in USB_PORT_STAT_C_CONNECTION bit
>> change.
>>
>> Although the device will probably still work fine after the following
>> port reset, the current code will always miss reenumerating these still
>> plugged devices. This patch fixes this by ignoring the check for
>> STAT_C_CONNECTION bit and only go for USB_PORT_STAT_CONNECTION which
>> should be enough.
>
>This breaks USB enumeration for me on an i.MX6Q. The USB flash driver behi=
nd
>the hub is detected twice, which barebox doesn't like at all:
>
>barebox@Embest MarS Board i.MX6Dual:/ usb -s
>usb: USB: scanning bus for devices...
>usb1: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
>usb1-0: Bus 001 Device 002: ID 1a40:0101 USB 2.0 Hub [MTT]
>usb1-0-1: Bus 001 Device 003: ID 058f:6387 Mass Storage
>Using index 0 for the new disk
>usb1-0-1: Bus 001 Device 004: ID 058f:6387 Mass Storage
>ERROR: register_device: already registered usb1-0-1
>ERROR: usb1-0-1: Failed to register device: Invalid argument
>usb: 3 USB Device(s) found
>Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
>Bus 001 Device 002: ID 1a40:0101 USB 2.0 Hub [MTT]
>Bus 001 Device 003: ID 058f:6387 Mass Storage
>
>This seems to corrupt some internal barebox state as reading
>/dev/disk0.0 will hang. Reading /dev/disk0 is fine however.
>
>With this patch reverted it however works:
>
>usb: USB: scanning bus for devices...
>usb1: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
>usb1-0: Bus 001 Device 002: ID 1a40:0101 USB 2.0 Hub [MTT]
>usb1-0-1: Bus 001 Device 003: ID 058f:6387 Mass Storage
>Using index 0 for the new disk
>usb: 3 USB Device(s) found
>Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
>Bus 001 Device 002: ID 1a40:0101 USB 2.0 Hub [MTT]
>Bus 001 Device 003: ID 058f:6387 Mass Storage
>
>The USB drive is not self-powered. It doesn't make a difference
>whether it's done directly after cold reset or:
>  usb -s
>  boot bnet
>  usb -s
>
>Cheers,
>Ahmad

I have reproduced that. My latest findings are that, when I debugged
this, usb core on my board I was debugging was behaving uncommon. It was
not setting the USB_PORT_STAT_C_CONNECTION in the first place. But the
further patches I send did solve this.

So this whole issue was due to an uncorrect configured over-current
polarity setup. With my other patches applied I see this bit
USB_PORT_STAT_C_CONNECTION set even without the power-cycle.

My suggestion is to _revert_ this patch, as it is solving a
bogus problem not related to the whole usb-core state machine.

Thanks for testing!
Michael

>>
>> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
>> ---
>>  drivers/usb/core/hub.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
>> index 01653d8c20..d1112248ee 100644
>> --- a/drivers/usb/core/hub.c
>> +++ b/drivers/usb/core/hub.c
>> @@ -336,8 +336,7 @@ static void usb_scan_port(struct usb_device_scan *us=
b_scan)
>>  	dev_dbg(&dev->dev, "port%d: Status 0x%04x Change 0x%04x\n",
>>  			port + 1, portstatus, portchange);
>>
>> -	if (!(portchange & USB_PORT_STAT_C_CONNECTION) ||
>> -	    !(portstatus & USB_PORT_STAT_CONNECTION)) {
>> +	if (!(portstatus & USB_PORT_STAT_CONNECTION)) {
>>  		if (get_time_ns() >=3D hub->connect_timeout) {
>>  			dev_dbg(&dev->dev, "port%d: timeout\n", port + 1);
>>  			/* Remove this device from scanning list */
>>

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--LyciRD1jyfeSSjG0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmArgCsACgkQC+njFXoe
LGTUVg//Z1tEB5tz1ltl2Qdk4tmkWeWp0/QMkG8J4L7ATPv9dwVJ7dahcoQ+qNdB
uUDDgZowAatBCujcox7PlNgLc0dhZFhvZL3vkcPk08InOPoRD1GVwUQ44Azu/Fg/
CqQ934GU0DMq9zuw+PGgaKGUyyaRs7vzo/2eQkM+SCWKsmRGqFWOJPfDu3pt2gB4
RA/ihv6if1epEmJF6rJwPzY2T8ZJ7iS2nX4+8Fe4fkbMaWbl9oa14/uGiG7Z0a4H
/zdlFnVRGy7Qv1Ga1nB6FhrOizKaiY+olbryDfVks+dnsqWzkEXDnU3V2cSTA5Dg
4I+Guf89ADYVh5LhxugiV1MgTnVRdZoylJx7JVSkmLQlBuMdniDnEczEy1F4RJoK
bwKSfBB2pHD14xERoFMuCxAqAu+Tsj1fjzLUW524a15xffJaFEpD8+LPWxvJAbDc
iCM/Hykf9lQvxC0RUaamte2rHkSxJ2SocV6gl5mVQwoneZxpQSpDjqTM5QowahI4
aAq58GQyKnAZD1sJtzbs0mzMlYYXU1jia/2+iFh6lIv/lseLLoAMjV+FPfRlrX8P
cxXR49JlFlfqAQUyseItjEEVQ2gVY/eDv2hDrkd6sc32GSeM1aS3mkOKk5c/7Zva
HaiHV7Mb63tzfjnsYIW87wktPclhetPLf8l1frmR0840t/XMER0=
=iKLF
-----END PGP SIGNATURE-----

--LyciRD1jyfeSSjG0--


--===============4010703628670229986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4010703628670229986==--
