Delivery-date: Thu, 01 Jun 2023 10:12:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dQZ-005Wkc-OA
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:12:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dQX-0000tj-7u
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:12:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vLrXgMny9sHEt8aAA50tu/0wcpQRIO+nr41d93IL8fE=; b=H+IhAtTuLZTnPIwvF85hvfwNfY
	fo8/0Q/4+SzXGGIUN4a6x9LGYJd941n6dUBHbZ2Nxoa38amVhaAYdIMlT8UbmGy9eVCibw59K+HGt
	Asstj6J8zGW4PbrMxQoRefd/U7F4eSrosDk4H+WShGg92NzVGikknUhsalsYdWDuMpV2xlVBHvT1Z
	py2i0raxkeknTHM09VOfxf8LFekSdodW5lCo7W0FoZA6+Ld5z+q2ACH1bZ/V2aF18JySQdxZYs/m4
	FOKxqX2YPEhUszity5BPKA3Hx1Z0ktS9qzUTckP8f+OvHZDbfZwAA0xnoZqMOm9/D2PjW4eW1lq1/
	9qIHjDsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dPM-002Urk-2p;
	Thu, 01 Jun 2023 08:11:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dPJ-002UrA-2R
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:11:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4dPI-0000lO-C3; Thu, 01 Jun 2023 10:11:40 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4dPI-0004FZ-50; Thu, 01 Jun 2023 10:11:40 +0200
Date: Thu, 1 Jun 2023 10:11:40 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230601081140.zb64um6y5kpj4vdz@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-19-a.fatoum@pengutronix.de>
 <20230531200120.xjp6qr372didsis5@pengutronix.de>
 <5df1f41d-257d-40ce-df98-27ca8e71531e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5df1f41d-257d-40ce-df98-27ca8e71531e@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_011141_798583_E7A889C6 
X-CRM114-Status: GOOD (  34.28  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 18/18] state: allow lookup of barebox state partition by
 Type GUID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-01, Ahmad Fatoum wrote:
> On 31.05.23 22:01, Marco Felsch wrote:
> > Hi Ahmad,
> > 
> > On 23-05-31, Ahmad Fatoum wrote:
> >> The backend device tree property so far always pointed at a partition.
> >> Let's allow pointing it at GPT storage devices directly and lookup
> >> the correct barebox state partition by the well-known type GUID:
> >>
> >>   4778ed65-bf42-45fa-9c5b-287a1dc4aab1
> > 
> > we should add an example within the Documetation/ too.
> 
> I'd wait until we have a new dt-utils release with the same
> binding. Anything else would be confusing. 

Sure.

> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  common/state/state.c | 22 ++++++++++++++++++++++
> >>  include/driver.h     | 17 +++++++++++++++++
> >>  include/state.h      |  4 ++++
> >>  3 files changed, 43 insertions(+)
> >>
> >> diff --git a/common/state/state.c b/common/state/state.c
> >> index 88e246198fb8..8f56c60b0e82 100644
> >> --- a/common/state/state.c
> >> +++ b/common/state/state.c
> >> @@ -21,8 +21,10 @@
> >>  #include <fs.h>
> >>  #include <crc.h>
> >>  #include <init.h>
> >> +#include <block.h>
> >>  #include <linux/err.h>
> >>  #include <linux/list.h>
> >> +#include <linux/uuid.h>
> >>  
> >>  #include <linux/mtd/mtd-abi.h>
> >>  #include <malloc.h>
> >> @@ -595,6 +597,8 @@ static char *cdev_to_devpath(struct cdev *cdev, off_t *offset, size_t *size)
> >>  }
> >>  #endif
> >>  
> >> +static guid_t barebox_state_partition_guid = BAREBOX_STATE_PARTITION_GUID;
> >> +
> >>  /*
> >>   * state_new_from_node - create a new state instance from a device_node
> >>   *
> >> @@ -641,6 +645,24 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
> >>  		goto out_release_state;
> >>  	}
> >>  
> >> +	/* Is the backend referencing an on-disk partitonable block device? */
> >> +	if (cdev_is_block_disk(cdev)) {
> >> +		struct cdev *partcdev = NULL;
> >> +
> >> +		if (cdev_is_gpt_partitioned(cdev))
> >> +			partcdev = cdev_find_child_by_typeuuid(cdev, &barebox_state_partition_guid);
> >> +
> >> +		if (!partcdev) {
> >> +			ret = -EINVAL;
> >> +			goto out_release_state;
> >> +		}
> >> +
> >> +		pr_debug("%s: backend GPT partition looked up via PartitionTypeGUID\n",
> >> +			 node->full_name);
> >> +
> >> +		cdev = partcdev;
> >> +	}
> > 
> > What about having the above logic within a seperate function and the
> > above code would be:
> > 
> > 	if (cdev_is_block_disk(cdev))
> > 		cdev = get_cdev_by_typeuuid(cdev, &barebox_state_partition_guid)
> > 	
> > 	if (!cdev) {
> > 		ret = -EINVAL;
> > 		goto out_release_state;
> > 	}
> > 
> > This way we would have everything in place to re-use the same logic for
> > the barebox-environmnet too. What do you think?
> 
> cdev from of_cdev_find not being available -> -EPROBE_DEFER

This should be checked earlier or do I miss something?

> cdev GPT partition not existing,despite backend pointing at root device -> -EINVAL

So this could follow without..

> So the cdev check needs to be within if (cdev_is_block_disk(cdev)).

having it within the if. The cdev_find_child_by_gpt_typeuuid() could
return NULL in case nothing is found. But that's just a minor nit.

Regards,
  Marco

> I don't object to combining cdev_is_gpt_partitioned and cdev_find_child_by_typeuuid into
> cdev_find_child_by_gpt_typeuuid though.
> 
> 
> Thanks for all the review!
> Ahmad
> 
> > 
> > Regards,
> >   Marco
> > 
> >> +
> >>  	state->backend_path = cdev_to_devpath(cdev, &offset, &size);
> >>  
> >>  	pr_debug("%s: backend resolved to %s\n", node->full_name, state->backend_path);
> >> diff --git a/include/driver.h b/include/driver.h
> >> index 6407f7d6ba36..579b03fbac34 100644
> >> --- a/include/driver.h
> >> +++ b/include/driver.h
> >> @@ -585,6 +585,23 @@ extern struct list_head cdev_list;
> >>  #define for_each_cdev(cdev) \
> >>  	list_for_each_entry(cdev, &cdev_list, list)
> >>  
> >> +#define for_each_cdev_partition(partcdev, cdev) \
> >> +	list_for_each_entry((partcdev), &(cdev)->partitions, partition_entry)
> >> +
> >> +
> >> +static inline struct cdev *cdev_find_child_by_typeuuid(struct cdev *cdev,
> >> +						       guid_t *typeuuid)
> >> +{
> >> +	struct cdev *partcdev;
> >> +
> >> +	for_each_cdev_partition(partcdev, cdev) {
> >> +		if (guid_equal(&partcdev->typeuuid, typeuuid))
> >> +			return partcdev;
> >> +	}
> >> +
> >> +	return NULL;
> >> +}
> >> +
> >>  #define DEVFS_PARTITION_FIXED		(1U << 0)
> >>  #define DEVFS_PARTITION_READONLY	(1U << 1)
> >>  #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
> >> diff --git a/include/state.h b/include/state.h
> >> index bffcd5a9007f..3daf82c0735f 100644
> >> --- a/include/state.h
> >> +++ b/include/state.h
> >> @@ -62,4 +62,8 @@ static inline int state_read_mac(struct state *state, const char *name, u8 *buf)
> >>  
> >>  #endif /* #if IS_ENABLED(CONFIG_STATE) / #else */
> >>  
> >> +#define BAREBOX_STATE_PARTITION_GUID \
> >> +	GUID_INIT(0x4778ed65, 0xbf42, 0x45fa, 0x9c, 0x5b, \
> >> +		 0x28, 0x7a, 0x1d, 0xc4, 0xaa, 0xb1)
> >> +
> >>  #endif /* __STATE_H */
> >> -- 
> >> 2.39.2
> >>
> >>
> >>
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


