Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RIME3-0003EC-UQ
	for barebox@lists.infradead.org; Mon, 24 Oct 2011 15:14:08 +0000
Received: by wyg8 with SMTP id 8so7728962wyg.36
	for <barebox@lists.infradead.org>; Mon, 24 Oct 2011 08:14:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJeSw6Be=2jNOw1SSz1xB-7bXL9RyrUuLz+yWcZvxfNap6RkwQ@mail.gmail.com>
References: <1319289593-15251-1-git-send-email-fvanderwerf@gmail.com>
	<20111022202035.GK23421@pengutronix.de>
	<CAJeSw6Be=2jNOw1SSz1xB-7bXL9RyrUuLz+yWcZvxfNap6RkwQ@mail.gmail.com>
Date: Mon, 24 Oct 2011 19:14:04 +0400
Message-ID: <CAA4bVAGRrH4bwozuWfV9Ck4c=vPfRE4oOPLzWFU2u8--8avkLw@mail.gmail.com>
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
Subject: Re: [PATCH] usb: fix unaligned access
To: Fabian van der Werf <fvanderwerf@gmail.com>
Cc: barebox@lists.infradead.org

On 23 October 2011 13:29, Fabian van der Werf <fvanderwerf@gmail.com> wrote:
>>
>> Looks like a valid patch, I wonder that this never was a problem before.
>> ARM should break here aswell I think. What architecture are you using?
>>
>
> I am working with a pandaboard (arm cortex a9). The pandaboard has a
> usb ethernet controller, so I need usb to boot over tftp. I guess that
> most arm configurations don't need usb for booting, and in that case
> you won't run into this problem.

I have DUB-E100 USB Ethernet (ID 2001:3c05) connected to Toshiba AC100
(NVidia Tegra2 --- Cortex A9); tftp works fine without usb unaligned
access patch.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
