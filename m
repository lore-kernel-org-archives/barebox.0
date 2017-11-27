Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJKfE-0004M1-QE
 for barebox@lists.infradead.ORG; Mon, 27 Nov 2017 14:45:43 +0000
Date: Mon, 27 Nov 2017 15:45:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171127144515.fd35j5kn5egl5whx@pengutronix.de>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
 <20171124081237.6830-9-s.hauer@pengutronix.de>
 <20171125164157.GA25425@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171125164157.GA25425@ravnborg.org>
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
Subject: Re: [PATCH 08/21] net: allow udp connections on specified network
 device
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Sat, Nov 25, 2017 at 05:41:57PM +0100, Sam Ravnborg wrote:
> Hi Sasha.
> 
> On Fri, Nov 24, 2017 at 09:12:24AM +0100, Sascha Hauer wrote:
> > This allows the DHCP code to configure specific network
> > devices so that DHCP no longer depends on any "current"
> > network device.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  include/net.h |  4 ++++
> >  net/net.c     | 32 ++++++++++++++++++++------------
> >  2 files changed, 24 insertions(+), 12 deletions(-)
> > 
> > diff --git a/include/net.h b/include/net.h
> > index e75f64fe75..6788f14cb0 100644
> > --- a/include/net.h
> > +++ b/include/net.h
> > @@ -443,6 +443,10 @@ static inline char *net_alloc_packet(void)
> >  struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
> >  		rx_handler_f *handler, void *ctx);
> >  
> > +struct net_connection *net_udp_eth_new(struct eth_device *edev, IPaddr_t dest,
> > +                                       uint16_t dport, rx_handler_f *handler,
> > +                                       void *ctx);
> > +
> >  struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler,
> >  		void *ctx);
> >  
> > diff --git a/net/net.c b/net/net.c
> > index 5f9535fc40..1d47bb449a 100644
> > --- a/net/net.c
> > +++ b/net/net.c
> > @@ -141,9 +141,8 @@ static void arp_handler(struct arprequest *arp)
> >  	}
> >  }
> >  
> > -static int arp_request(IPaddr_t dest, unsigned char *ether)
> > +static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *ether)
> >  {
> > -	struct eth_device *edev = eth_get_current();
> >  	char *pkt;
> >  	struct arprequest *arp;
> >  	uint64_t arp_start;
> > @@ -288,15 +287,17 @@ IPaddr_t net_get_gateway(void)
> >  
> >  static LIST_HEAD(connection_list);
> >  
> > -static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
> > -		void *ctx)
> > +static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
> > +				      rx_handler_f *handler, void *ctx)
> >  {
> > -	struct eth_device *edev = eth_get_current();
> >  	struct net_connection *con;
> >  	int ret;
> >  
> > -	if (!edev)
> > -		return ERR_PTR(-ENETDOWN);
> > +	if (!edev) {
> > +		edev = eth_get_current();
> > +		if (!edev)
> > +			return ERR_PTR(-ENETDOWN);
> > +	}
> >  
> >  	if (!is_valid_ether_addr(edev->ethaddr)) {
> >  		char str[sizeof("xx:xx:xx:xx:xx:xx")];
> > @@ -325,7 +326,7 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
> >  	if (dest == 0xffffffff) {
> >  		memset(con->et->et_dest, 0xff, 6);
> >  	} else {
> > -		ret = arp_request(dest, con->et->et_dest);
> > +		ret = arp_request(edev, dest, con->et->et_dest);
> >  		if (ret)
> >  			goto out;
> >  	}
> > @@ -349,10 +350,11 @@ out:
> >  	return ERR_PTR(ret);
> >  }
> >  
> > -struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
> > -		rx_handler_f *handler, void *ctx)
> > +struct net_connection *net_udp_eth_new(struct eth_device *edev, IPaddr_t dest,
> > +				       uint16_t dport, rx_handler_f *handler,
> > +				       void *ctx)
> >  {
> > -	struct net_connection *con = net_new(dest, handler, ctx);
> > +	struct net_connection *con = net_new(edev, 0xffffffff, handler, ctx);
> 
> I could not follow the code here.
> But it looks strange that in this code snippet dest
> was replaced by the magic 0xffffffff.

This is wrong here. It gets replaced again with 'dest' in

[PATCH 13/21] net: Pick network device based on IP settings

I just removed this wrong hunk here.

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
