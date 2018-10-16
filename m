Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCJE7-00053S-QE
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 06:53:14 +0000
Date: Tue, 16 Oct 2018 08:52:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181016065258.xwnuhzcc7v2ldtnb@pengutronix.de>
References: <20181015092611.7223-1-antonynpavlov@gmail.com>
 <CAHQ1cqHWfr=Kxqr81ekhMdF_j43eCUNECj+QKSXz_iO3YUKLOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHWfr=Kxqr81ekhMdF_j43eCUNECj+QKSXz_iO3YUKLOQ@mail.gmail.com>
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
Subject: Re: [PATCH] net: make routing work after dhcp command
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Oct 15, 2018 at 07:48:37AM -0700, Andrey Smirnov wrote:
> On Mon, Oct 15, 2018 at 2:26 AM Antony Pavlov <antonynpavlov@gmail.com> wrote:
> >
> > At the moment only ifup stuff turns netif up.
> > After the commit f0624a701513 ('net: Do not route traffic
> > to interfaces that are not up') the dhcp command
> > keeps netif->ifup == false and network subsystem
> > can't route packets.
> >
> 
> I am not really trying to make any objections to this patch, however I
> can't seem to find any documented mention that just calling "dhcp" is
> sufficient to bring network up in barebox.
> Documentation/user/networking.rst explicitly tells one to use "ifup"
> for both static and dynamic IP configurations. That being said just
> calling "dhcp" used to work, so this is definitely a regression and it
> might make sense to apply this fix.

Yes, it used to work and it should continue to work, so applied this
one.

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
