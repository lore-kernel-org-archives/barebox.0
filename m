Delivery-date: Wed, 20 Aug 2025 18:33:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uolkS-002gF0-1o
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 18:33:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uolkR-0000cs-9h
	for lore@pengutronix.de; Wed, 20 Aug 2025 18:33:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EMZQbvKvvBFhvW98ILlKeTaf9RvFaGD4pxn+FVJ/Oq4=; b=oz2wxYzJ2JlG4wgw1wt3JoVf5k
	3n1owINwrMILKflb6pVeWuiSk6LYbEelTyjV3UeBrsGb4v5HAPk8tFsfyhuTEKWgVQLD4a9r8ifvx
	+1J8VhxbO8D+EaeyZ/msCtOWdGPJcbwGnkGqR9WMiDDKgClCYbKwQ6vsjwLHfPOGZdWskf2WTfqEF
	IBrR76Vp2SLtJVMAiejalZqKhtkDx+sdYcSqlovM/vZu6IvltNoZfAO3h507Pq7gBj2MIiRF3oJhI
	50+EQmW4o3iq9gjn2liicd1EIbQwKIbiHa9/r5Xh76ZtcNBWDeuDq8++h3rN2pDmqvxqtsu+xQlKV
	azTfXjOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoljw-0000000EPQW-2BeR;
	Wed, 20 Aug 2025 16:32:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uok9b-0000000E9Nm-3lOC
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 14:51:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uok9a-0001mP-HZ; Wed, 20 Aug 2025 16:51:06 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uok9a-001GPM-19;
	Wed, 20 Aug 2025 16:51:06 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uok9a-005yRZ-0q;
	Wed, 20 Aug 2025 16:51:06 +0200
Date: Wed, 20 Aug 2025 16:51:06 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20250820145106.ngoy6zfwuq4hwyie@pengutronix.de>
References: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
 <20250820-v2024-05-0-topic-fit-overlay-v6-12-9d1b3bab2ee2@pengutronix.de>
 <007c5c91-6a6c-4877-8aae-df381aa48677@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <007c5c91-6a6c-4877-8aae-df381aa48677@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_075107_941596_C61CF8A7 
X-CRM114-Status: GOOD (  24.29  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
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
Subject: Re: [PATCH v6 12/12] FIT: add support to cache opened fit images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 25-08-20, Ahmad Fatoum wrote:
> Hi,
> 
> On 8/20/25 11:48, Marco Felsch wrote:
> > Cache the FIT image fit_open() calls to avoid loading the same FIT image
> > twice. This is very useful if the same FIT image is used to provide the
> > base devicetree, kernel and initrd as well as devicetree overlays.
> 
> Just curious, how much time does this save?

This depends on the amount of overlays you're going to check/apply. But
in my use-case it reduced the time from ~1sec to 200ms for ~10 overlays
which are stored together with the boot image e.g. kernel, base-dt,
initrd.

Regards,
  Marco

> 
> Cheers,
> Ahmad
> 
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  common/image-fit.c  | 32 ++++++++++++++++++++++++++++++++
> >  include/image-fit.h |  4 ++++
> >  2 files changed, 36 insertions(+)
> > 
> > diff --git a/common/image-fit.c b/common/image-fit.c
> > index c9d08d25f723665e5203d8e8372255a39bf739de..2cde844e46a61f412a46c2c7bb79d833153e5344 100644
> > --- a/common/image-fit.c
> > +++ b/common/image-fit.c
> > @@ -16,6 +16,7 @@
> >  #include <fs.h>
> >  #include <malloc.h>
> >  #include <linux/ctype.h>
> > +#include <linux/refcount.h>
> >  #include <asm/byteorder.h>
> >  #include <errno.h>
> >  #include <linux/err.h>
> > @@ -33,6 +34,8 @@
> >  #define CHECK_LEVEL_SIG 2
> >  #define CHECK_LEVEL_MAX 3
> >  
> > +static LIST_HEAD(open_fits);
> > +
> >  static uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
> >  {
> >  	dt += size;
> > @@ -902,6 +905,18 @@ void *fit_open_configuration(struct fit_handle *handle, const char *name,
> >  	return conf_node;
> >  }
> >  
> > +static struct fit_handle *fit_get_handle(const char *filename)
> > +{
> > +	struct fit_handle *handle;
> > +
> > +	list_for_each_entry(handle, &open_fits, entry) {
> > +		if (!strcmp(filename, handle->filename))
> > +			return handle;
> > +	}
> > +
> > +	return NULL;
> > +}
> > +
> >  static int fit_do_open(struct fit_handle *handle)
> >  {
> >  	const char *desc = "(no description)";
> > @@ -951,6 +966,8 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
> >  	handle->size = size;
> >  	handle->verify = verify;
> >  
> > +	refcount_set(&handle->users, 1);
> > +
> >  	ret = fit_do_open(handle);
> >  	if (ret) {
> >  		fit_close(handle);
> > @@ -985,6 +1002,12 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
> >  		return ERR_PTR(-errno);
> >  	}
> >  
> > +	handle = fit_get_handle(filename);
> > +	if (handle) {
> > +		refcount_inc(&handle->users);
> > +		return handle;
> > +	}
> > +
> >  	handle = xzalloc(sizeof(struct fit_handle));
> >  
> >  	handle->verbose = verbose;
> > @@ -1002,6 +1025,9 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
> >  	handle->fit = handle->fit_alloc;
> >  	handle->filename = filename;
> >  
> > +	refcount_set(&handle->users, 1);
> > +	list_add(&handle->entry, &open_fits);
> > +
> >  	ret = fit_do_open(handle);
> >  	if (ret) {
> >  		fit_close(handle);
> > @@ -1013,9 +1039,15 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
> >  
> >  static void __fit_close(struct fit_handle *handle)
> >  {
> > +	if (!refcount_dec_and_test(&handle->users))
> > +		return;
> > +
> >  	if (handle->root)
> >  		of_delete_node(handle->root);
> >  
> > +	if (handle->filename)
> > +		list_del(&handle->entry);
> > +
> >  	free(handle->filename);
> >  	free(handle->fit_alloc);
> >  }
> > diff --git a/include/image-fit.h b/include/image-fit.h
> > index 68f70f4365cb7a650596263086f7de2209d5957e..f9791ff251c554eda56bf3af98c8abceb056a176 100644
> > --- a/include/image-fit.h
> > +++ b/include/image-fit.h
> > @@ -7,6 +7,7 @@
> >  #define __IMAGE_FIT_H__
> >  
> >  #include <linux/types.h>
> > +#include <linux/refcount.h>
> >  #include <bootm.h>
> >  
> >  struct fit_handle {
> > @@ -15,6 +16,9 @@ struct fit_handle {
> >  	size_t size;
> >  	char *filename;
> >  
> > +	struct list_head entry;
> > +	refcount_t users;
> > +
> >  	bool verbose;
> >  	enum bootm_verify verify;
> >  
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 


