Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJais-0007Qt-Vk
 for barebox@lists.infradead.ORG; Tue, 28 Nov 2017 07:54:33 +0000
Date: Tue, 28 Nov 2017 08:54:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171128075408.esegiqkhcrk4fbvq@pengutronix.de>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
 <20171124081237.6830-13-s.hauer@pengutronix.de>
 <20171125170251.GC25425@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171125170251.GC25425@ravnborg.org>
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
Subject: Re: [PATCH 12/21] net: dhcp: rework
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, Nov 25, 2017 at 06:02:51PM +0100, Sam Ravnborg wrote:
> Hi Sasha.
> 
> On Fri, Nov 24, 2017 at 09:12:28AM +0100, Sascha Hauer wrote:
> > The DHCP code is a mess. It is not clear which options are sent to the
> > server and which options are returned from the server. Also environment
> > variables are read from and written to all over the place.
> > 
> > This patch cleans this up. There now is struct dhcp_req_param which is
> > used for options sent to the server and struct dhcp_result which contains
> > the values sent from the server. The values from the server are written
> > to the barebox variables in a single place. Also it's now possible to
> > call the dhcp code without modifying barebox variables at all, storing
> > the result only in the dhcp result struct.
> 
> Browsing the code gave a nice impression that things
> got much simpler.
> Noticed one thing.
> 
> This struct is not the smallest..
> > +
> > +struct dhcp_result {
> > +	IPaddr_t ip;
> > +	IPaddr_t netmask;
> > +	IPaddr_t gateway;
> > +	IPaddr_t nameserver;
> > +	IPaddr_t serverip;
> > +	char *hostname;
> > +	char *domainname;
> > +	char *rootpath;
> > +	char *devicetree;
> > +	char *bootfile;
> > +	char *tftp_server_name;
> > +	uint32_t leasetime;
> >  };
> 
> > +struct dhcp_req_param dhcp_param;
> > +struct dhcp_result *dhcp_result;
> Is this why the struct is xalloc()'er and not a static variable like dhcp_param?
> Maybe the lifetime of the two differs - which may also explain it.

Yes, indeed, it's the lifetime. dhcp_param is static because it's used
only internally during lifetime of the dhcp request. dhcp_result is
returned from the dhcp code, and I don't like to return static data
which potentially gets overwritten in the nect dhcp call.
(IMO It would be even nicer if the dhcp code didn't use static data at
all, maybe next time).

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
