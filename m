Delivery-date: Mon, 14 Apr 2025 13:06:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HeN-000cC8-1m
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 13:06:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HeM-0008Pa-On
	for lore@pengutronix.de; Mon, 14 Apr 2025 13:06:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yACfMguz/8h1lk7rowrT5RLE99LnG7/ktQcG1PToId8=; b=izxjjeQkMoLfkzg8ejEDkR9D3q
	2eLvf/2rFGbS/96TzfDVFk1No0LSu4ad4weMFN7UQ2DYW9+M2pchqc9MzOSnmKDdsr3AA8k2EMa53
	BtQI7Dp6cxmUQi+wn4PexLGzHPYXTa7XspY4UZZ0qqHDN5/ec1/so+wqqjRCkC+U9r5SbRonr9d04
	3L00NOkskQt6yBTftz81vrFkUYDDbPvsus6JUdTYQ+e2QEZGy5/EZ+u1mWZW9NLWnoMWmISzKWR/M
	O+ZEJT3N2P1yxA/nB/x/69QN7yisz9ajL3wr8tCbhwCTZCR67z7L4yRQJsNaD+SHAOAXSupHTPrZd
	47j7lqvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Hdv-00000001f49-3LG0;
	Mon, 14 Apr 2025 11:06:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HNM-00000001bo2-1x73
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:49:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4HNK-0001w9-VF; Mon, 14 Apr 2025 12:49:14 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4HNK-000EfE-2V;
	Mon, 14 Apr 2025 12:49:14 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4HNK-000GEg-2B;
	Mon, 14 Apr 2025 12:49:14 +0200
Date: Mon, 14 Apr 2025 12:49:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250414104914.wrkszybifc2ezxbq@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
 <20250414063152.2736649-8-a.fatoum@pengutronix.de>
 <20250414101715.esfc3lxmen3ez6jb@pengutronix.de>
 <af6d8b79-f081-4e39-8dba-ce487354e76d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <af6d8b79-f081-4e39-8dba-ce487354e76d@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_034916_509544_E793111D 
X-CRM114-Status: GOOD (  22.82  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 07/18] cdev: alias: add support for partition links
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-04-14, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 4/14/25 12:17, Marco Felsch wrote:
> > On 25-04-14, Ahmad Fatoum wrote:
> >> We currently support bootsource.2, but not bootsource.root-A.
> >> Fix this and while at it, factor out the logic for general reuse.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> 
> [snip]
> 
> >> -static struct cdev *resolve_partition(struct cdev *cdev,
> >> -				      const char *partname)
> >> -{
> >> -	struct cdev *partcdev;
> >> -
> >> -	if (!partname)
> >> -		return cdev;
> >> -
> >> -	for_each_cdev_partition(partcdev, cdev) {
> >> -		if (streq_ptr(partcdev->partname, partname))
> >> -			return partcdev;
> >> -	}
> >> -
> >> -	return ERR_PTR(-ENODEV);
> >> -}
> >> -
> 
> [snip]
> 
> >> +/**
> >> + * cdev_find_partition - find a partition belonging to a physical device
> >> + *
> >> + * @cdev: the cdev which should be searched for partitions
> >> + * @name: the partition name
> >> + */
> >> +struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name)
> >> +{
> >> +	struct cdev *partcdev;
> >> +
> >> +	if (!name)
> >> +		return cdevm;
> 
> No, I want a NULL name to expand to the parent device. This makes is a
> drop-in replacement for resolve_partition() removed in this same patch.

I have seen that :-) but in the end it was a local function so changes
shouldn't be hard to adapt.

With making the function public avaiable I don't see why
cdev_find_partition() should return the parent device if NULL is
provided. IMHO this is wrong input from the user. What use-case do you
see with returning the parent device?

Regards,
  Marco


> Thanks,
> Ahmad
> 
> > 
> > 		return ERR_PTR(-EINVAL) ?
> > 
> > Regards,
> >   Marco
> > 
> >> +
> >> +	for_each_cdev_partition(partcdev, cdevm) {
> >> +		struct cdev *cdevl;
> >> +
> >> +		if (streq_ptr(partcdev->partname, name))
> >> +			return partcdev;
> >> +
> >> +		list_for_each_entry(cdevl, &partcdev->links, link_entry) {
> >> +			if (streq_ptr(cdevl->partname, name))
> >> +				return cdevl;
> >> +		}
> >> +	}
> >> +
> >> +	return NULL;
> >> +}
> >> +
> >>  /**
> >>   * device_find_partition - find a partition belonging to a physical device
> >>   *
> >> diff --git a/include/driver.h b/include/driver.h
> >> index 3f2c681c0e80..ca002c5164c2 100644
> >> --- a/include/driver.h
> >> +++ b/include/driver.h
> >> @@ -503,6 +503,7 @@ int devfs_create(struct cdev *);
> >>  int devfs_create_link(struct cdev *, const char *name);
> >>  int devfs_remove(struct cdev *);
> >>  int cdev_find_free_index(const char *);
> >> +struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name);
> >>  struct cdev *device_find_partition(struct device *dev, const char *name);
> >>  struct cdev *lcdev_by_name(const char *filename);
> >>  struct cdev *cdev_readlink(struct cdev *cdev);
> >> -- 
> >> 2.39.5
> >>
> >>
> >>
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 


