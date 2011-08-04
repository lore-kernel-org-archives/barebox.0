Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f41.google.com ([74.125.82.41])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QopxH-0000DJ-8U
	for barebox@lists.infradead.org; Thu, 04 Aug 2011 04:54:48 +0000
Received: by wwj26 with SMTP id 26so652576wwj.0
	for <barebox@lists.infradead.org>; Wed, 03 Aug 2011 21:54:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110804003702.GF24730@game.jcrosoft.org>
References: <1312396666-23348-1-git-send-email-antonynpavlov@gmail.com>
	<1312396666-23348-2-git-send-email-antonynpavlov@gmail.com>
	<20110804003702.GF24730@game.jcrosoft.org>
Date: Thu, 4 Aug 2011 08:54:43 +0400
Message-ID: <CAA4bVAFg_JROsx88dAFUmfVamLPB-Ui-vguCmtb2bz1pk0y7AQ@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] serial_ns16550: use 'struct device_d *' instead of
	'struct console_device *'
To: barebox <barebox@lists.infradead.org>

On 4 August 2011 04:37, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 22:37 Wed 03 Aug =A0 =A0 , Antony Pavlov wrote:
>> ns16550_read() and ns16550_write() functions are private functions
>> of the driver so there is no need to pass them 'struct console_device *'
>> pointer to get private device data.
>>
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---

> Does not simplify the code
>
> does not see the need

Just the opposite!

Without this patch we do the operation 'dev =3D cdev->dev' at _EVERY
SINGLE CALL_ of ns16550_read/ns16550_write.

In the driver, only in ns16550_tstc() we have single call of
ns16550_read(). In all other places we have multiple
ns16550_read/ns16550_write. So we can move 'dev =3D cdev->dev'
to caller without any damage.

Moreover, in ns16550_putc() we have cycle:
----
while ((ns16550_read(dev, lsr) & LSR_THRE) =3D=3D 0) ;
----
On every cycle loop we do 'dev =3D cdev->dev' !

Disassemble the compiled barebox and you will see that you have many
memory memory accesses at the entrance to the
ns16550_read/ns16550_write functions.

So, removing this 'dev =3D cdev->dev' we remove one memory access.

This is a real optimization!

Also, confirmation of this patch comes from simple logic.

Simple question.
Have we need of 'console_device *cdev' pointer in
ns16550_read/ns16550_write at all?

My answer is 'No'.

Console_device is very high-level abstraction structure, but
ns16550_read/ns16550_write functions work at the low-level.
They work with the private driver data, but cdev can't directly supply
this private data.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
