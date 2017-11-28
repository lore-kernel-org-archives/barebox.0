Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJaXG-0001nO-Iw
 for barebox@lists.infradead.ORG; Tue, 28 Nov 2017 07:42:32 +0000
Date: Tue, 28 Nov 2017 08:42:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171128074208.6354xw5gbx7trt2i@pengutronix.de>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
 <20171124081237.6830-7-s.hauer@pengutronix.de>
 <20171125163623.GC22830@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171125163623.GC22830@ravnborg.org>
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
Subject: Re: [PATCH 06/21] net: dhcp: Do not overwrite serverip if it is valid
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Sat, Nov 25, 2017 at 05:36:23PM +0100, Sam Ravnborg wrote:
> Hi Sasha.
> 
> >  }
> >  
> > -void net_set_serverip(IPaddr_t ip)
> > +void net_set_serverip(IPaddr_t ip, bool overwrite)
> >  {
> > +	if (net_serverip && !overwrite)
> > +		return;
> > +
> >  	net_serverip = ip;
> >  }
> 
> An alternative solution had been to implement two functions:
> net_set_serverip() - that would always set the ip.
> net_set_empty_serverip() - update ip only if empty
> 
> This is more readable than a boolean flag which
> you always need to look up to check the interpretation of.

Good idea. Just did that.

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
