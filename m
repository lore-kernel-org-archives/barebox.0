Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R9H0g-0002Cj-6F
	for barebox@lists.infradead.org; Thu, 29 Sep 2011 13:50:50 +0000
Received: by wyi11 with SMTP id 11so255506wyi.36
	for <barebox@lists.infradead.org>; Thu, 29 Sep 2011 06:50:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110928071559.GW31404@pengutronix.de>
References: <1316761066-29811-1-git-send-email-s.hauer@pengutronix.de>
	<20110928071559.GW31404@pengutronix.de>
Date: Thu, 29 Sep 2011 17:50:40 +0400
Message-ID: <CAA4bVAE6DSfAmZnrHLAaMOP2KZkjfqfRZZo8XrQkAG5FsMt_zQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: USB mass storage support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 28 September 2011 11:15, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Fri, Sep 23, 2011 at 08:57:43AM +0200, Sascha Hauer wrote:
>> Hi,
>>
>> The following adds USB mass storage support to barebox. The patches
>> are from Rosen Kolev, I am just sending these patches for him because
>> git send-email does not work for him (yet).
>>
>> Sascha
>>
>> Rosen Kolev (3):
>> =A0 =A0 =A0 Modified timeout in the ehci-hcd USB host driver.
>> =A0 =A0 =A0 Extended USB device matching.
>> =A0 =A0 =A0 USB mass storage device driver initial implementation
>
> I merged this as-is. There are still some minor things like CamelCase
> function names but overall This looked to good to not merge it ;)

This patches have no "Signed-off-by :" label.

I have tried them with 2 USB-flash drives on my Tegra board:

toshiba ac100> / usb
USB: scanning bus for devices...
Bus 001 Device 003: ID 0bdb:190a F3307
Bus 001 Device 004: ID 0bda:58f2 USB Camera
Bus 001 Device 006: ID 8564:1000 Mass Storage Device
disk@disk0: Failed to register partition disk0.1 (-22)
Bus 001 Device 007: ID 067b:2303 USB-Serial Controller
Bus 001 Device 008: ID 8564:1000 Mass Storage Device
register_device: already registered disk0
Bus 001 Device 009: ID 2001:3c05 DUB-E100
eth@eth0: got MAC address from EEPROM: 1C:7E:E5:0F:E1:14
Bus 001 Device 005: ID 05e3:0660 USB2.0 Hub
Bus 001 Device 002: ID 0424:2513
Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
9 USB Device(s) found

Can we register more that one disk?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
