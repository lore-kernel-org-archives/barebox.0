Delivery-date: Fri, 12 Dec 2025 09:37:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTyeA-00AbvC-0h
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 09:37:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTye9-0002CK-MN
	for lore@pengutronix.de; Fri, 12 Dec 2025 09:37:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zt385JEBRMdUFDLGyhKJ63FSXxv+Rn/vfmeR+T01rs4=; b=zDYUkB7E5PoiZqy4/fK/1vYWeo
	rqAcO2talrhdbHgXovPNz1xviZMMUnHIvDILzY2Ys+nli2tKWuB18VPTN/thzen9TbRyQkhMTqL3f
	IB9NB0TH0rPAdQ5qPpobcHXKz2NHB9i66Y4k9AU+QEWxzGiOb7qstzgU5QQbAV/eEa+ijy/WveSy2
	PRg7wvInoZH1w2Rat5wXHfJh9fJVGVhgZmdNTWIF1b8sz16RxdgsEyOnHZnUHS3eOmZK32+ZADzwl
	8AVRYM4pgJ59UPAAxCEqlpWlQ40q9RKFfRSDLR1PMGxp+gFjKoYa+JM8ZEg+HKP7PGoQX6AYTXGOD
	q0R59ACg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTydl-00000000HEM-1CQj;
	Fri, 12 Dec 2025 08:36:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTydj-00000000HDy-11Tm
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 08:36:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vTydh-00027Z-KM; Fri, 12 Dec 2025 09:36:37 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vTydh-005GXx-1R;
	Fri, 12 Dec 2025 09:36:37 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vTydh-003EGu-19;
	Fri, 12 Dec 2025 09:36:37 +0100
Date: Fri, 12 Dec 2025 09:36:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aTvUFaPlRf6Isx-q@pengutronix.de>
References: <20251211210049.3170349-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211210049.3170349-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_003639_280112_30D04ED9 
X-CRM114-Status: GOOD (  22.03  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] cdev-alias: support referencing diskuuid without
 child partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Apart from the comments I made, for this series:

Reviewed-by: Sascha Hauer <s.hauer@pengutrinix.de>

On Thu, Dec 11, 2025 at 10:00:43PM +0100, Ahmad Fatoum wrote:
> This is already the case with other cdev aliases, so support this for
> symmetry.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/cdev-alias.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/common/cdev-alias.c b/common/cdev-alias.c
> index e5a059ad7f4d..1878553615d2 100644
> --- a/common/cdev-alias.c
> +++ b/common/cdev-alias.c
> @@ -57,9 +57,11 @@ static int cdev_alias_resolve_diskuuid(struct cdev_alias_res *cdev_alias_res,
>  		if (strcasecmp(cdev->diskuuid, uuid))
>  			continue;
>  
> -		cdev = cdev_find_partition(cdev, arg);
> -		if (!cdev)
> -			return -ENODEV;
> +		if (arg) {
> +			cdev = cdev_find_partition(cdev, arg);
> +			if (!cdev)
> +				return -ENODEV;
> +		}
>  
>  		return fn(cdev, data);
>  	}
> -- 
> 2.47.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


