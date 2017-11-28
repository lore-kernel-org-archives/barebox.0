Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJafo-0006Pb-JG
 for barebox@lists.infradead.ORG; Tue, 28 Nov 2017 07:51:25 +0000
Date: Tue, 28 Nov 2017 08:50:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171128075058.l4jv4jbq5zoswbi4@pengutronix.de>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
 <20171124081237.6830-10-s.hauer@pengutronix.de>
 <20171125164647.GB25425@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171125164647.GB25425@ravnborg.org>
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
Subject: Re: [PATCH 09/21] net: dhcp: Allow to specify network device
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Sat, Nov 25, 2017 at 05:46:47PM +0100, Sam Ravnborg wrote:
> Hi Sasha.
> 
> >  
> > -	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
> > +	dhcp_con = net_udp_eth_new(edev, 0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
> 
> The constant 0xffffffff appears in a few places.
> A proper define would properly be better.

Ok, added a patch for it.

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
