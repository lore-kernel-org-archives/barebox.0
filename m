Delivery-date: Fri, 14 Jun 2024 09:50:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI1hi-005ohL-0C
	for lore@lore.pengutronix.de;
	Fri, 14 Jun 2024 09:50:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI1hh-0008VW-Av
	for lore@pengutronix.de; Fri, 14 Jun 2024 09:50:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YWqk/zHjDBtz5TM0LUENgt3bBL1nG0n6iQSJc3lvIb4=; b=WFmnQz6cCcmGiX7CsHN6eT28lF
	PvnGybhd8ViR1OyI5R3hAASTH1ik4KzUG9duhlEdSYO0EWGHWYoHBmXfEwZ/SqnEhT3ISV/9rALMj
	e/aKyZAHe8kRurRI0EZGovmzGg170PlShNj5kSPQVwqQHwM8DiZGdKVQb215gycDNdO2wjemWYvjj
	u3RfW00pm7SfA5+J/VRnL1unix7j4S6xzvCHnN0gUGMI2ZWOlMALmmc05ccZVKehgXKS/foSTm3HB
	7cll5hN5zQ3GIbnhzSvKRHHxSutbF/2fxU/OREgT7fdWRn+PtfmrAG6vfKKV/Id0sCH8Fo1uKG7Ju
	GnK5zObg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI1hJ-00000001qUg-0buo;
	Fri, 14 Jun 2024 07:50:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI1hF-00000001qU8-16p1
	for barebox@lists.infradead.org;
	Fri, 14 Jun 2024 07:50:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sI1hE-0008S3-0j; Fri, 14 Jun 2024 09:50:04 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sI1hD-002DYE-KH; Fri, 14 Jun 2024 09:50:03 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sI1hD-00AMYl-1k;
	Fri, 14 Jun 2024 09:50:03 +0200
Date: Fri, 14 Jun 2024 09:50:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zmv2KyQq3ACxksc_@pengutronix.de>
References: <20240613130944.264396-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240613130944.264396-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_005005_329780_95B30327 
X-CRM114-Status: GOOD (  26.26  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/9] i.MX: HABv4: fix SRK_LOCK for i.MX8M devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 13, 2024 at 03:09:36PM +0200, Marco Felsch wrote:
> All current known i.MX8M devices: i.MX8MQ, i.MX8MP, i.MX8MN, i.MX8MM use
> an other fuse to lock the SRK hash. Fix this by refactoring

This looks a bit inaccurate or misleading. What you want to say is that
all known i.MX8M devices use the same fuse to lock the SRK hash, but
it's another one than used on i.MX6.

Sascha

> imx_hab_write_srk_hash_ocotp() and make the lock fusing device specific.
> 
> Fixes: 6c4d5bb5acfe ("i.MX: HABv4: implement interface for i.MX8MQ")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/hab/hab.c                | 34 +++++++++++++++++++++++++++++---
>  include/mach/imx/ocotp-fusemap.h |  1 +
>  2 files changed, 32 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
> index ed091058d8fb..28a091841a69 100644
> --- a/drivers/hab/hab.c
> +++ b/drivers/hab/hab.c
> @@ -128,7 +128,7 @@ static int imx_hab_read_srk_hash_ocotp(u8 *__srk)
>  	return 0;
>  }
>  
> -static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk, unsigned flags)
> +static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk)
>  {
>  	u32 *newsrk = (u32 *)__newsrk;
>  	int ret, i;
> @@ -139,6 +139,17 @@ static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk, unsigned flags)
>  			return ret;
>  	}
>  
> +	return 0;
> +}
> +
> +static int imx6_hab_write_srk_hash_ocotp(const u8 *newsrk, unsigned flags)
> +{
> +	int ret;
> +
> +	ret = imx_hab_write_srk_hash_ocotp(newsrk);
> +	if (ret)
> +		return ret;
> +
>  	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
>  		ret = imx_ocotp_write_field(OCOTP_SRK_LOCK, 1);
>  		if (ret < 0)
> @@ -148,6 +159,23 @@ static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk, unsigned flags)
>  	return 0;
>  }
>  
> +static int imx8m_hab_write_srk_hash_ocotp(const u8 *newsrk, unsigned flags)
> +{
> +	int ret;
> +
> +	ret = imx_hab_write_srk_hash_ocotp(newsrk);
> +	if (ret)
> +		return ret;
> +
> +	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
> +		ret = imx_ocotp_write_field(MX8M_OCOTP_SRK_LOCK, 1);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static int imx_hab_permanent_write_enable_ocotp(int enable)
>  {
>  	return imx_ocotp_permanent_write(enable);
> @@ -222,7 +250,7 @@ static struct imx_hab_ops imx_hab_ops_iim = {
>  };
>  
>  static struct imx_hab_ops imx6_hab_ops_ocotp = {
> -	.write_srk_hash = imx_hab_write_srk_hash_ocotp,
> +	.write_srk_hash = imx6_hab_write_srk_hash_ocotp,
>  	.read_srk_hash =  imx_hab_read_srk_hash_ocotp,
>  	.lockdown_device = imx6_hab_lockdown_device_ocotp,
>  	.device_locked_down = imx6_hab_device_locked_down_ocotp,
> @@ -231,7 +259,7 @@ static struct imx_hab_ops imx6_hab_ops_ocotp = {
>  };
>  
>  static struct imx_hab_ops imx8m_hab_ops_ocotp = {
> -	.write_srk_hash = imx_hab_write_srk_hash_ocotp,
> +	.write_srk_hash = imx8m_hab_write_srk_hash_ocotp,
>  	.read_srk_hash =  imx_hab_read_srk_hash_ocotp,
>  	.lockdown_device = imx8m_hab_lockdown_device_ocotp,
>  	.device_locked_down = imx8m_hab_device_locked_down_ocotp,
> diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
> index 823273895502..c4f94e61e8f8 100644
> --- a/include/mach/imx/ocotp-fusemap.h
> +++ b/include/mach/imx/ocotp-fusemap.h
> @@ -54,6 +54,7 @@
>  #define OCOTP_GP2			(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
>  #define OCOTP_PAD_SETTINGS		(OCOTP_WORD(0x6d0) | OCOTP_BIT(0) | OCOTP_WIDTH(6))
>  /* i.MX8M moved the security related fuses */
> +#define MX8M_OCOTP_SRK_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(9) | OCOTP_WIDTH(1))
>  #define MX8M_OCOTP_SEC_CONFIG_1		(OCOTP_WORD(0x470) | OCOTP_BIT(25) | OCOTP_WIDTH(1))
>  #define MX8MQ_OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x470) | OCOTP_BIT(27) | OCOTP_WIDTH(1))
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


