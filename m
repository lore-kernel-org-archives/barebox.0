Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X727H-0003n9-N5
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 12:45:58 +0000
Received: by mail-la0-f47.google.com with SMTP id mc6so816722lab.34
 for <barebox@lists.infradead.org>; Tue, 15 Jul 2014 05:45:31 -0700 (PDT)
Date: Tue, 15 Jul 2014 16:57:56 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140715165756.53acb0e50c0390dfefb63b6b@gmail.com>
In-Reply-To: <CAOngqVXSRuHmPL_Z73AfLPCdzitS7=kkViy2rJMvX1vvsiOhbw@mail.gmail.com>
References: <53C25B45.7010101@gmail.com>
 <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
 <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
 <20140715110157.e505c7ad66ef5871b1ecf830@gmail.com>
 <CAOngqVVHG5+S68okE4kqU95FNtkxvJFtcZj0W2KmH=54XxdKTg@mail.gmail.com>
 <20140715142753.d2c6424ea6b2d1b810b0de73@gmail.com>
 <CAOngqVXSRuHmPL_Z73AfLPCdzitS7=kkViy2rJMvX1vvsiOhbw@mail.gmail.com>
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

On Tue, 15 Jul 2014 12:57:21 +0200
Daniele Lacamera <daniele.lacamera@tass.be> wrote:

> On Tue, Jul 15, 2014 at 12:27 PM, Antony Pavlov <antonynpavlov@gmail.com>=
 wrote:
> =

> >> I will be able to provide such an interface by using a similar
> >> approach to what you used for ping (so via net_poll() routine called
> >> in a loop), assuming that your posix-like interface expects blocking
> >> calls for read/write operations.
> >
> > Alas! We can't use this approach for tftp because tftp is a FILESYSTEM =
in barebox.
> =

> Then again, I'd like to know if your FS implementation actually needs
> blocking call, and in case, where is the code supposed to block. Does
> barebox have some kind of support for multiple threads, or a default
> event loop where background operations can be added? Or are the FS
> calls non blocking?

AFAIK barebox does not support threads.
Also all filesystem calls are blocking.

> Sorry for asking dumb questions, I am not a barebox developer and I am
> just trying to figure out what is your execution model. There
> certainly is a way to integrate my TFTP implementation as soon as I
> realize what is your model: as for instance we have blocking POSIX
> socket calls implemented with and without an OS infrastructure, and we
> are able to realize blocking calls on any systems, being baremetal or
> multithtreaded.
> =

> Thanks
> =

> /D


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
