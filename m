Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4Oud-0007og-Hx
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 06:30:00 +0000
Date: Tue, 8 Jul 2014 08:29:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140708062934.GB23282@pengutronix.de>
References: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
 <1404422826-6589-4-git-send-email-antonynpavlov@gmail.com>
 <20140707182210.GC19147@ns203013.ovh.net>
 <20140708012346.2b0e75d53710d0dc68d5afac@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140708012346.2b0e75d53710d0dc68d5afac@gmail.com>
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
Subject: Re: [PATCH v5 3/7] PCI: initial commit
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 08, 2014 at 01:23:46AM +0400, Antony Pavlov wrote:
> On Mon, 7 Jul 2014 20:22:10 +0200
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> 
> > > +static struct pci_bus *pci_alloc_bus(void)
> > > +{
> > > +	struct pci_bus *b;
> > > +
> > > +	b = kzalloc(sizeof(*b), GFP_KERNEL);
> > 
> > 	if (!b)
> > 		return b;
> 
> kzalloc() eventually calls xmalloc().
> xmalloc() calls panic() if malloc fails, so there is no need to check b at all.

Then let's use xzalloc directly here. I think only the x functions
should panic on failure. kzalloc should be implemented with
malloc or calloc.

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
