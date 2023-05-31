Delivery-date: Wed, 31 May 2023 20:56:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Qza-004dse-CD
	for lore@lore.pengutronix.de; Wed, 31 May 2023 20:56:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4QzY-0008Ju-0b
	for lore@pengutronix.de; Wed, 31 May 2023 20:56:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BNiFZWafEU/RrSl9X3fK82hV8cDS5NnDpcDJjmleCBQ=; b=ZmDgAmaPC7vGF12SDo2jKQGTUe
	jMEZ7LVLTCXiWo5jGO6JZ9wwxJ7KDkju5rhWsqZakTEE6cQqJjBposxOrcwTrH/x2dGq1GDEZz+Lm
	F4yEh9LfmXJOXB5E/XVW29vskZvemsKSTPyBS0hpulQnA9kieZrA4et78lkpvihVto7BO6pSOZ2Wt
	FRKzD9m4LwWDCVW+0zgGUC4rpVo8MWDkBgrEdovc6KJFjfoKvsP3QyuOmmwMWkyT1illzF2YT4+J4
	2wGfS7yHMe3sdBWVBMDlsbjixOv/7aRQkMoqtGLDEd1bdnl3EBmGUc19Y68XSurjTd1OZniy6/rlL
	vIMgNq6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4QyH-000rpZ-0q;
	Wed, 31 May 2023 18:54:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4QyE-000ro8-0M
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 18:54:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Qy2-0007rs-Mo; Wed, 31 May 2023 20:54:42 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Qy2-00008F-FY; Wed, 31 May 2023 20:54:42 +0200
Date: Wed, 31 May 2023 20:54:42 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230531185442.5hvjrknlmecbcm32@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-17-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-17-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_115454_151258_1DA49A12 
X-CRM114-Status: GOOD (  18.90  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 16/18] cdev: use cdev::dos_partition_type only if
 cdev_is_mbr_partitioned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-05-31, Ahmad Fatoum wrote:
> dos_partition_type == 0 can mean that either a partition is not
> a MBR partition or that it indeed has a partition type of 0x00.
> 
> In preparation for using that field in a union, explicitly check if we
> have a MBR partition.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/blspec.c | 2 +-
>  fs/fs.c         | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/common/blspec.c b/common/blspec.c
> index e95a8dba8d76..8c7970da8915 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -729,7 +729,7 @@ int blspec_scan_device(struct bootentries *bootentries, struct device *dev)
>  		 * partition with the MBR type id of 0xEA already exists it
>  		 * should be used as $BOOT
>  		 */
> -		if (cdev->dos_partition_type == 0xea) {
> +		if (cdev_is_mbr_partitioned(cdev->master) && cdev->dos_partition_type == 0xea) {

Since you already various helpers to drop priv direct access, what
about:

		if (cdev_dos_partition_type(cdev) == 0xea)

Within the helper you can check for the cdev_is_mbr_partitioned().

?

Regards,
  Marco

>  			ret = blspec_scan_cdev(bootentries, cdev);
>  			if (ret == 0)
>  				ret = -ENOENT;
> diff --git a/fs/fs.c b/fs/fs.c
> index 2d2d327c5fbc..9a92e6e251e5 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -108,7 +108,7 @@ void cdev_print(const struct cdev *cdev)
>  
>  	if (cdev->filetype)
>  		nbytes += printf("Filetype: %s\t", file_type_to_string(cdev->filetype));
> -	if (cdev->dos_partition_type)
> +	if (cdev_is_mbr_partitioned(cdev->master))
>  		nbytes += printf("DOS parttype: 0x%02x\t", cdev->dos_partition_type);
>  	if (*cdev->partuuid || *cdev->diskuuid)
>  		nbytes += printf("%sUUID: %s", cdev_is_partition(cdev) ? "PART" : "DISK",
> -- 
> 2.39.2
> 
> 
> 


