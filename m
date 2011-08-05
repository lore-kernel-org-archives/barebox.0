Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f170.google.com ([209.85.216.170])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QpFCc-0001DE-8q
	for barebox@lists.infradead.org; Fri, 05 Aug 2011 07:52:23 +0000
Received: by qyl38 with SMTP id 38so83187qyl.15
	for <barebox@lists.infradead.org>; Fri, 05 Aug 2011 00:52:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110805063237.GA31404@pengutronix.de>
References: <1312389389-9255-1-git-send-email-plagnioj@jcrosoft.com>
	<1312486653-19494-1-git-send-email-plagnioj@jcrosoft.com>
	<CAA4bVAHfPQKx3w0ge_iy6daXpr7Yg2WHtGyBZc86o+vzzgOVMw@mail.gmail.com>
	<20110805063237.GA31404@pengutronix.de>
Date: Fri, 5 Aug 2011 11:52:15 +0400
Message-ID: <CAA4bVAF7+Ux=1T_su+=pNHFicgS=xgF92uRsnfwwx=rXQFwURw@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ns16550: switch platform_data to drivers private data
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 5 August 2011 10:32, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Aug 05, 2011 at 12:58:32AM +0400, Antony Pavlov wrote:
>> On 4 August 2011 23:37, Jean-Christophe PLAGNIOL-VILLARD
>> <plagnioj@jcrosoft.com> wrote:
>>
>> > --- a/drivers/serial/serial_ns16550.c
>> > +++ b/drivers/serial/serial_ns16550.c
>> > @@ -48,6 +48,55 @@
>> >
>> > =A0/*********** Private Functions **********************************/
>> >
>> > +/*
>> > + * We wrap our port structure around the generic console_device.
>> > + */
>> > +struct ns16550_uart_port {
>> > + =A0 =A0 =A0 void __iomem *base;
>> > + =A0 =A0 =A0 uint32_t shift;
>> > + =A0 =A0 =A0 uint32_t clock;
>> > + =A0 =A0 =A0 uint32_t (*read)(void __iomem *base, uint8_t off);
>> > + =A0 =A0 =A0 void (*write)(uint32_t val, void __iomem *base, uint8_t =
off);
>> > +
>> > + =A0 =A0 =A0 struct console_device uart;
>>
>> =A0 =A0 =A0 =A0 =A0 nice trick :)))
>>
>> =A0 =A0 =A0 =A0 =A0 But why the name is 'uart', not 'cdev'?
>> > +};
>>
>> As a rule, structure declarations go to header files.
>
> And as another rule, locally used struct (and also defines) go to the C
> file.
The file drivers/serial/serial_ns16550.h has so many defines of such type .=
..

>>
>> > +
>> > +static uint32_t ns16550_readb(void __iomem *base, uint8_t off)
>> > +{
>> > + =A0 =A0 =A0 return readb(base + off);
>>
>> =A0warning: pointer of type =91void *=92 used in arithmetic
>
> Honestly, I can find nothing wrong in void * arithmetic. The
> alternatives like casting to/from unsigned long are much worse.

unsigned long is bad. We have discussed this two weeks ago.
See http://lists.infradead.org/pipermail/barebox/2011-July/003957.html

But void * is not created for arithmetic.
On the other hand we must choose the lesser of two evils.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
