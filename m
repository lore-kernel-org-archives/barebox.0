Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAV7o-0008TD-3F
 for barebox@lists.infradead.org; Tue, 16 May 2017 05:34:26 +0000
Date: Tue, 16 May 2017 07:33:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170516053358.dminnyfrdncswv5k@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
 <20170331070346.26878-2-s.hauer@pengutronix.de>
 <20170515091800.GA4612@lws-weitzel2@phytec.de>
 <20170515101428.GB4612@lws-weitzel2@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170515101428.GB4612@lws-weitzel2@phytec.de>
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
Subject: Re: [PATCH 01/42] state: Make pointing to the backend using a
 phandle the only supported method
To: Jan Remmet <J.Remmet@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, May 15, 2017 at 12:14:28PM +0200, Jan Remmet wrote:
> On Mon, May 15, 2017 at 11:18:00AM +0200, Jan Remmet wrote:
> > On Fri, Mar 31, 2017 at 09:03:05AM +0200, Sascha Hauer wrote:
> > > All other methods are broken for some time already: When starting the
> > > kernel the state code rewrites the state node in the device tree and
> > > replaced the "backend" property with a phandle - even when the target
> > > can't be described as a phandle. Since using phandles is the nicest way
> > > to point to the storage device anyway remove the other methods.
> > Is there a way to use block devices as storage? On eMMC we use mtd style
> > partitios inside the sd/mmc host node to access barebox and
> > barebox-environment. But using this barebox-state didn't find the backend
> > path.
> Using barebox-state 2016.12.0 the states from the mtd style partition is found
> now.

There's v2017.03.0 already. Or was that the version you tried before and
failed with?

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
