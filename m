Delivery-date: Fri, 30 Jan 2026 09:04:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vljU7-006uZU-1e
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 09:04:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vljU6-0005vc-E2
	for lore@pengutronix.de; Fri, 30 Jan 2026 09:04:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2laywpxVi8j2v9JukNMyPWEXIG3emod3jSaF1t2yOGg=; b=0J2AWMybWCBvTRzZLTfJbkvjW3
	IRwbaonC7jvDe5mcjqubUxewo8wjeqaH6brUvkErPr7BlSlry8bKrFfbBGJSNI/RQgnFHH9x1TF07
	o30aKwtGN7Lkv+eWvoRGQ/NcaYMK5vk+FELYs2rmILoRicGpXVfLl5S0a5U6oedB9iZp+ezDGUI1y
	AjT9AMpC1j9DFjlFvpaxd4ulLvb8VNyl8T7jVpEn1WLSA92+0yf3Bmk7C0wP5RrCI7MKZ+eGIE8MM
	UR6Kete10uusZlCYGlAfexMN1l/Z9Xcl82DRLdRYK+IVRndg/pA62mxB+LN//tfsVcwO6zNMG7k9A
	sqWntP9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vljTk-00000001BGd-01zr;
	Fri, 30 Jan 2026 08:03:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vljTh-00000001BG8-2TtO
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 08:03:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vljTf-0005pa-VY; Fri, 30 Jan 2026 09:03:40 +0100
Message-ID: <c05f5e87-2ee0-42c1-97e7-304933b01635@pengutronix.de>
Date: Fri, 30 Jan 2026 09:03:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
 <20260130-barebox-kickpi-v2-12-d27cf94a39b6@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260130-barebox-kickpi-v2-12-d27cf94a39b6@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_000341_635719_32027393 
X-CRM114-Status: GOOD (  22.98  )
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
Subject: Re: [PATCH v2 12/14] nvmem: rockchip-otp: Add RK3562 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/30/26 06:17, Sohaib Mohamed wrote:
> Add RK3562 OTP support using rk3562-specific data configuration.
> 
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/nvmem/rockchip-otp.c | 89 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 89 insertions(+)
> 
> diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
> index 33b242c5bc..d2145bba52 100644
> --- a/drivers/nvmem/rockchip-otp.c
> +++ b/drivers/nvmem/rockchip-otp.c
> @@ -51,6 +51,21 @@
>  
>  #define OTPC_TIMEOUT			10000
>  
> +#define RK3562_NBYTES			2
> +
> +/* RK3588 Register */
> +#define RK3582_OTPC_AUTO_CTRL	0x04
> +#define RK3582_OTPC_AUTO_EN		0x08
> +#define RK3582_OTPC_INT_ST		0x84
> +#define RK3582_OTPC_DOUT0		0x20
> +#define RK3582_NO_SECURE_OFFSET	0x300
> +#define RK3582_NBYTES			4
> +#define RK3582_BURST_NUM		1
> +#define RK3582_BURST_SHIFT		8
> +#define RK3582_ADDR_SHIFT		16
> +#define RK3582_AUTO_EN			BIT(0)
> +#define RK3582_RD_DONE			BIT(1)
> +
>  #define RK3568_NBYTES			2
>  
>  /* RK3588 Register */
> @@ -183,6 +198,65 @@ static int px30_otp_read(void *context, unsigned int offset,
>  	return ret;
>  }
>  
> +static int rk3562_otp_read(void *context, unsigned int offset, void *val,
> +			   size_t bytes)
> +{
> +	struct rockchip_otp *otp = context;
> +	unsigned int addr_start, addr_end, addr_offset, addr_len;
> +	u32 out_value;
> +	u8 *buf;
> +	int ret = 0, i = 0;
> +
> +	addr_start = rounddown(offset, RK3562_NBYTES) / RK3562_NBYTES;
> +	addr_end = roundup(offset + bytes, RK3562_NBYTES) / RK3562_NBYTES;
> +	addr_offset = offset % RK3562_NBYTES;
> +	addr_len = addr_end - addr_start;
> +
> +	buf = kzalloc(array3_size(addr_len, RK3562_NBYTES, sizeof(*buf)),
> +		      GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	ret = rockchip_otp_reset(otp);
> +	if (ret) {
> +		dev_err(otp->dev, "failed to reset otp phy\n");
> +		goto out;
> +	}
> +
> +	ret = rockchip_otp_ecc_enable(otp, false);
> +	if (ret < 0) {
> +		dev_err(otp->dev, "rockchip_otp_ecc_enable err\n");
> +		goto out;
> +	}
> +
> +	writel(OTPC_USE_USER | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
> +	udelay(5);
> +	while (addr_len--) {
> +		writel(addr_start++ | OTPC_USER_ADDR_MASK,
> +		       otp->base + OTPC_USER_ADDR);
> +		writel(OTPC_USER_FSM_ENABLE | OTPC_USER_FSM_ENABLE_MASK,
> +		       otp->base + OTPC_USER_ENABLE);
> +		ret = rockchip_otp_wait_status(otp, OTPC_INT_STATUS, OTPC_USER_DONE);
> +		if (ret < 0) {
> +			dev_err(otp->dev, "timeout during read setup\n");
> +			goto read_end;
> +		}
> +		out_value = readl(otp->base + OTPC_USER_Q);
> +		memcpy(&buf[i], &out_value, RK3562_NBYTES);
> +		i += RK3562_NBYTES;
> +	}
> +
> +	memcpy(val, buf + addr_offset, bytes);
> +
> +read_end:
> +	writel(0x0 | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
> +out:
> +	kfree(buf);
> +
> +	return ret;
> +}
> +
> +
>  static int rk3568_otp_read(void *context, unsigned int offset, void *val,
>  			   size_t bytes)
>  {
> @@ -328,6 +402,17 @@ static const struct rockchip_data px30_data = {
>  	.reg_read = px30_otp_read,
>  };
>  
> +static const char * const rk3562_otp_clocks[] = {
> +	"usr", "sbpi", "apb", "phy",
> +};
> +
> +static const struct rockchip_data rk3562_data = {
> +	.size = 0x80,
> +	.clks = rk3562_otp_clocks,
> +	.num_clks = ARRAY_SIZE(rk3562_otp_clocks),
> +	.reg_read = rk3562_otp_read,
> +};
> +
>  static const char * const rk3568_otp_clocks[] = {
>  	"usr", "sbpi", "apb", "phy",
>  };
> @@ -366,6 +451,10 @@ static __maybe_unused const struct of_device_id rockchip_otp_match[] = {
>  		.compatible = "rockchip,rk3308-otp",
>  		.data = &px30_data,
>  	},
> +	{
> +		.compatible = "rockchip,rk3562-otp",
> +		.data = &rk3562_data,
> +	},
>  	{
>  		.compatible = "rockchip,rk3568-otp",
>  		.data = &rk3568_data,
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


