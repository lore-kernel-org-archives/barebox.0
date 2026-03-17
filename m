Delivery-date: Tue, 17 Mar 2026 22:45:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2cDx-001wk8-0c
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 22:45:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2cDv-00069F-8E
	for lore@pengutronix.de; Tue, 17 Mar 2026 22:45:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ccXaYk+/HAV3hg914AuMmi/GQtrMishKWiCslINjdT4=; b=t4WabKaWLtIymOfmXFTJdT/BC4
	dkbyytccPDN3JgIK7q4BfdBA+aTekezpNVKic7oNbS2j30cFzhSFZ6+xjqtgNPlvjO62xWOfqXUPI
	pkVTQZtM6QnGcr6Z76LuPIxxJdFBLFmzJllHSD4nVDZkoPGJ/DKYxcgcq7C8sxPbA7w2oA6w4kecj
	tRAvaD5xwgG0V2aaSEBxP2hemhJB0QXnPctn1jbHvQ8jaSTsdwaUIWEDeVtflW19w5GX/z++w2fkb
	xAHIHUVbBw3MmU//wnfxiaiowVRhhVCU5c6Hjeb3PK5n7ypsn71VeZfenFwUhJ4juLmSiMBKrDwzp
	nahyaogA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2cDM-00000007Gro-3qIB;
	Tue, 17 Mar 2026 21:44:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2cDK-00000007GrR-3WbG
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 21:44:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1w2cDJ-000636-5y; Tue, 17 Mar 2026 22:44:33 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1w2cDJ-000nz0-00;
	Tue, 17 Mar 2026 22:44:33 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1w2cDI-00000007Nwc-3prs;
	Tue, 17 Mar 2026 22:44:32 +0100
Date: Tue, 17 Mar 2026 22:44:32 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <zr3s6fhjqpwnfzu5oat3bk2qniatbjp246qlazxz7cluu5qh3p@z4kbl43wq2je>
References: <20260317134755.3184029-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260317134755.3184029-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_144434_879869_421F167C 
X-CRM114-Status: GOOD (  29.36  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvmem: rockchip-otp: implement SoC UID reading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 26-03-17, Sascha Hauer wrote:
> The Rockchip SoCs supported by the rockchip-otp driver have a SoC UID in
> the OTP data. Read it out and forward it to barebox. The raw SoC UID
> goes through some crc32 code before it is used. This is based on U-Boot
> code which itself is based on the Rockchip Downstream Linux support.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/nvmem/rockchip-otp.c | 54 ++++++++++++++++++++++++++++++++++--
>  1 file changed, 51 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
> index d2145bba52..041d628480 100644
> --- a/drivers/nvmem/rockchip-otp.c
> +++ b/drivers/nvmem/rockchip-otp.c
> @@ -9,6 +9,7 @@
>  #include <common.h>
>  #include <driver.h>
>  #include <init.h>
> +#include <crc.h>
>  #include <of.h>
>  #include <of_device.h>
>  #include <linux/clk.h>
> @@ -86,6 +87,7 @@ struct rockchip_data {
>  	const char * const *clks;
>  	int num_clks;
>  	int (*reg_read)(void *ctx, unsigned int reg, void *val, size_t val_size);
> +	int cpuid_offset;
		^
Would be nice to have it as function hook, like the reg_read() in case
RK SoCs find just another way to readout the ID in the future or the ID
gets more bits (like NXP did for the i.MX8MP).

In such cases the function hook is more future proof.

Regards,
  Marco


>  };
>  
>  struct rockchip_otp {
> @@ -400,6 +402,7 @@ static const struct rockchip_data px30_data = {
>  	.clks = px30_otp_clocks,
>  	.num_clks = ARRAY_SIZE(px30_otp_clocks),
>  	.reg_read = px30_otp_read,
> +	.cpuid_offset = -1,
>  };
>  
>  static const char * const rk3562_otp_clocks[] = {
> @@ -411,6 +414,7 @@ static const struct rockchip_data rk3562_data = {
>  	.clks = rk3562_otp_clocks,
>  	.num_clks = ARRAY_SIZE(rk3562_otp_clocks),
>  	.reg_read = rk3562_otp_read,
> +	.cpuid_offset = -1,
>  };
>  
>  static const char * const rk3568_otp_clocks[] = {
> @@ -422,6 +426,7 @@ static const struct rockchip_data rk3568_data = {
>  	.clks = rk3568_otp_clocks,
>  	.num_clks = ARRAY_SIZE(rk3568_otp_clocks),
>  	.reg_read = rk3568_otp_read,
> +	.cpuid_offset = 0xa,
>  };
>  
>  static const struct rockchip_data rk3576_data = {
> @@ -429,6 +434,7 @@ static const struct rockchip_data rk3576_data = {
>  	.clks = px30_otp_clocks,
>  	.num_clks = ARRAY_SIZE(px30_otp_clocks),
>  	.reg_read = rk3588_otp_read,
> +	.cpuid_offset = 0xa,
>  };
>  
>  static const char * const rk3588_otp_clocks[] = {
> @@ -440,6 +446,7 @@ static const struct rockchip_data rk3588_data = {
>  	.clks = rk3588_otp_clocks,
>  	.num_clks = ARRAY_SIZE(rk3588_otp_clocks),
>  	.reg_read = rk3588_otp_read,
> +	.cpuid_offset = 0x7,
>  };
>  
>  static __maybe_unused const struct of_device_id rockchip_otp_match[] = {
> @@ -471,6 +478,42 @@ static __maybe_unused const struct of_device_id rockchip_otp_match[] = {
>  };
>  MODULE_DEVICE_TABLE(of, rockchip_otp_match);
>  
> +#define CPUID_SIZE 16
> +
> +static int rockchip_otp_read_socuid(struct rockchip_otp *otp, struct nvmem_device *nvmem)
> +{
> +	u8 low[CPUID_SIZE / 2], high[CPUID_SIZE / 2];
> +	unsigned char cpuid[CPUID_SIZE];
> +	char uidstr[CPUID_SIZE * 2 + 1];
> +	u64 serialno;
> +	int i, ret, offset;
> +
> +	offset = otp->data->cpuid_offset;
> +	if (offset < 0)
> +		return 0;
> +
> +	ret = rockchip_otp_read(otp, offset, cpuid, CPUID_SIZE);
> +	if (ret < 0)
> +		return ret;
> +
> +	/*
> +	 * Do the same mangling as U-Boot and downstream Rockchip Linux does.
> +	 */
> +	for (i = 0; i < CPUID_SIZE / 2; i++) {
> +		low[i] = cpuid[1 + (i << 1)];
> +		high[i] = cpuid[i << 1];
> +	}
> +
> +	serialno = crc32_no_comp(0, low, CPUID_SIZE / 2);
> +	serialno |= (u64)crc32_no_comp(serialno, high, CPUID_SIZE / 2) << 32;
> +
> +	snprintf(uidstr, sizeof(uidstr), "%016llx", serialno);
> +
> +	barebox_set_soc_uid(uidstr, &serialno, sizeof(serialno));
> +
> +	return 0;
> +}
> +
>  static int rockchip_otp_probe(struct device *dev)
>  {
>  	struct rockchip_otp *otp;
> @@ -521,11 +564,16 @@ static int rockchip_otp_probe(struct device *dev)
>  	otp_config.dev = dev;
>  
>  	nvmem = nvmem_register(&otp_config);
> -	if (!IS_ERR(nvmem))
> -		return 0;
> +	if (IS_ERR(nvmem)) {
> +		ret = PTR_ERR(nvmem);
> +		goto err_register;
> +	}
>  
> -	ret = PTR_ERR(nvmem);
> +	rockchip_otp_read_socuid(otp, nvmem);
> +
> +	return 0;
>  
> +err_register:
>  	reset_control_put(otp->rst);
>  
>  err_rst:
> -- 
> 2.47.3
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


