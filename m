Delivery-date: Thu, 01 Jun 2023 10:21:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dYS-005XAO-2i
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:21:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dYP-0002Fy-EE
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:21:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JsREQZVQYE7v0S76ggpIan36htsQmamLh5yoE9nmQJI=; b=AnDR1H6OE0hOyF/CgoGbfmxXdL
	y1Cq52Pf40erAZlQTl5PB+X+EHjr810hXHZysnsF3y9fnpFwQsOWsbeRJQYopRQMGdzewZ2Prqtay
	PAfdAq2FW8+e0SDjXFXVUqiIekESoV81hxTnjK8P+b5DEHAlXGcnmdvUfBaVZnVM0oC45VUcsxveg
	9a2o9J8nXhPQWJ4UmiNvl1hmWPjEGjMn9PzbV7yC3OBrWb/BPU/o4y2isvFxHNGSUsxmJ3Znhb9jf
	aU7B/vUGo+HaQjWZ+SZEiKP28fPZyj9M0y1HRf3YAJLSulPHPjLm/qZVtQ9lM+qb5KNnT2AVGmOIi
	JiQn1uEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dXJ-002WZq-1T;
	Thu, 01 Jun 2023 08:19:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dXG-002WZH-21
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:19:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4dXF-0001qk-9d; Thu, 01 Jun 2023 10:19:53 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4dXF-0004Pu-2h; Thu, 01 Jun 2023 10:19:53 +0200
Date: Thu, 1 Jun 2023 10:19:53 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230601081953.dwknjo47ckueiu5m@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-13-a.fatoum@pengutronix.de>
 <20230531173320.24m7mucy6kzhj5wq@pengutronix.de>
 <1b1fc8e7-d74b-2fa6-8e53-c4c256d7e7a5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1b1fc8e7-d74b-2fa6-8e53-c4c256d7e7a5@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_011954_669592_35F94AD5 
X-CRM114-Status: GOOD (  28.25  )
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
Subject: Re: [PATCH 12/18] common: partitions: record whether disk is GPT or
 MBR partitioned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-01, Ahmad Fatoum wrote:
> On 31.05.23 19:33, Marco Felsch wrote:
> > On 23-05-31, Ahmad Fatoum wrote:
> >> Currently, the only way to differentiate between a GPT disk and a MBR
> >> one is to check whether the cdev's device has a guid (=> GPT) or a
> >> nt_signature (=> MBR) device parameter. We already have a flag parameter
> >> though, so let's record this info there for easy retrieval.
> >>
> >> We intentionally don't use the struct cdev::filetype member, because
> >> we don't want to change behavior of file_detect_type().
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  common/partitions/dos.c |  2 ++
> >>  common/partitions/efi.c |  2 ++
> >>  fs/fs.c                 |  4 ++++
> >>  include/driver.h        | 20 +++++++++++++++++---
> >>  4 files changed, 25 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
> >> index ad60c0b27b46..7472824b00b9 100644
> >> --- a/common/partitions/dos.c
> >> +++ b/common/partitions/dos.c
> >> @@ -185,6 +185,8 @@ static void dos_partition(void *buf, struct block_device *blk,
> >>  	if (signature)
> >>  		sprintf(blk->cdev.diskuuid, "%08x", signature);
> >>  
> >> +	blk->cdev.flags |= DEVFS_IS_MBR_PARTITIONED;
> >> +
> >>  	table = (struct partition_entry *)&buffer[446];
> >>  
> >>  	for (i = 0; i < 4; i++) {
> >> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> >> index 780a8695e8a8..df63b82afe24 100644
> >> --- a/common/partitions/efi.c
> >> +++ b/common/partitions/efi.c
> >> @@ -449,6 +449,8 @@ static void efi_partition(void *buf, struct block_device *blk,
> >>  	snprintf(blk->cdev.diskuuid, sizeof(blk->cdev.diskuuid), "%pUl", &gpt->disk_guid);
> >>  	dev_add_param_string_fixed(blk->dev, "guid", blk->cdev.diskuuid);
> >>  
> >> +	blk->cdev.flags |= DEVFS_IS_GPT_PARTITIONED;
> >> +
> >>  	nb_part = le32_to_cpu(gpt->num_partition_entries);
> >>  
> >>  	if (nb_part > MAX_PARTITION) {
> >> diff --git a/fs/fs.c b/fs/fs.c
> >> index 9d8aab268ca4..2d2d327c5fbc 100644
> >> --- a/fs/fs.c
> >> +++ b/fs/fs.c
> >> @@ -94,6 +94,10 @@ void cdev_print(const struct cdev *cdev)
> >>  			printf(" table-partition");
> >>  		if (cdev->flags & DEVFS_IS_MCI_MAIN_PART_DEV)
> >>  			printf(" mci-main-partition");
> >> +		if (cdev->flags & DEVFS_IS_GPT_PARTITIONED)
> >> +			printf(" gpt-partitioned");
> >> +		if (cdev->flags & DEVFS_IS_MBR_PARTITIONED)
> >> +			printf(" mbr-partitioned");
> >>  		if (cdev->mtd)
> >>  			printf(" mtd");
> >>  		printf(" )");
> >> diff --git a/include/driver.h b/include/driver.h
> >> index 118d2adb6750..5f2eae65466f 100644
> >> --- a/include/driver.h
> >> +++ b/include/driver.h
> >> @@ -584,9 +584,23 @@ extern struct list_head cdev_list;
> >>  #define DEVFS_PARTITION_FIXED		(1U << 0)
> >>  #define DEVFS_PARTITION_READONLY	(1U << 1)
> >>  #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
> >> -#define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 4)
> >> -#define DEVFS_PARTITION_FROM_OF		(1U << 5)
> >> -#define DEVFS_PARTITION_FROM_TABLE	(1U << 6)
> >> +#define DEVFS_PARTITION_FROM_OF		(1U << 4)
> >> +#define DEVFS_PARTITION_FROM_TABLE	(1U << 5)
> >> +#define DEVFS_IS_GPT_PARTITIONED	(1U << 6)
> >> +#define DEVFS_IS_MBR_PARTITIONED	(1U << 7)
> >> +#define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 8)
> > 
> > Why do you reorder the bits here again?
> 
> I wanted the partition bits to be together.
> 
> >> +
> >> +static inline bool cdev_is_gpt_partitioned(const struct cdev *master)
> >> +{
> >> +	return master && (master->flags & DEVFS_IS_GPT_PARTITIONED)
> >> +		== DEVFS_IS_GPT_PARTITIONED;
> > 
> > Why not just: 'return !!(master->flags & DEVFS_IS_GPT_PARTITIONED)' ?
> 
> Left over from when this was more than one bit. I will change to:
> 
>   return master && (master->flags & DEVFS_IS_GPT_PARTITIONED)
> 
> I want to keep the NULL check, as we only set this for the master device.

By 'as we only set this for the master device' you mean the flags right?
We don't expect the 'struct cdev*' parameter to be NULL.

Regards,
  Marco

> 
> Cheers,
> Ahmad
> 
> 
> > 
> > Regards,
> >   Marco
> > 
> >> +}
> >> +
> >> +static inline bool cdev_is_mbr_partitioned(const struct cdev *master)
> >> +{
> >> +	return master && (master->flags & DEVFS_IS_MBR_PARTITIONED)
> >> +		== DEVFS_IS_MBR_PARTITIONED;
> >> +}
> >>  
> >>  struct cdev *devfs_add_partition(const char *devname, loff_t offset,
> >>  		loff_t size, unsigned int flags, const char *name);
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


