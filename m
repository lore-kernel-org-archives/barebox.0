Delivery-date: Fri, 19 Dec 2025 10:57:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXES-00D9mh-13
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 10:57:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXER-00088n-Nj
	for lore@pengutronix.de; Fri, 19 Dec 2025 10:57:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T5TaKCtqX/ZHm61ANhrWPG2suAOwKFP5Yj3qrsq2ijE=; b=SdSOyetGAyUEwbtgwtDAa5nDO/
	EEsgclByktQJYHTCkvbyHFIBL1Gu3BudTVo/nrHyXO3WxF01UQWAdXsB2Scm4UWd1BeM6PFSz/Mj8
	cOC1YQ9Bj9k5r7LMHnE3ALlx+Y0aJUxsVQ+OLb6Qfu2i++rfSii0bmK5khRr+vIVe3Crw9xvEqD6e
	qoEjgd40bvci4KOBQqCK+EdJpr6+P3dq1XElsQ7mDGkS+bKSHikb1vWl0iBouGoRiSxbLkF/offW6
	ULNof2RbASgQe95iQk9vGNo4pv1y/6tGuxNQCIEPCbAOuJ4ixYSn0Vdl4k/NKawzyKnvtWlnu0czC
	9+/Ga5yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXDy-00000009zp9-20Rc;
	Fri, 19 Dec 2025 09:56:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXDv-00000009znx-20ZR
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:56:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWXDt-00082e-Rb; Fri, 19 Dec 2025 10:56:33 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWXDt-006R53-29;
	Fri, 19 Dec 2025 10:56:33 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWXDt-00GS5Q-1l;
	Fri, 19 Dec 2025 10:56:33 +0100
Date: Fri, 19 Dec 2025 10:56:33 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20251219095633.fsn7runigisbomgu@pengutronix.de>
References: <20251219-v2025-11-0-topic-imx6-field-return-v2-0-2696ac61ae2d@pengutronix.de>
 <20251219-v2025-11-0-topic-imx6-field-return-v2-3-2696ac61ae2d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219-v2025-11-0-topic-imx6-field-return-v2-3-2696ac61ae2d@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_015635_518950_5DD1337B 
X-CRM114-Status: GOOD (  21.24  )
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
Subject: Re: [PATCH v2 3/4] i.MX: HAB: extend field_return support to imx6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-12-19, Fabian Pflug wrote:
> Extend the helper for imx_fuse_burn with support for i.MX6 devices.
> Create a helper function for i.MX8 and i.MX6 rom the old i.MX8M
> function, as they all share the same pattern.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  drivers/hab/hab.c                | 22 +++++++++++++++-------
>  include/mach/imx/ocotp-fusemap.h |  1 +
>  2 files changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
> index 1c747e8a3e..3c9739871b 100644
> --- a/drivers/hab/hab.c
> +++ b/drivers/hab/hab.c
> @@ -262,7 +262,7 @@ static int imx8m_hab_revoke_key_ocotp(unsigned key_idx)
>   */
>  #define MX8MP_FIELD_RETURN_PATTERN	0x28001401

Nit: I would like to keep this define close to the
imx8m_hab_field_return_ocotp().

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


> -static int imx8m_hab_field_return_ocotp(void)
> +static int imx_hab_field_return_ocotp(unint32_t field, unsigned int value)
>  {
>  	int ret;
>  
> @@ -274,13 +274,20 @@ static int imx8m_hab_field_return_ocotp(void)
>  	if (ret == 1)
>  		return -EINVAL;
>  
> -	if (cpu_is_mx8mp())
> -		ret = imx_ocotp_write_field(MX8MP_OCOTP_FIELD_RETURN,
> -					    MX8MP_FIELD_RETURN_PATTERN);
> -	else
> -		ret = imx_ocotp_write_field(MX8M_OCOTP_FIELD_RETURN, 1);
> +	return imx_ocotp_write_field(field, value);
> +}
>  
> -	return ret;
> +static int imx6_hab_field_return_ocotp(void)
> +{
> +	return imx_hab_field_return_ocotp(MX6_OCOTP_FIELD_RETURN, 1);
> +}
> +
> +static int imx8m_hab_field_return_ocotp(void)
> +{
> +	if (cpu_is_mx8mp())
> +		return imx_hab_field_return_ocotp(MX8MP_OCOTP_FIELD_RETURN,
> +						  MX8MP_FIELD_RETURN_PATTERN);
> +	return imx_hab_field_return_ocotp(MX8M_OCOTP_FIELD_RETURN, 1);
>  }
>  
>  struct imx_hab_ops {
> @@ -310,6 +317,7 @@ static struct imx_hab_ops imx6_hab_ops_ocotp = {
>  	.device_locked_down = imx6_hab_device_locked_down_ocotp,
>  	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
>  	.print_status = imx6_hab_print_status,
> +	.field_return = imx6_hab_field_return_ocotp,
>  };
>  
>  static struct imx_hab_ops imx8m_hab_ops_ocotp = {
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


