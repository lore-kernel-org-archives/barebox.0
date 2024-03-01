Delivery-date: Fri, 01 Mar 2024 09:16:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfy43-001JgI-2H
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 09:16:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfy43-0006iV-2z
	for lore@pengutronix.de; Fri, 01 Mar 2024 09:16:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8DtwEkeeOYVfxbLBBP1NICOLyvK5X0f5jAJobw/p+oc=; b=0Adv6woWx+cshLvC32uBkRWAUW
	iqSURIunSsaR2WsiIMBW6EpLgXXfSpTD305CfUugfscD6fwO4bdfTPC3IF4dM5uw1uo90YTqK6MKC
	18s6Oz2M6zKhtBUiOiAxVPoc2+CLUvr9mLt9EjuEX2A+8Gk8QaAtslyWnsYpG/EI9v7gF6ZgrLqlP
	WGfAZqk5kERbQ8xL6vHozf4ERtVvC5dyOTUJHVK3CrVpPofQSdYY2LSxbRarkZ/K9hGUMSrYuT5fu
	NFdsLhWIIkO2QNa9pCe2cQfETtB6IHl2KyeftJE6qgwkUSEwFhUc80g5ApoCsyw/YcPepNdNEkNsm
	W7QKNrGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfy3T-0000000GrP8-3B07;
	Fri, 01 Mar 2024 08:15:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfy3R-0000000GrOW-1nEA
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 08:15:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfy3Q-0006dW-28; Fri, 01 Mar 2024 09:15:40 +0100
Message-ID: <63cf1867-8eb3-4902-8f07-763d3fed085f@pengutronix.de>
Date: Fri, 1 Mar 2024 09:15:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240229071825.1624411-1-s.hauer@pengutronix.de>
 <20240229071825.1624411-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240229071825.1624411-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_001541_498309_325343B3 
X-CRM114-Status: GOOD (  19.60  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] partitions: dos: change first partition number
 from 1 to 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 29.02.24 08:18, Sascha Hauer wrote:
> Traditionally barebox starts partition numbers at 0. This was changed
> in 8f48e6366c to start at 1. This was done to make the parted numbering
> consistent to the Linux tool. This breaks boot scripts though which
> assume 0 to be the first partition, so change it back.
> 
> Fixes: 8f48e6366c ("partitions: dos: implement partition manipulation support")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> 
> Notes:
>     Changes since v1:
>     
>     - fix partuuid number passed to Linux
> 
>  common/partitions/dos.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
> index 47b5764124..1b0051f978 100644
> --- a/common/partitions/dos.c
> +++ b/common/partitions/dos.c
> @@ -127,7 +127,7 @@ static void dos_extended_partition(struct block_device *blk, struct dos_partitio
>  	uint8_t *buf = malloc(SECTOR_SIZE);
>  	uint32_t ebr_sector = partition->first_sec;
>  	struct partition_entry *table = (struct partition_entry *)&buf[0x1be];
> -	unsigned partno = 5;
> +	unsigned partno = 4;
>  	struct dos_partition *dpart;
>  	struct partition *pentry;
>  
> @@ -170,7 +170,7 @@ static void dos_extended_partition(struct block_device *blk, struct dos_partitio
>  		pentry->size = get_unaligned_le32(&table[0].partition_size);
>  		pentry->dos_partition_type = table[0].type;
>  		pentry->num = partno;
> -		sprintf(pentry->partuuid, "%08x-%02u", signature, partno);
> +		sprintf(pentry->partuuid, "%08x-%02u", signature, partno + 1);
>  
>  		list_add_tail(&pentry->list, &dpd->pd.partitions);
>  
> @@ -237,7 +237,7 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
>  		pentry->first_sec = first_sec;
>  		pentry->size = get_unaligned_le32(&table[i].partition_size);
>  		pentry->dos_partition_type = table[i].type;
> -		pentry->num = i + 1;
> +		pentry->num = i;
>  
>  		sprintf(pentry->partuuid, "%08x-%02d", signature, i + 1);
>  		dpd->signature = signature;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



