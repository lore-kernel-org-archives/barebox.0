Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X7IjT-0001Np-OQ
 for barebox@lists.infradead.org; Wed, 16 Jul 2014 06:30:29 +0000
Date: Wed, 16 Jul 2014 08:30:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140716063002.GB23235@pengutronix.de>
References: <53C25B45.7010101@gmail.com>
 <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
 <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
 <20140715110157.e505c7ad66ef5871b1ecf830@gmail.com>
 <CAOngqVVHG5+S68okE4kqU95FNtkxvJFtcZj0W2KmH=54XxdKTg@mail.gmail.com>
 <20140715142753.d2c6424ea6b2d1b810b0de73@gmail.com>
 <CAOngqVXSRuHmPL_Z73AfLPCdzitS7=kkViy2rJMvX1vvsiOhbw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOngqVXSRuHmPL_Z73AfLPCdzitS7=kkViy2rJMvX1vvsiOhbw@mail.gmail.com>
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
To: Daniele Lacamera <daniele.lacamera@tass.be>
Cc: barebox <barebox@lists.infradead.org>

On Tue, Jul 15, 2014 at 12:57:21PM +0200, Daniele Lacamera wrote:
> On Tue, Jul 15, 2014 at 12:27 PM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> >> I will be able to provide such an interface by using a similar
> >> approach to what you used for ping (so via net_poll() routine called
> >> in a loop), assuming that your posix-like interface expects blocking
> >> calls for read/write operations.
> >
> > Alas! We can't use this approach for tftp because tftp is a FILESYSTEM in barebox.
> 
> Then again, I'd like to know if your FS implementation actually needs
> blocking call, and in case, where is the code supposed to block. Does
> barebox have some kind of support for multiple threads, or a default
> event loop where background operations can be added? Or are the FS
> calls non blocking?
> 
> Sorry for asking dumb questions, I am not a barebox developer and I am
> just trying to figure out what is your execution model. There
> certainly is a way to integrate my TFTP implementation as soon as I
> realize what is your model: as for instance we have blocking POSIX
> socket calls implemented with and without an OS infrastructure, and we
> are able to realize blocking calls on any systems, being baremetal or
> multithtreaded.

Right now the network users register to a udp port and provide a handler
which is called whenever a packet to this port is received. The
prototype for this function is:

struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
		rx_handler_f *handler, void *ctx);

Then network users can send packets on this connection:

int net_udp_send(struct net_connection *con, int len);

The function returns after the packet has been sent.

The network user has to keep the ball rolling by calling

void net_poll(void);

in a loop. This function will call into the network drivers receive
function and dispatch the received packets. ARP packets are handled
internally, the UDP packets are passed to the registered handlers.

The handlers usually will send answers to received packets (so a tftp
client will send an ack here or request the next packet).

Usually the loop calling net_poll() also has some functionality to
detect progress and will send the last packet again if it was lost.

Hope that explains the networking model in barebox.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
