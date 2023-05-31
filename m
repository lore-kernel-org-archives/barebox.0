Delivery-date: Wed, 31 May 2023 17:38:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NuB-004Rfq-5A
	for lore@lore.pengutronix.de; Wed, 31 May 2023 17:38:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Nu8-00088p-Nh
	for lore@pengutronix.de; Wed, 31 May 2023 17:38:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kofhpYDSPYARsReXh4iDGyVE1eY5F9Nl+yywEEYC334=; b=1zxPdQyBFznAvtVEJDf4BzXeDZ
	OapXcgPvGTiGPfUd2cK56oaHHLuVqGlZ1Y7YS6hjy1Eila0HE3inxJGOSAcRc9Nqd7s9bWKm9Vzrv
	j7VZIkg7SFMQhpW9uqgw5kh5NW6Rrb3vQwzwaIbQbFjlvnysORhC6QHFwG6mrzUEfJhoy1dBLChoI
	YdENpF2tIKt44Q4OjL6qQutt6t6HQbhjJF2hzfNHjPuUPH1aXhIppTvtMgJ1dBmU1gPtEKYADZNt6
	Jk+LJROFyn0W1p27O0tn/VMjJkvBwUocUB4qJqmWcyT8nBPWn7ULwsWz5xSFkZjo+Tf3bgRcbAGvw
	H653fwpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Nt1-000Jdm-26;
	Wed, 31 May 2023 15:37:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Nsz-000Jcy-0H
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 15:37:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Nsw-00083W-7I; Wed, 31 May 2023 17:37:14 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Nsv-0008Ij-Vi; Wed, 31 May 2023 17:37:13 +0200
Date: Wed, 31 May 2023 17:37:13 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230531153713.5hghv7d43ptvarco@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-4-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_083717_143767_F543625D 
X-CRM114-Status: GOOD (  13.30  )
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
Subject: Re: [PATCH 03/18] cdev: fix for_each_cdev macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-05-31, Ahmad Fatoum wrote:
> The macro parameter 'c' was never used, instead hardcoding cdev.
> It worked so far anyway, because all users of for_each_cdev used cdev
> as the argument. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  include/driver.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/driver.h b/include/driver.h
> index d33e0fcbccc9..e1ee3dc2dd7c 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -566,7 +566,7 @@ int cdev_truncate(struct cdev*, size_t size);
>  loff_t cdev_unallocated_space(struct cdev *cdev);
>  
>  extern struct list_head cdev_list;
> -#define for_each_cdev(c) \
> +#define for_each_cdev(cdev) \
>  	list_for_each_entry(cdev, &cdev_list, list)
>  
>  #define DEVFS_PARTITION_FIXED		(1U << 0)
> -- 
> 2.39.2
> 
> 
> 


