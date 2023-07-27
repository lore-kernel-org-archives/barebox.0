Delivery-date: Thu, 27 Jul 2023 08:06:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOu8k-00Bkos-Uz
	for lore@lore.pengutronix.de; Thu, 27 Jul 2023 08:06:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOu8h-0006fQ-Tv
	for lore@pengutronix.de; Thu, 27 Jul 2023 08:06:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zj6KjTssflFplUCNe2XGyxc81gc5XqLZZZq3GTVBp1I=; b=WX3mOcf50RAObs3MH6jPA1QyFW
	r+U6W0zfhfg6q1cQZ/Ivu3coJILeYUqBIoFuJ8IsGWn3XwP51CCMdBXxs1IE8eqGdca3qyyfoAUSl
	mi703kcHm/lWgOH5CALNVOBxzSV1meB14B1X7JCsaocGSHySJa70noPKnopis0S1EDP1ojt7X6V2/
	7uGEWUmMGI7HndGzmtdiYjWMiUs55027/bhT82Ymr34HPT3rzynUOgS7AMrSh1kUq6u6CJ3Lfx1Ii
	equBlmes9WnvqRv3DtulqLQW9ylcbvBdw0zrPgouwLaKBLXMxGxwwogt/RudDdNPUPn8Qz+hcUoEU
	W//jB5Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOu7Y-00CHYE-0C;
	Thu, 27 Jul 2023 06:05:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOu7U-00CHXZ-2V
	for barebox@lists.infradead.org;
	Thu, 27 Jul 2023 06:05:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qOu7S-0006K5-SN; Thu, 27 Jul 2023 08:05:02 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qOu7S-0004xa-Kv; Thu, 27 Jul 2023 08:05:02 +0200
Date: Thu, 27 Jul 2023 08:05:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230727060502.sy46mutzo4enww3s@pengutronix.de>
References: <20230726192718.911735-1-a.fatoum@pengutronix.de>
 <20230726192718.911735-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230726192718.911735-3-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_230504_819476_5D2D97E6 
X-CRM114-Status: GOOD (  23.52  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] nvmem: ocotp: handle too early calls into ocotp
 driver gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-07-26, Ahmad Fatoum wrote:
> HAB code calls into OCOTP driver by relying on a global imx_ocotp
> variable that's populated on driver probe.
> 
> For board code that calls a HAB function to early, this may end up
> dereferencing a NULL pointer, so let's return -EPROBE_DEFER in that
> case or if deep probe is enabled, just probe the OCOTP directly.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clk/imx/clk-vf610.c |  5 ++++-
>  drivers/nvmem/ocotp.c       | 41 +++++++++++++++++++++++++++++++++++--
>  include/mach/imx/ocotp.h    |  2 +-
>  3 files changed, 44 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-vf610.c b/drivers/clk/imx/clk-vf610.c
> index 89899e0dc9b4..112f64df9b74 100644
> --- a/drivers/clk/imx/clk-vf610.c
> +++ b/drivers/clk/imx/clk-vf610.c
> @@ -568,13 +568,16 @@ static int vf610_switch_cpu_clock_to_400mhz(void)
>  static int vf610_switch_cpu_clock(void)
>  {
>  	int ret;
> -	bool sense_enable;
> +	int sense_enable;
>  	uint32_t speed_grading;
>  
>  	if (!of_machine_is_compatible("fsl,vf610"))
>  		return 0;
>  
>  	sense_enable = imx_ocotp_sense_enable(true);
> +	if (sense_enable < 0)
> +		return sense_enable;
> +
>  	ret = imx_ocotp_read_field(VF610_OCOTP_SPEED_GRADING, &speed_grading);
>  	imx_ocotp_sense_enable(sense_enable);
>  	if (ret < 0)
> diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
> index 8ba7a8af5da5..c22e5d9585fa 100644
> --- a/drivers/nvmem/ocotp.c
> +++ b/drivers/nvmem/ocotp.c
> @@ -14,6 +14,7 @@
>   */
>  
>  #include <common.h>
> +#include <deep-probe.h>
>  #include <driver.h>
>  #include <malloc.h>
>  #include <xfuncs.h>
> @@ -497,11 +498,17 @@ static void imx_ocotp_field_decode(uint32_t field, unsigned *word,
>  	*mask = GENMASK(width, 0);
>  }
>  
> +static int imx_ocotp_ensure_probed(void);

Nit: Move the function definition here?

Regards,
  Marco

>  int imx_ocotp_read_field(uint32_t field, unsigned *value)
>  {
>  	unsigned word, bit, mask, val;
>  	int ret;
>  
> +	ret = imx_ocotp_ensure_probed();
> +	if (ret)
> +		return ret;
> +
>  	imx_ocotp_field_decode(field, &word, &bit, &mask);
>  
>  	ret = imx_ocotp_reg_read(imx_ocotp, word, &val);
> @@ -524,6 +531,10 @@ int imx_ocotp_write_field(uint32_t field, unsigned value)
>  	unsigned word, bit, mask;
>  	int ret;
>  
> +	ret = imx_ocotp_ensure_probed();
> +	if (ret)
> +		return ret;
> +
>  	imx_ocotp_field_decode(field, &word, &bit, &mask);
>  
>  	value &= mask;
> @@ -541,14 +552,27 @@ int imx_ocotp_write_field(uint32_t field, unsigned value)
>  
>  int imx_ocotp_permanent_write(int enable)
>  {
> +	int ret;
> +
> +	ret = imx_ocotp_ensure_probed();
> +	if (ret)
> +		return ret;
> +
>  	imx_ocotp->permanent_write_enable = enable;
>  
>  	return 0;
>  }
>  
> -bool imx_ocotp_sense_enable(bool enable)
> +int imx_ocotp_sense_enable(bool enable)
>  {
> -	const bool old_value = imx_ocotp->sense_enable;
> +	bool old_value;
> +	int ret;
> +
> +	ret = imx_ocotp_ensure_probed();
> +	if (ret)
> +		return ret;
> +
> +	old_value = imx_ocotp->sense_enable;
>  	imx_ocotp->sense_enable = enable;
>  	return old_value;
>  }
> @@ -994,6 +1018,19 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
>  };
>  MODULE_DEVICE_TABLE(of, imx_ocotp_dt_ids);
>  
> +static int imx_ocotp_ensure_probed(void)
> +{
> +	if (!imx_ocotp && deep_probe_is_supported()) {
> +		int ret;
> +
> +		ret = of_devices_ensure_probed_by_dev_id(imx_ocotp_dt_ids);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return imx_ocotp ? 0 : -EPROBE_DEFER;
> +}
> +
>  static struct driver imx_ocotp_driver = {
>  	.name	= "imx_ocotp",
>  	.probe	= imx_ocotp_probe,
> diff --git a/include/mach/imx/ocotp.h b/include/mach/imx/ocotp.h
> index 7c72edfb22a7..5f7b88f716a7 100644
> --- a/include/mach/imx/ocotp.h
> +++ b/include/mach/imx/ocotp.h
> @@ -35,7 +35,7 @@
>  int imx_ocotp_read_field(uint32_t field, unsigned *value);
>  int imx_ocotp_write_field(uint32_t field, unsigned value);
>  int imx_ocotp_permanent_write(int enable);
> -bool imx_ocotp_sense_enable(bool enable);
> +int imx_ocotp_sense_enable(bool enable);
>  
>  static inline u64 imx_ocotp_read_uid(void __iomem *ocotp)
>  {
> -- 
> 2.39.2
> 
> 
> 


