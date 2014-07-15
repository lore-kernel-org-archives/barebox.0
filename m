Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6wYl-0001Ve-NL
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 06:49:57 +0000
Received: by mail-la0-f46.google.com with SMTP id b8so1580335lan.5
 for <barebox@lists.infradead.org>; Mon, 14 Jul 2014 23:49:32 -0700 (PDT)
Date: Tue, 15 Jul 2014 11:01:57 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140715110157.e505c7ad66ef5871b1ecf830@gmail.com>
In-Reply-To: <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
References: <53C25B45.7010101@gmail.com>
 <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
 <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
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
Cc: barebox <barebox@lists.infradead.org>, PicoTCP <picotcp@tass.be>

On Sun, 13 Jul 2014 16:28:58 +0200
Daniele Lacamera <daniele.lacamera@tass.be> wrote:

> On Sun, Jul 13, 2014 at 12:55 PM, Antony Pavlov <antonynpavlov@gmail.com>=
 wrote:
> > On Sun, 13 Jul 2014 12:11:17 +0200
> > Colin Leitner <colin.leitner@googlemail.com> wrote:
> >
> >> Hello everyone,
> >>
> >> I'm working on adding multicast support to barebox (for device discove=
ry) and wanted to know if there's interest in having that included in upstr=
eam.
> >
> > There is an initiative on integrating picotcp into barebox.
> >
> > picotcp is a free TCP/IP stack implementation, see
> >   https://github.com/tass-belgium/picotcp
> >
> > AFAIK latest picotcp-enbled barebox anounced here:
> >   http://lists.infradead.org/pipermail/barebox/2014-June/019723.html
> >
> > Can be network device discovery realized using picotcp entities?
> >
> > To Daniele: how things stand with picotcp tftp support?

...

> =

> TFTP is integrated in masterbranch, documented and tested.
> PicoTCP app can act as TFTP server as well as client. Supports put/get
> operations. Tested against tftp(d)-hpa.

barebox uses POSIX file interface for working with tftp.

We have to provide these basic functions (see fs/tftp.c):

static struct fs_driver_d tftp_driver =3D {
        .open      =3D tftp_open,
        .read      =3D tftp_read,
        .write     =3D tftp_write,
        .close     =3D tftp_close,
        /* Other functions for unlink, truncate,
           mkdir, rmdir, stat, opendir, lseek, create
           are not so important. */
};

So **fs/tftp.c code is driven** by user code that
uses file interface for accessing to the files
on tftp-server.

AFAI understand picotcp tftp support uses event-driven interface
so **user code is driven** by picotcp tftp support code.

How we can use picotcp tftp support for realization
of POSIX file interface?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
