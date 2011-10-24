Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RIPPH-0005Bh-BF
	for barebox@lists.infradead.org; Mon, 24 Oct 2011 18:37:57 +0000
Received: by bkbc12 with SMTP id c12so10697857bkb.36
	for <barebox@lists.infradead.org>; Mon, 24 Oct 2011 11:37:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20111024170753.GN23421@pengutronix.de>
References: <1319289593-15251-1-git-send-email-fvanderwerf@gmail.com>
	<20111022202035.GK23421@pengutronix.de>
	<CAJeSw6Be=2jNOw1SSz1xB-7bXL9RyrUuLz+yWcZvxfNap6RkwQ@mail.gmail.com>
	<CAA4bVAGRrH4bwozuWfV9Ck4c=vPfRE4oOPLzWFU2u8--8avkLw@mail.gmail.com>
	<20111024170753.GN23421@pengutronix.de>
Date: Mon, 24 Oct 2011 20:37:52 +0200
Message-ID: <CAJeSw6CfdF5UuN0fk=trKi-bJD009yDcasjkp_f2twR9giRaCw@mail.gmail.com>
From: Fabian van der Werf <fvanderwerf@gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 24, 2011 at 7:07 PM, Sascha Hauer <s.hauer@pengutronix.de> wrot=
e:
> On Mon, Oct 24, 2011 at 07:14:04PM +0400, Antony Pavlov wrote:
>> On 23 October 2011 13:29, Fabian van der Werf <fvanderwerf@gmail.com> wr=
ote:
>> >>
>> >> Looks like a valid patch, I wonder that this never was a problem befo=
re.
>> >> ARM should break here aswell I think. What architecture are you using?
>> >>
>> >
>> > I am working with a pandaboard (arm cortex a9). The pandaboard has a
>> > usb ethernet controller, so I need usb to boot over tftp. I guess that
>> > most arm configurations don't need usb for booting, and in that case
>> > you won't run into this problem.
>>
>> I have DUB-E100 USB Ethernet (ID 2001:3c05) connected to Toshiba AC100
>> (NVidia Tegra2 --- Cortex A9); tftp works fine without usb unaligned
>> access patch.
>
> Works for me aswell, though the access definitely is unaligned.
>

Okay, I think it may be a compiler problem. The latest code sourcery
compiler builds a barebox that breaks on usb. 2009q1-203 builds fine,
however.

In the usb code the compiler should be able to figure out that the
access is unaligned from the packed structure. So I guess it should
split up the access in multiple loads/stores. I will look into the
binaries to confirm this. The latest compiler may be broken or maybe
the default behaviour has changed because armv7 actually supports
unaligned access.

Fabian


> Sascha
>
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
