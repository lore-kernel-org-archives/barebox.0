Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rn94X-0004bl-91
 for barebox@lists.infradead.org; Tue, 17 Jan 2012 13:27:34 +0000
Received: by werm13 with SMTP id m13so2090074wer.36
 for <barebox@lists.infradead.org>; Tue, 17 Jan 2012 05:27:30 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20120117130917.GZ5446@pengutronix.de>
References: <1326796746-8652-1-git-send-email-antonynpavlov@gmail.com>
 <20120117130917.GZ5446@pengutronix.de>
Date: Tue, 17 Jan 2012 17:27:30 +0400
Message-ID: <CAA4bVAFT8qQ_Z1WxOJQ=RKSGqFNwgSwDgx8BZqg4_+E72OWxwA@mail.gmail.com>
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
Subject: Re: [RFC] ns16550: support for UART with broken FIFO
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17 January 2012 17:09, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Jan 17, 2012 at 02:39:06PM +0400, Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>> =A0drivers/serial/serial_ns16550.c | =A0 19 +++++++++++++++++--
>> =A0include/ns16550.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A02 ++
>> =A02 files changed, 19 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns1=
6550.c
>> index 1217a5f..01de964 100644
>> --- a/drivers/serial/serial_ns16550.c
>> +++ b/drivers/serial/serial_ns16550.c
>> @@ -139,6 +139,8 @@ static unsigned int ns16550_calc_divisor(struct cons=
ole_device *cdev,
>> =A0static void ns16550_serial_init_port(struct console_device *cdev)
>> =A0{
>> =A0 =A0 =A0 unsigned int baud_divisor;
>> + =A0 =A0 struct NS16550_plat *plat =3D (struct NS16550_plat *)
>> + =A0 =A0 =A0 =A0 cdev->dev->platform_data;
>>
>> =A0 =A0 =A0 /* Setup the serial port with the defaults first */
>> =A0 =A0 =A0 baud_divisor =3D ns16550_calc_divisor(cdev, CONFIG_BAUDRATE);
>> @@ -153,7 +155,13 @@ static void ns16550_serial_init_port(struct console=
_device *cdev)
>> =A0 =A0 =A0 ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
>> =A0 =A0 =A0 ns16550_write(cdev, LCRVAL, lcr);
>> =A0 =A0 =A0 ns16550_write(cdev, MCRVAL, mcr);
>> - =A0 =A0 ns16550_write(cdev, FCRVAL, fcr);
>> +
>> + =A0 =A0 if (plat->flags & NS16650_FLAG_DISABLE_FIFO) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 ns16550_write(cdev, FCRVAL & ~FCR_FIFO_EN, fcr=
);
>> + =A0 =A0 } else {
>> + =A0 =A0 =A0 =A0 =A0 =A0 ns16550_write(cdev, FCRVAL, fcr);
>> + =A0 =A0 }
>
> unnecessary braces here..
>
>> +
>> =A0#ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
>> =A0 =A0 =A0 ns16550_write(cdev, 0x00, =A0mdr1);
>> =A0#endif
>> @@ -211,6 +219,8 @@ static int ns16550_tstc(struct console_device *cdev)
>> =A0static int ns16550_setbaudrate(struct console_device *cdev, int baud_=
rate)
>> =A0{
>> =A0 =A0 =A0 unsigned int baud_divisor =3D ns16550_calc_divisor(cdev, bau=
d_rate);
>> + =A0 =A0 struct NS16550_plat *plat =3D (struct NS16550_plat *)
>> + =A0 =A0 =A0 =A0 cdev->dev->platform_data;
>>
>> =A0 =A0 =A0 ns16550_write(cdev, 0x00, ier);
>> =A0 =A0 =A0 ns16550_write(cdev, LCR_BKSE, lcr);
>> @@ -218,7 +228,12 @@ static int ns16550_setbaudrate(struct console_devic=
e *cdev, int baud_rate)
>> =A0 =A0 =A0 ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
>> =A0 =A0 =A0 ns16550_write(cdev, LCRVAL, lcr);
>> =A0 =A0 =A0 ns16550_write(cdev, MCRVAL, mcr);
>> - =A0 =A0 ns16550_write(cdev, FCRVAL, fcr);
>> + =A0 =A0 if (plat->flags & NS16650_FLAG_DISABLE_FIFO) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 ns16550_write(cdev, FCRVAL & ~FCR_FIFO_EN, fcr=
);
>> + =A0 =A0 } else {
>> + =A0 =A0 =A0 =A0 =A0 =A0 ns16550_write(cdev, FCRVAL, fcr);
>> + =A0 =A0 }
>
> and here. Otherwise this looks ok.

Ok, I shall remove the braces.

Sascha!

We have special OMAP code, e.g.:

#ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
        ns16550_write(cdev, 0x07, mdr1);        /* Disable */
#endif

I think, that we can change it to something like this:

    if (plat->flags & NS16650_FLAG_OMAP_EXTENSIONS)
        ns16550_write(cdev, 0x07, mdr1);        /* Disable */

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
