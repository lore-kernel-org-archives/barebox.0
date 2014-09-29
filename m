Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f41.google.com ([209.85.215.41])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYXWP-0005Mb-Ff
 for barebox@lists.infradead.org; Mon, 29 Sep 2014 09:45:34 +0000
Received: by mail-la0-f41.google.com with SMTP id pn19so2276295lab.0
 for <barebox@lists.infradead.org>; Mon, 29 Sep 2014 02:45:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140928182200.11222332eea95ccc6c021bf4@gmail.com>
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
 <20140928182200.11222332eea95ccc6c021bf4@gmail.com>
Date: Mon, 29 Sep 2014 11:45:08 +0200
Message-ID: <CAOngqVXJgqckdj0QsN=s2bhAjUL4hyB3GHw2XjeENkXxehY_FQ@mail.gmail.com>
From: Daniele Lacamera <daniele.lacamera@tass.be>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: picotcp tftp support [was Adding IPv4 multicast support]
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>, Michele Di Pede <michele.di.pede@tass.be>

On Sun, Sep 28, 2014 at 4:22 PM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
>
> 1. Do we really need this '#ifdef PICO_SUPPORT_UDP' BEFORE (!)
> guard macro in pico_dhcp_client.h?
>

I moved these in latest PicoTCP commit. Thanks.


> 2. New pico_tftp_start_{r,t}x programming interface can be used for
> realization legacy standalone 'tftp' command.
> But I have no idea how to use this interface for filesystem-over-tftp
> (it's the modern barebox' tftp realization)!
>
> Barebox filesystem interface needs something like this programming
> interface:
>
>   struct pico_tftp_session *s;
>
>   s = pico_tftp_new_session_rx(addr, port, family, filename);
>   ...
>   filesize = pico_tftp_get_file_size(s);
>   ...
>   pico_tftp_receive(s, buf, len);
>   ...
>   pico_tftp_receive(s, buf, len);
>   ... ... ...
>   pico_tftp_receive(s, buf, len);
>   ...
>   pico_tftp_close(s);
>
>
> I mean that receiving process has to be controlled by barebox,
> not by picotcp. Because a new portion of data is received
> by filesystem user initiative, not by network stack initiative.

Thanks for the comments. A few from my side:

- pico_tftp_receive is non-blocking, and will return immediately if no
data is available. You always have to be bound to some RX event to be
sure that your next receive() call is successful, so in some way you
still want it network-bound.

- We can implement the get_file_size, but not all servers will support
it. Michele has a strategy for developing more advanced TFTP features,
he will post on it later


regards,

/d

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
