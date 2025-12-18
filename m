Delivery-date: Thu, 18 Dec 2025 20:23:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWJbS-00CwXr-33
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 20:23:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWJbS-0001XI-Ai
	for lore@pengutronix.de; Thu, 18 Dec 2025 20:23:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9SDzTmwMxlcPvHh+4aW3aos0IseSbyeMA3NLVXA9DA4=; b=UF9loEK8XNtWVdbXCC8W52xTgr
	CRoBpnpXF9m2qYi+BAW3dYZe7T36VlVkAn1kQNwUulHHg4Fh8vD478ZQ1H1QXS+YqXnm+tlj54e1O
	pCGcojCfw6z1ZRRu5oWXQGwc8akEWpNi6LS055i5UdfPSjSdWm+N8C0hCCjMNgC0e+dCwQINlTRmv
	pch1OSqynvRdwWoT1K//A+zkXr8w+ufjfZla/4xh3nm77gtto82X/wyvumZRbaQwpebmKsAj+rU3E
	WhOe2/DdnRmPIUmxRU8wM1Ion9K/2YjMyz8XuJfNIslfhC9CPWY1cKUg2BdNXu9SmxVqFOzszl5bY
	GaaevxLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWJb0-000000094yR-0Xue;
	Thu, 18 Dec 2025 19:23:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWJax-000000094y2-10FD
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 19:23:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWJav-0001Qd-JO; Thu, 18 Dec 2025 20:23:25 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWJav-006KxD-1K;
	Thu, 18 Dec 2025 20:23:25 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWJav-00Ee6p-13;
	Thu, 18 Dec 2025 20:23:25 +0100
Date: Thu, 18 Dec 2025 20:23:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20251218192325.rlvwnhkzt5op4yhu@pengutronix.de>
References: <20251218-v2025-11-0-topic-imx6-field-return-v1-0-3781143198d6@pengutronix.de>
 <20251218-v2025-11-0-topic-imx6-field-return-v1-3-3781143198d6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218-v2025-11-0-topic-imx6-field-return-v1-3-3781143198d6@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_112327_305910_F176F998 
X-CRM114-Status: GOOD (  19.90  )
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
Subject: Re: [PATCH 3/4] i.MX: HAB: extend field_return support to imx6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-12-18, Fabian Pflug wrote:
> Extend the helper for imx_fuse_burn with support for i.MX6 devices.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  drivers/hab/hab.c                | 10 ++++++----
>  include/mach/imx/ocotp-fusemap.h |  1 +
>  2 files changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
> index 1c747e8a3e..281645f79e 100644
> --- a/drivers/hab/hab.c
> +++ b/drivers/hab/hab.c
> @@ -262,7 +262,7 @@ static int imx8m_hab_revoke_key_ocotp(unsigned key_idx)
>   */
>  #define MX8MP_FIELD_RETURN_PATTERN	0x28001401
>  
> -static int imx8m_hab_field_return_ocotp(void)
> +static int imx_hab_field_return_ocotp(void)
>  {
>  	int ret;
>  
> @@ -274,7 +274,9 @@ static int imx8m_hab_field_return_ocotp(void)
>  	if (ret == 1)
>  		return -EINVAL;
>  
> -	if (cpu_is_mx8mp())
> +	if (cpu_is_mx6())

The driver has hooks to abstract the different i.MX HAB SoC families.
Therefore please add a imx6_hab_field_return_ocotp() hook.

Regards,
  Marco

> +		ret = imx_ocotp_write_field(MX6_OCOTP_FIELD_RETURN, 1);
> +	else if (cpu_is_mx8mp())
>  		ret = imx_ocotp_write_field(MX8MP_OCOTP_FIELD_RETURN,
>  					    MX8MP_FIELD_RETURN_PATTERN);
>  	else
> @@ -282,7 +284,6 @@ static int imx8m_hab_field_return_ocotp(void)
>  
>  	return ret;
>  }
> -
>  struct imx_hab_ops {
>  	int (*write_srk_hash)(const u8 *srk, unsigned flags);
>  	int (*read_srk_hash)(u8 *srk);
> @@ -310,6 +311,7 @@ static struct imx_hab_ops imx6_hab_ops_ocotp = {
>  	.device_locked_down = imx6_hab_device_locked_down_ocotp,
>  	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
>  	.print_status = imx6_hab_print_status,
> +	.field_return = imx_hab_field_return_ocotp,
>  };
>  
>  static struct imx_hab_ops imx8m_hab_ops_ocotp = {
> @@ -320,7 +322,7 @@ static struct imx_hab_ops imx8m_hab_ops_ocotp = {
>  	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
>  	.print_status = imx8m_hab_print_status,
>  	.revoke_key = imx8m_hab_revoke_key_ocotp,
> -	.field_return = imx8m_hab_field_return_ocotp,
> +	.field_return = imx_hab_field_return_ocotp,
>  };
>  
>  static int imx_ahab_write_srk_hash(const u8 *__newsrk, unsigned flags)
> diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
> index ae10dcef2a..3fd9d6df24 100644
> --- a/include/mach/imx/ocotp-fusemap.h
> +++ b/include/mach/imx/ocotp-fusemap.h
> @@ -103,6 +103,7 @@
>  #define MX8M_OCOTP_TZASC_EN		(OCOTP_WORD(0x480) | OCOTP_BIT(11) | OCOTP_WIDTH(1))
>  #define MX8MP_OCOTP_ROM_NO_LOG		(OCOTP_WORD(0x480) | OCOTP_BIT(22) | OCOTP_WIDTH(1))
>  #define MX8M_OCOTP_RECOVERY_SDMMC_BOOT_DIS	(OCOTP_WORD(0x490) | OCOTP_BIT(23) | OCOTP_WIDTH(1))
> +#define MX6_OCOTP_FIELD_RETURN		(OCOTP_WORD(0x6E0) | OCOTP_BIT(0) | OCOTP_WIDTH(1))
>  #define MX8M_OCOTP_FIELD_RETURN		(OCOTP_WORD(0x630) | OCOTP_BIT(0) | OCOTP_WIDTH(1))
>  #define MX8MP_OCOTP_FIELD_RETURN	(OCOTP_WORD(0x630) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
>  #define MX8M_OCOTP_SRK_REVOKE		(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(4))
> 
> -- 
> 2.47.3
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


