Delivery-date: Wed, 07 Jun 2023 10:57:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6oyp-00E6qD-Et
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 10:57:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6oym-00005b-Qc
	for lore@pengutronix.de; Wed, 07 Jun 2023 10:57:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RaB0kUPe93qXnDhcRFDdWIysyVNS2pN9o9k4orhvITQ=; b=Jsy5sa85PJ3mFeCOuCrrCOZfy8
	xpFNHxqDEUzj8BPTdjG9Ds34BL3eiLZRZo7HHSmDGTY+EgqNg6kpz6AB78mpvi6SBtoXsLagO8uB6
	tw29cIa1rueplFwsY1p+f61sZPQFhY8Z+bATUovi7kYWcPYhVc9Ks1F5SfavblyClOCAdXwMRAnl+
	SX5YLk5/1cNAZPkmWYgmygdKGql3ce2dNLL1UBIvLPlotM6Nx3+nHyISmj41R8qM4rphH5/Jy10tz
	LRcd19gS0X83umQsVdtZDLKk+zWMH0EEgilhTiKHdMw0QA1K+/X4HR1LOheB3Wny03T3eJMQkVcWZ
	1p/1K//Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6oxU-0055tD-0B;
	Wed, 07 Jun 2023 08:56:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6oxP-0055qI-1S
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 08:55:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q6oxO-00087g-8W; Wed, 07 Jun 2023 10:55:54 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q6oxO-0002xh-2a; Wed, 07 Jun 2023 10:55:54 +0200
Date: Wed, 7 Jun 2023 10:55:54 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20230607085554.ldozottnbuu4pzmu@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-18-a.fatoum@pengutronix.de>
 <20230531193130.fgmvxm27dh3gbvhh@pengutronix.de>
 <5ac40228-5bfa-982a-af99-cf3aafa6016d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5ac40228-5bfa-982a-af99-cf3aafa6016d@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_015555_487543_7406DA8E 
X-CRM114-Status: GOOD (  29.46  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 17/18] common: partitions: efi: record type UUID in cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-06, Ahmad Fatoum wrote:
> On 31.05.23 21:31, Marco Felsch wrote:
> > Hi Ahmad,
> > 
> > On 23-05-31, Ahmad Fatoum wrote:
> >> We already record DOS partition type in cdev, so let's do the same for
> >> GPT Type UUID. This will be used in a later commit to identify
> >> barebox-state partitions.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  common/partitions.c        | 2 +-
> >>  common/partitions/efi.c    | 1 +
> >>  common/partitions/parser.h | 5 ++++-
> >>  fs/fs.c                    | 2 ++
> >>  include/driver.h           | 6 +++++-
> >>  5 files changed, 13 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/common/partitions.c b/common/partitions.c
> >> index b579559672a0..e3e8a9f3044d 100644
> >> --- a/common/partitions.c
> >> +++ b/common/partitions.c
> >> @@ -50,7 +50,7 @@ static int register_one_partition(struct block_device *blk,
> >>  
> >>  	cdev->flags |= DEVFS_PARTITION_FROM_TABLE;
> >>  
> >> -	cdev->dos_partition_type = part->dos_partition_type;
> >> +	cdev->typeuuid = part->typeuuid;
> > 
> > Even though it's an union I would prefer to make it easier for the
> > reader (without checking the header and noticing that it is an union).
> > So the above code would be:
> > 
> > 	if (blkdev_is_gpt_partitioned(blk))
> > 		cdev->typeuuid = part->typeuuid;
> > 	else if (blkdev_is_mbr_partitioned(blk))
> > 		cdev->dos_partition_type = part->dos_partition_type;
> 
> I don't think this is implementable without a runtime cost. I'd leave
> it as is.

I agree if this code path is called often. Anyway, I have no strong
opinion on this but at least to me it is more clear.

Regards,
  Marco


> 
> > 
> > with 
> > 
> > static inline blkdev_is_gpt_partitioned(struct block_device *blkdev)
> > {
> > 	return cdev_is_gpt_partitioned(&blkdev->cdev);
> > }
> > 
> > Regards,
> >   Marco
> > 
> >>  	strcpy(cdev->partuuid, part->partuuid);
> >>  
> >>  	free(partition_name);
> >> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> >> index df63b82afe24..2756337ab284 100644
> >> --- a/common/partitions/efi.c
> >> +++ b/common/partitions/efi.c
> >> @@ -471,6 +471,7 @@ static void efi_partition(void *buf, struct block_device *blk,
> >>  		pentry->size++;
> >>  		part_set_efi_name(&ptes[i], pentry->name);
> >>  		snprintf(pentry->partuuid, sizeof(pentry->partuuid), "%pUl", &ptes[i].unique_partition_guid);
> >> +		pentry->typeuuid = ptes[i].partition_type_guid;
> >>  		pd->used_entries++;
> >>  	}
> >>  }
> >> diff --git a/common/partitions/parser.h b/common/partitions/parser.h
> >> index f2f692f7903b..9cc41a7573fe 100644
> >> --- a/common/partitions/parser.h
> >> +++ b/common/partitions/parser.h
> >> @@ -17,10 +17,13 @@
> >>  
> >>  struct partition {
> >>  	char name[MAX_PARTITION_NAME];
> >> -	u8 dos_partition_type;
> >>  	char partuuid[MAX_UUID_STR];
> >>  	uint64_t first_sec;
> >>  	uint64_t size;
> >> +	union {
> >> +		u8 dos_partition_type;
> >> +		guid_t typeuuid;
> >> +	};
> >>  };
> >>  
> >>  struct partition_desc {
> >> diff --git a/fs/fs.c b/fs/fs.c
> >> index 9a92e6e251e5..16cc072adfaf 100644
> >> --- a/fs/fs.c
> >> +++ b/fs/fs.c
> >> @@ -110,6 +110,8 @@ void cdev_print(const struct cdev *cdev)
> >>  		nbytes += printf("Filetype: %s\t", file_type_to_string(cdev->filetype));
> >>  	if (cdev_is_mbr_partitioned(cdev->master))
> >>  		nbytes += printf("DOS parttype: 0x%02x\t", cdev->dos_partition_type);
> >> +	else if (cdev_is_gpt_partitioned(cdev->master))
> >> +		nbytes += printf("GPT typeuuid: %pUl\t", &cdev->typeuuid);
> >>  	if (*cdev->partuuid || *cdev->diskuuid)
> >>  		nbytes += printf("%sUUID: %s", cdev_is_partition(cdev) ? "PART" : "DISK",
> >>  				 cdev_is_partition(cdev) ? cdev->partuuid : cdev->diskuuid);
> >> diff --git a/include/driver.h b/include/driver.h
> >> index 5f2eae65466f..6407f7d6ba36 100644
> >> --- a/include/driver.h
> >> +++ b/include/driver.h
> >> @@ -8,6 +8,7 @@
> >>  
> >>  #include <linux/list.h>
> >>  #include <linux/ioport.h>
> >> +#include <linux/uuid.h>
> >>  #include <of.h>
> >>  #include <filetype.h>
> >>  
> >> @@ -536,12 +537,15 @@ struct cdev {
> >>  	unsigned int flags;
> >>  	int open;
> >>  	struct mtd_info *mtd;
> >> -	u8 dos_partition_type;
> >>  	struct cdev *link;
> >>  	struct list_head link_entry, links;
> >>  	struct list_head partition_entry, partitions;
> >>  	struct cdev *master;
> >>  	enum filetype filetype;
> >> +	union {
> >> +		u8 dos_partition_type;
> >> +		guid_t typeuuid;
> >> +	};
> >>  };
> >>  
> >>  int devfs_create(struct cdev *);
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


