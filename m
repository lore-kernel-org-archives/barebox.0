Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QosW8-0001EL-4J
	for barebox@lists.infradead.org; Thu, 04 Aug 2011 07:38:56 +0000
Received: by wwf22 with SMTP id 22so1121268wwf.18
	for <barebox@lists.infradead.org>; Thu, 04 Aug 2011 00:38:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110804071940.GW31404@pengutronix.de>
References: <1312396666-23348-1-git-send-email-antonynpavlov@gmail.com>
	<20110804071940.GW31404@pengutronix.de>
Date: Thu, 4 Aug 2011 11:38:53 +0400
Message-ID: <CAA4bVAE2z76oS5TcU+eUozouKCqR1kAAeQgQw0ZLZVLseJVo2g@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] serial_ns16550: move switch from ns16550_{read,
	write}() to ns16550_probe()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 4 August 2011 11:19, Sascha Hauer <s.hauer@pengutronix.de> wrote:

>>
>> +#define NS16550_READ_WRITE_UART_FUNC(pfx, cmdr, cmdw, mask) \
>> +static unsigned int ns16550_generic_##pfx##_read(unsigned long base, \
>> + =A0 =A0 =A0 =A0 =A0 =A0 unsigned char reg_idx) =A0 =A0 =A0 =A0 =A0\
>> +{ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0\
>> + =A0 =A0 return cmdr((char *)base + reg_idx); =A0 =A0\
>> +} =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0\
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 \
>> +static void ns16550_generic_##pfx##_write(unsigned int val, unsigned lo=
ng base, \
>> + =A0 =A0 =A0 =A0 =A0 =A0 unsigned char reg_idx) =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0\
>> +{ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
>> + =A0 =A0 cmdw((mask val), (char *)base + reg_idx); =A0 =A0 =A0 \
>> +}
>> +
>> +NS16550_READ_WRITE_UART_FUNC(8bit, readb, writeb, 0xff &)
>> +NS16550_READ_WRITE_UART_FUNC(16bit, readw, writew, 0xffff &)
>> +NS16550_READ_WRITE_UART_FUNC(32bit, readl, writel, )
>
> Please don't do such preprocessor tricks if not necessary. we can afford
> the 8 additional lines for making this readable.

approx. > 16 additional lines

>> + =A0 =A0 if (plat->reg_read =3D=3D NULL) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 int width =3D dev->resource[0].flags & IORESOU=
RCE_MEM_TYPE_MASK;
>> +
>> + =A0 =A0 =A0 =A0 =A0 =A0 switch (width) {
...
>> + =A0 =A0 }
>> +
>> + =A0 =A0 if (plat->reg_write =3D=3D NULL) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 int width =3D dev->resource[0].flags & IORESOU=
RCE_MEM_TYPE_MASK;
>> +
>> + =A0 =A0 =A0 =A0 =A0 =A0 switch (width) {
...
>> + =A0 =A0 =A0 =A0 =A0 =A0 }
>> + =A0 =A0 }
>
> Passing one of the register access function without the other shouldn't
> be a valid usecase. Jean is right, there should be only one if().

Agree.

> Generally platform_data shouldn't be used after device probe and for
> sure it shouldn't be modified. This may be the point where this driver
> needs a private data struct.

I like this point of view.
We must add private data struct and copy plat->width, plat->reg_read etc th=
ere.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
