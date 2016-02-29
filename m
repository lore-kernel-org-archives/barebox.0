Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aaHX3-0003GD-Pl
 for barebox@lists.infradead.org; Mon, 29 Feb 2016 06:42:14 +0000
Date: Mon, 29 Feb 2016 07:41:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160229064149.GA9224@pengutronix.de>
References: <1455792617-13671-1-git-send-email-s.hauer@pengutronix.de>
 <1455792617-13671-4-git-send-email-s.hauer@pengutronix.de>
 <1456475830.3401.8.camel@lws-tremmet.phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456475830.3401.8.camel@lws-tremmet.phytec.de>
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
Subject: Re: [PATCH 3/3] driver: replace dev_request_mem_region with
 dev_request_mem_resource
To: Teresa Remmet <t.remmet@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Feb 26, 2016 at 09:37:10AM +0100, Teresa Remmet wrote:
> Hello Sascha,
> 
> Am Donnerstag, den 18.02.2016, 11:50 +0100 schrieb Sascha Hauer:
> > dev_request_mem_region doesn't work properly one some SoCs on which
> > PTR_ERR() values clash with valid return values from dev_request_mem_region.
> > Replace them with dev_request_mem_resource where possible.
> > 
> > This patch has been generated with the following semantic patch.
> > 
> > expression d;
> > expression n;
> > expression io;
> > identifier func;
> > @@
> > func(...) {
> > +struct resource *iores;
> > <+...
> > -io = dev_request_mem_region(d, n);
> > -if (IS_ERR(io)) {
> > +iores = dev_request_mem_resource(d, n);
> > +if (IS_ERR(iores)) {
> > ...
> > -	return PTR_ERR(io);
> > -}
> > +	return PTR_ERR(iores);
> > +}
> > +io = IOMEM(iores->start);
> > ...+>
> > }
> > 
> > @@
> > expression d;
> > expression n;
> > expression io;
> > identifier func;
> > @@
> > func(...) {
> > +struct resource *iores;
> > <+...
> > -io = dev_request_mem_region(d, n);
> > -if (IS_ERR(io)) {
> > +iores = dev_request_mem_resource(d, n);
> > +if (IS_ERR(iores))
> > -	return PTR_ERR(io);
> > -}
> > +	return PTR_ERR(iores);
> > +io = IOMEM(iores->start);
> > ...+>
> > }
> > 
> > @@
> > expression d;
> > expression n;
> > expression io;
> > identifier func;
> > @@
> > func(...) {
> > +struct resource *iores;
> > <+...
> > -io = dev_request_mem_region(d, n);
> > -if (IS_ERR(io)) {
> > -	ret = PTR_ERR(io);
> > +iores = dev_request_mem_resource(d, n);
> > +if (IS_ERR(iores)) {
> > +	ret = PTR_ERR(iores);
> 
> here you seem to miss:
> 
> io = IOMEM(iores->start);

Oh, indeed. Thanks for noting. Fixed this up

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
