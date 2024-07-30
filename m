Delivery-date: Tue, 30 Jul 2024 10:56:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYier-004PVc-0p
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 10:56:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYieq-0000w8-Kw
	for lore@pengutronix.de; Tue, 30 Jul 2024 10:56:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vsqP9TiO2NJ7jlLLE+E41FnoCXlA65Yrtwtu6deMLL8=; b=m3sibXJuupaCC/FU2SCTWpAgZd
	yEXCkgF571W52qzg4qZ4TL/qa5J6tSS7CRb+nhtP9uOXBgto3y4X8H5ReDhVSatp2W7v7dVKLL4ux
	lz+KsBycRUlQDM6/8B2DCl50tXlZUhrGUEccD3z4s/mdWClDiuPMeMKB4SDJfBbuwdskNYgge+0eY
	pGc/Z8cd8S7vas1V3fgo39GmQTSJ9+0Y4iiDzb7C5+QDuXE6ZiyXCEO8rmOlaeyPzsJbryNY8FFtZ
	VKAwHbsdrtknim0PPzXscl7jC0iK+QqWCVNXubpN4zcTZoED8cdtrprVpsXZCSgQZkhaj0Nqwaudi
	M94uIQYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYieL-0000000EOQy-29fD;
	Tue, 30 Jul 2024 08:56:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYieI-0000000EOQH-0qpT
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 08:56:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sYieG-0000si-Du; Tue, 30 Jul 2024 10:56:00 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sYieG-003FIK-0w; Tue, 30 Jul 2024 10:56:00 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sYieF-00954f-30;
	Tue, 30 Jul 2024 10:55:59 +0200
Date: Tue, 30 Jul 2024 10:55:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zqiqn66-dv3m_MOB@pengutronix.de>
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240730071929.2016537-4-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_015602_264405_9B44E457 
X-CRM114-Status: GOOD (  23.74  )
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
Subject: Re: [PATCH 03/10] block: allow block devices to implement the cdev
 erase operation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jul 30, 2024 at 09:19:22AM +0200, Ahmad Fatoum wrote:
> We mainly implement cdev erase for raw flashes. Many block devices, like
> NVMe, SSD or SD/MMC are also flash-based and expose a mechanism or
> multiple to trigger an erase on hardware or flash translation layer
> level without an accompanied write.
> 
> To make it possible to use this functionality elsewhere in barebox,
> let's have the common block device layer pass through the erase
> operation, so it may be implemented in a device-specific manner.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/block.c  | 43 +++++++++++++++++++++++++++++++++++++++++++
>  include/block.h |  1 +
>  2 files changed, 44 insertions(+)
> 
> diff --git a/common/block.c b/common/block.c
> index f55da775a797..b43fcbe6927b 100644
> --- a/common/block.c
> +++ b/common/block.c
> @@ -380,10 +380,45 @@ static int block_op_discard_range(struct cdev *cdev, loff_t count, loff_t offset
>  	return 0;
>  }
>  
> +static bool region_overlap(loff_t starta, loff_t lena,
> +                           loff_t startb, loff_t lenb)
> +{
> +        if (starta + lena <= startb)
> +                return 0;
> +        if (startb + lenb <= starta)
> +                return 0;
> +        return 1;
> +}

We already have this function in fs/devfs-core.c. Time to export it?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


