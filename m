Delivery-date: Tue, 01 Jul 2025 09:58:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWVsX-00CtXh-19
	for lore@lore.pengutronix.de;
	Tue, 01 Jul 2025 09:58:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWVsW-0003sr-RR
	for lore@pengutronix.de; Tue, 01 Jul 2025 09:58:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gvSU5hauOsog4qHobSF/ySaYjdJu7YN0wn7BVlNpDAg=; b=mHaWo0X302tKxzQoVFsyVLo7b/
	AX5o24adtR5tMPq1JuWNbBmZNC5QuQB1P5gfSmba6QDH2vwNqZy+wuOMoUSzYJ+ziJxMoYdd0mlTJ
	0M+zmmrD9Klq+eTZw27GHxoDC3M4mUNUdeEx3vgDrw1cZUUAR/A0D27ghrHOEWNfi1vDQzJ2wBWth
	a4h7E/T3T4rzM7QKy5fXFQYO/1AMoT27y2Y0SKo2WKUrzXvodc5Nom9PGlzq+czX9Ig6WEMg16uXb
	tqx2cdG9sOWN0E3ByPg79iDbi0L7oI6iIZBJDWpJS5FYFnmmnQo1yg3XnMRYBrcjDvi0t5oc+h7Ix
	J7lMxPTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWVs8-00000004LXA-2il0;
	Tue, 01 Jul 2025 07:57:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWVmp-00000004KI5-47mi
	for barebox@lists.infradead.org;
	Tue, 01 Jul 2025 07:52:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWVmm-0007gj-UW; Tue, 01 Jul 2025 09:52:12 +0200
Message-ID: <4104b6c6-c2ce-48b0-bdeb-7bb99fabcb1c@pengutronix.de>
Date: Tue, 1 Jul 2025 09:52:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250701071637.390845-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250701071637.390845-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_005216_029893_CC05CBC9 
X-CRM114-Status: GOOD (  14.23  )
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
Subject: Re: [PATCH] common: drop duplicate inclusion of common/boards/Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 7/1/25 09:16, Sascha Hauer wrote:
> Commit b3d50a2b40 ("common: factor out debugging options into separate
> files") accidently added a second inclusion of common/boards/Kconfig.
> Drop the duplicate.
> 
> Fixes: b3d50a2b40 ("common: factor out debugging options into separate files")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 0651f955dc..df5709faf9 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1457,7 +1457,6 @@ endif
>  endmenu
>  
>  source "common/Kconfig.debug"
> -source "common/boards/Kconfig"
>  
>  config DDR_SPD
>  	bool

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



