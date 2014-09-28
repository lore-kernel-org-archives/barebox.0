Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYF95-0002lO-7c
 for barebox@lists.infradead.org; Sun, 28 Sep 2014 14:08:16 +0000
Received: by mail-la0-f52.google.com with SMTP id hz20so156521lab.39
 for <barebox@lists.infradead.org>; Sun, 28 Sep 2014 07:07:49 -0700 (PDT)
Date: Sun, 28 Sep 2014 18:22:00 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140928182200.11222332eea95ccc6c021bf4@gmail.com>
In-Reply-To: <CAOngqVV5qCVVOMrrfh705inrYAGz=b3+M7J+NSJ6_UY+4njpJA@mail.gmail.com>
References: <53C25B45.7010101@gmail.com>
 <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
 <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
 <20140715110157.e505c7ad66ef5871b1ecf830@gmail.com>
 <CAOngqVVHG5+S68okE4kqU95FNtkxvJFtcZj0W2KmH=54XxdKTg@mail.gmail.com>
 <20140715142753.d2c6424ea6b2d1b810b0de73@gmail.com>
 <CAOngqVXSRuHmPL_Z73AfLPCdzitS7=kkViy2rJMvX1vvsiOhbw@mail.gmail.com>
 <20140716063002.GB23235@pengutronix.de>
 <CAOngqVUUZOeRToJp_6vvxqmB-x2D=VAHo=JntpfegQ03P5axgQ@mail.gmail.com>
 <20140904211419.ea6eae69a1e96d2cb9d3e20e@gmail.com>
 <CAOngqVV5qCVVOMrrfh705inrYAGz=b3+M7J+NSJ6_UY+4njpJA@mail.gmail.com>
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
To: PicoTCP <picotcp@tass.be>
Cc: barebox <barebox@lists.infradead.org>, Michele Di Pede <michele.di.pede@tass.be>

On Fri, 26 Sep 2014 11:27:16 +0200
PicoTCP <picotcp@tass.be> wrote:

> Michele just pushed a TFTP which provides support for multiple
> sessions. API is slightly changed, to keep track of the sessions
> themselves. Please refer to the example in test/examples/tftp.c, or to
> the updated user manual.
> =

> Let us know if we can provide any support to help you progress with
> the integration.

I have just pushed my latest picotcp-enabled barebox
branch to github: https://github.com/frantony/barebox/tree/picotcp.20140928
(this branch contain latest barebox and latest picotcp).

There are two questions.

1. Do we really need this '#ifdef PICO_SUPPORT_UDP' BEFORE (!)
guard macro in pico_dhcp_client.h?

https://github.com/frantony/barebox/commit/01de589b30ebca32d44efbfbdee8026a=
0ae09fe5

2. New pico_tftp_start_{r,t}x programming interface can be used for
realization legacy standalone 'tftp' command.
But I have no idea how to use this interface for filesystem-over-tftp
(it's the modern barebox' tftp realization)!

Barebox filesystem interface needs something like this programming
interface:

  struct pico_tftp_session *s;

  s =3D pico_tftp_new_session_rx(addr, port, family, filename);
  ...
  filesize =3D pico_tftp_get_file_size(s);
  ...
  pico_tftp_receive(s, buf, len);
  ...
  pico_tftp_receive(s, buf, len);
  ... ... ...
  pico_tftp_receive(s, buf, len);
  ...
  pico_tftp_close(s);


I mean that receiving process has to be controlled by barebox,
not by picotcp. Because a new portion of data is received
by filesystem user initiative, not by network stack initiative.

Sascha! Please comment this problem.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
