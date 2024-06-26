Delivery-date: Wed, 26 Jun 2024 12:15:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sMPgQ-00CWRF-2l
	for lore@lore.pengutronix.de;
	Wed, 26 Jun 2024 12:15:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sMPgQ-0006E3-7t
	for lore@pengutronix.de; Wed, 26 Jun 2024 12:15:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CXbJGnHXlmF9hjxLN0f+yb3RCuEHpjwofn8OefY5MuE=; b=Tq+ObTWNRJqwOG0ZpNC5JOS5Gp
	WlV2cIFBPcdQZnIi283TfKhpxcFVuodxB9ThOqygtfcQ4qNwkoj0tjzcCRjYeRfqgwBP91CIfqjnW
	l878oXteJXx1tn1ymRgxwCokR61QYMqJnEjvma7ih7uw9NHosr7v+b9htoyJQTknuFedPfOI8NNCz
	Yh6DA+evx7FDV9MdgXRGIMWhlfyOFLkdfx++lnVGkR7GUfBecl2TcZwu1Fst0bXrmMxc0pBaEY96d
	tFIHYLdThq+MOoonF6eMxd2lMq4SqS3M/w8IsNl3xeAFVziAyarxZ/c/4ZwNJWNGUamqQG/ublNrX
	uN1YZcZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMPfu-00000006GxI-2ZAQ;
	Wed, 26 Jun 2024 10:14:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMPfp-00000006Gve-1T5X
	for barebox@lists.infradead.org;
	Wed, 26 Jun 2024 10:14:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1sMPfo-00066i-4I; Wed, 26 Jun 2024 12:14:44 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1sMPfn-0056aV-O4; Wed, 26 Jun 2024 12:14:43 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1sMPfn-00G3zp-29;
	Wed, 26 Jun 2024 12:14:43 +0200
Date: Wed, 26 Jun 2024 12:14:43 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240626101443.b5zozjpyaldxleks@pengutronix.de>
References: <20240613125818.30499-1-m.felsch@pengutronix.de>
 <20240613125818.30499-12-m.felsch@pengutronix.de>
 <ZnAZ-YlV83TZOUcZ@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZnAZ-YlV83TZOUcZ@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_031445_409125_F4881250 
X-CRM114-Status: GOOD (  21.57  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 11/11] FIT: add support to cache opened fit images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-06-17, Sascha Hauer wrote:
> On Thu, Jun 13, 2024 at 02:58:18PM +0200, Marco Felsch wrote:
> > Cache the FIT image fit_open() calls to avoid loading the same FIT image
> > twice. This is very useful if the same FIT image is used to provide the
> > base devicetree, kernel and initrd as well as devicetree overlays.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  common/image-fit.c  | 38 +++++++++++++++++++++++++++++++++++++-
> >  include/image-fit.h |  4 ++++
> >  2 files changed, 41 insertions(+), 1 deletion(-)
> > 
> > diff --git a/common/image-fit.c b/common/image-fit.c
> > index c5c88ebe4c1e..061825f5f22c 100644
> > --- a/common/image-fit.c
> > +++ b/common/image-fit.c
> > @@ -18,6 +18,8 @@
> >  #include <fnmatch.h>
> >  #include <malloc.h>
> >  #include <linux/ctype.h>
> > +#include <linux/minmax.h>
> > +#include <linux/refcount.h>
> >  #include <asm/byteorder.h>
> >  #include <errno.h>
> >  #include <linux/err.h>
> > @@ -34,6 +36,8 @@
> >  #define CHECK_LEVEL_SIG 2
> >  #define CHECK_LEVEL_MAX 3
> >  
> > +LIST_HEAD(open_fits);
> 
> Should be static

Sure!

> > +
> >  static uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
> >  {
> >  	dt += size;
> > @@ -861,6 +865,22 @@ void *fit_open_configuration(struct fit_handle *handle, const char *name)
> >  	return conf_node;
> >  }
> >  
> > +static struct fit_handle *fit_get_handle(const char *filename)
> > +{
> > +	size_t query_len = strlen(filename);
> > +	struct fit_handle *handle;
> > +
> > +	list_for_each_entry(handle, &open_fits, entry) {
> > +		size_t len = strlen(handle->filename);
> > +
> > +		len = min(len, query_len);
> > +		if (!strncmp(filename, handle->filename, len))
> > +			return handle;
> 
> Why not plain strcmp() here?

Good question, I will change this, thanks.

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


