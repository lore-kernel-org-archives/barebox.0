Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6zm5-00014w-Pp
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 10:15:54 +0000
Received: by mail-la0-f54.google.com with SMTP id el20so1213363lab.41
 for <barebox@lists.infradead.org>; Tue, 15 Jul 2014 03:15:31 -0700 (PDT)
Date: Tue, 15 Jul 2014 14:27:53 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140715142753.d2c6424ea6b2d1b810b0de73@gmail.com>
In-Reply-To: <CAOngqVVHG5+S68okE4kqU95FNtkxvJFtcZj0W2KmH=54XxdKTg@mail.gmail.com>
References: <53C25B45.7010101@gmail.com>
 <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
 <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
 <20140715110157.e505c7ad66ef5871b1ecf830@gmail.com>
 <CAOngqVVHG5+S68okE4kqU95FNtkxvJFtcZj0W2KmH=54XxdKTg@mail.gmail.com>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: picotcp tftp support [was Adding IPv4 multicast support]
To: Daniele Lacamera <daniele.lacamera@tass.be>
Cc: barebox <barebox@lists.infradead.org>

On Tue, 15 Jul 2014 11:31:29 +0200
Daniele Lacamera <daniele.lacamera@tass.be> wrote:

> On Tue, Jul 15, 2014 at 9:01 AM, Antony Pavlov <antonynpavlov@gmail.com> =
wrote:
> >
> > barebox uses POSIX file interface for working with tftp.
> >
> > We have to provide these basic functions (see fs/tftp.c):
> >
> > static struct fs_driver_d tftp_driver =3D {
> >         .open      =3D tftp_open,
> >         .read      =3D tftp_read,
> >         .write     =3D tftp_write,
> >         .close     =3D tftp_close,
> >         /* Other functions for unlink, truncate,
> >            mkdir, rmdir, stat, opendir, lseek, create
> >            are not so important. */
> > };
> >
> > So **fs/tftp.c code is driven** by user code that
> > uses file interface for accessing to the files
> > on tftp-server.
> >
> > AFAI understand picotcp tftp support uses event-driven interface
> > so **user code is driven** by picotcp tftp support code.
> >
> > How we can use picotcp tftp support for realization
> > of POSIX file interface?
> =

> Hi Antony,
> =

> I will be able to provide such an interface by using a similar
> approach to what you used for ping (so via net_poll() routine called
> in a loop), assuming that your posix-like interface expects blocking
> calls for read/write operations.

Alas! We can't use this approach for tftp because tftp is a FILESYSTEM in b=
arebox.

Tftp user code know nothing about network stuff. User code just use read an=
d write
for acessing file data, no matter which driver (ramdisk, SATA, MTD, I2C or =
network)
is used for actual data transfer.

> The loop will also be interruptible via CTRL+C.
> =

> I would like to know more about this approach though, are you
> implementing client only functionality (get/put) or do you want to be
> able to listen for client "connections" as well? How is the connection
> initiated (I see there is a tftp_probe function that's not included in
> the API group)?
> =

> Thanks,
> =

> /d


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
