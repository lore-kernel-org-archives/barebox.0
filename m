Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dAv1w-0004pX-B5
 for barebox@lists.infradead.org; Wed, 17 May 2017 09:14:06 +0000
Date: Wed, 17 May 2017 11:13:36 +0200
From: Jan Remmet <J.Remmet@phytec.de>
Message-ID: <20170517091335.GA2865@lws-weitzel2@phytec.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
 <20170331070346.26878-2-s.hauer@pengutronix.de>
 <20170515091800.GA4612@lws-weitzel2@phytec.de>
 <20170515101428.GB4612@lws-weitzel2@phytec.de>
 <20170516053358.dminnyfrdncswv5k@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20170516053358.dminnyfrdncswv5k@pengutronix.de>
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Jan Remmet <J.Remmet@phytec.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 01/42] state: Make pointing to the backend using a
 phandle the only supported method
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, May 16, 2017 at 07:33:58AM +0200, Sascha Hauer wrote:
> On Mon, May 15, 2017 at 12:14:28PM +0200, Jan Remmet wrote:
> > On Mon, May 15, 2017 at 11:18:00AM +0200, Jan Remmet wrote:
> > > On Fri, Mar 31, 2017 at 09:03:05AM +0200, Sascha Hauer wrote:
> > > > All other methods are broken for some time already: When starting the
> > > > kernel the state code rewrites the state node in the device tree and
> > > > replaced the "backend" property with a phandle - even when the target
> > > > can't be described as a phandle. Since using phandles is the nicest way
> > > > to point to the storage device anyway remove the other methods.
> > > Is there a way to use block devices as storage? On eMMC we use mtd style
> > > partitios inside the sd/mmc host node to access barebox and
> > > barebox-environment. But using this barebox-state didn't find the backend
> > > path.
> > Using barebox-state 2016.12.0 the states from the mtd style partition is found
> > now.
> 
> There's v2017.03.0 already. Or was that the version you tried before and
> failed with?
I was still on 2016.08.0 with barebox_2016.11.0. 

Jan

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
