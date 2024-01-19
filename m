Delivery-date: Fri, 19 Jan 2024 16:12:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQqXO-007CQh-2E
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 16:12:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQqXP-0007ZL-Cq
	for lore@pengutronix.de; Fri, 19 Jan 2024 16:12:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6fanUVo+qvbaPqYrw8xvFJAUPq34l6zF9+puvBurRWs=; b=OR5e5Ctv0y0xvKMfZQp2Ksh/2r
	sp6k3GKNZwgoK5SX4h0cE14hkYrDnDETIJ1zOdk1pWIHiz8kd9vCJgqZq0a+WF9BiclAvKVv5cwZ8
	0olHIwqCwRQhkZIV53uMi9A0AJGwZlo3pGFKXwKr3fYZF1G8WhDnc2M52SqEz1sp75Zxa4cjmWaWc
	1k4Qez3SdDaWDCSm5yAArb5h0qu9BhUIRFfJhcOIyK8tHNU4AfB6wnE+9uz2eyH6DVzidyA+h0bMz
	5uMMFAnjhuPjakGxSqcPDvGuCCQ8OSA82zHm3pQSzjIScGRZaq4qvQ8E2DvrDZhyPIwOLbacjnYnF
	/OLJzZOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQqWG-005xvP-1r;
	Fri, 19 Jan 2024 15:10:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQqWE-005xv0-14
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 15:10:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqWD-0007Q0-06; Fri, 19 Jan 2024 16:10:53 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqWC-000wqp-K4; Fri, 19 Jan 2024 16:10:52 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqWC-000kGH-Hq; Fri, 19 Jan 2024 16:10:52 +0100
Date: Fri, 19 Jan 2024 16:10:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240119151052.mtiudwosztxliszk@pengutronix.de>
References: <20240119142413.3206832-1-s.hauer@pengutronix.de>
 <20240119142413.3206832-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240119142413.3206832-2-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_071054_368622_6A85C127 
X-CRM114-Status: GOOD (  13.47  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/7] firmware: add missing FIRMWARE_IMX8MQ_OPTEE symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-19, Sascha Hauer wrote:
> CONFIG_FIRMWARE_IMX8MQ_OPTEE is used but not defined in Kconfig. Add the
> missing symbol like existing for the other i.MX8M variants.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  firmware/Kconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/firmware/Kconfig b/firmware/Kconfig
> index 38fbf85555..8babdb85a8 100644
> --- a/firmware/Kconfig
> +++ b/firmware/Kconfig
> @@ -53,6 +53,10 @@ config FIRMWARE_IMX8MP_OPTEE
>  	bool "install OP-TEE on i.MX8MP boards"
>  	depends on FIRMWARE_IMX8MP_ATF && PBL_OPTEE
>  
> +config FIRMWARE_IMX8MQ_OPTEE
> +	bool "install OP-TEE on i.MX8MQ boards"
> +	depends on FIRMWARE_IMX8MQ_ATF && PBL_OPTEE
> +
>  config FIRMWARE_CCBV2_OPTEE
>  	bool
>  	depends on MACH_WEBASTO_CCBV2 && PBL_OPTEE
> -- 
> 2.39.2
> 
> 
> 


