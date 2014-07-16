Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f52.google.com ([209.85.215.52])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7J17-0007iA-PV
 for barebox@lists.infradead.org; Wed, 16 Jul 2014 06:48:42 +0000
Received: by mail-la0-f52.google.com with SMTP id e16so325296lan.11
 for <barebox@lists.infradead.org>; Tue, 15 Jul 2014 23:48:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140716063002.GB23235@pengutronix.de>
References: <53C25B45.7010101@gmail.com>
 <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
 <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
 <20140715110157.e505c7ad66ef5871b1ecf830@gmail.com>
 <CAOngqVVHG5+S68okE4kqU95FNtkxvJFtcZj0W2KmH=54XxdKTg@mail.gmail.com>
 <20140715142753.d2c6424ea6b2d1b810b0de73@gmail.com>
 <CAOngqVXSRuHmPL_Z73AfLPCdzitS7=kkViy2rJMvX1vvsiOhbw@mail.gmail.com>
 <20140716063002.GB23235@pengutronix.de>
Date: Wed, 16 Jul 2014 08:48:18 +0200
Message-ID: <CAOngqVUUZOeRToJp_6vvxqmB-x2D=VAHo=JntpfegQ03P5axgQ@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>, PicoTCP <picotcp@tass.be>

On Wed, Jul 16, 2014 at 8:30 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Right now the network users register to a udp port and provide a handler
> which is called whenever a packet to this port is received. The
> prototype for this function is:
>
> struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
>                 rx_handler_f *handler, void *ctx);
>
> Then network users can send packets on this connection:
>
> int net_udp_send(struct net_connection *con, int len);
>
> The function returns after the packet has been sent.
>
> The network user has to keep the ball rolling by calling
>
> void net_poll(void);
>
> in a loop. This function will call into the network drivers receive
> function and dispatch the received packets. ARP packets are handled
> internally, the UDP packets are passed to the registered handlers.
>
> The handlers usually will send answers to received packets (so a tftp
> client will send an ack here or request the next packet).
>
> Usually the loop calling net_poll() also has some functionality to
> detect progress and will send the last packet again if it was lost.
>
> Hope that explains the networking model in barebox.
>

Hi Sascha,

Thanks a lot for this clarification. The mechanism you described is
the same as the native execution model of PicoTCP, and looking around
in the code it seems that looping around net_poll() was in fact the
way to go.

to Antony: I will improve TFTP first, by allowing multiple sessions at
the same time. I will keep you posted on the progress.

Thanks,

/d

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
