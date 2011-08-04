Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QosNt-0001CR-LJ
	for barebox@lists.infradead.org; Thu, 04 Aug 2011 07:30:26 +0000
Received: by wwf22 with SMTP id 22so1117011wwf.18
	for <barebox@lists.infradead.org>; Thu, 04 Aug 2011 00:30:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110804004250.GH24730@game.jcrosoft.org>
References: <1312396666-23348-1-git-send-email-antonynpavlov@gmail.com>
	<20110804004250.GH24730@game.jcrosoft.org>
Date: Thu, 4 Aug 2011 11:30:21 +0400
Message-ID: <CAA4bVAH6aq64kakhj6m1d=r_dzwp51u0-QWKjJ6Ect0XAa3c5w@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] serial_ns16550: move switch from ns16550_{read,
	write}() to ns16550_probe()
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 4 August 2011 04:42, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 22:37 Wed 03 Aug =A0 =A0 , Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>> =A0drivers/serial/serial_ns16550.c | =A0 87 ++++++++++++++++++++++++----=
-----------
>> =A01 files changed, 54 insertions(+), 33 deletions(-)
>>

>> + =A0 =A0 plat->reg_write(val, (unsigned long)dev->priv, off);
> no it must stay void __iomem*

plat->reg_write() get the second argument 'unsigned long base'.

Moreover, using 'void *' in arithmetic is a poor practice.

Fortunally for us, in GCC incrementing a void pointer adds one to the
value (sizeof(void) =3D=3D 1).

Add '-pedantic' flag to gcc and compile current 'next' barebox.

You will see something like this:
In function =91ns16550_read=92:
drivers/serial/serial_ns16550.c:72: warning: pointer of type =91void *=92
used in arithmetic

>> + =A0 =A0 if (plat->reg_read =3D=3D NULL) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 int width =3D dev->resource[0].flags & IORESOU=
RCE_MEM_TYPE_MASK;
>> +
>> + =A0 =A0 =A0 =A0 =A0 =A0 switch (width) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 default:
...
>> + =A0 =A0 =A0 =A0 =A0 =A0 }
>> + =A0 =A0 }
>> +
>> + =A0 =A0 if (plat->reg_write =3D=3D NULL) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 int width =3D dev->resource[0].flags & IORESOU=
RCE_MEM_TYPE_MASK;
> why do it twice?

You are right.
width calculation or even separate reg_write & reg_read handling  can
be combined.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
