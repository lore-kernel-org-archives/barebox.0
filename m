Delivery-date: Wed, 20 Dec 2023 12:20:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFucQ-0062xZ-34
	for lore@lore.pengutronix.de;
	Wed, 20 Dec 2023 12:20:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFucQ-0002lI-BY
	for lore@pengutronix.de; Wed, 20 Dec 2023 12:20:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=apatN3Sltnw92goNFD3SXUEOhad1J8Zx5rdHV1ot1Lo=; b=B5qvHKkUbhHSXFjblK0IvAiIVA
	aqCj9rkba+x+RIsuOsirX7+JvWfgIbm9cH94S3310H4+qIvfeGgzUnZPOSPZCfx0rxmo37cdHlvYz
	VWJsgTLSTNfJcNVX+6seGFDR53Qa1+TywH5x1fLEanZZhzJGBumFXjbD9YKYIHNN00IgzmS3BQq15
	RCGXSvz346V0sCSrVR/oVh67gVYjcwJ+aF4E5qyJeZZkPXIyM3x4LOFQgaH8QmJl8h5YXwy4NYfrX
	za0syFhV8GkNQfsp77pRHiV4shH8oZtWOApQQm37vuHBm6dkMJGXa3rEXNOXHRQdnnwzeuPP2QQUl
	XjgmMH8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFubI-00H3UR-0x;
	Wed, 20 Dec 2023 11:18:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFubF-00H3Tw-2d
	for barebox@lists.infradead.org;
	Wed, 20 Dec 2023 11:18:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rFubE-0002VK-E8; Wed, 20 Dec 2023 12:18:52 +0100
Message-ID: <fadd2f53-ceec-4786-9451-084e2efbfc5e@pengutronix.de>
Date: Wed, 20 Dec 2023 12:18:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
References: <20231220104739.10700-1-bst@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231220104739.10700-1-bst@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_031853_853240_DF45CFB8 
X-CRM114-Status: GOOD (  18.19  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] i2c: add pmic_reg_read() for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 20.12.23 11:47, Bastian Krause wrote:
> Add a common PMIC read function to PBL which allows easy porting of
> U-Boot's pmic_reg_read() in lowlevel board code.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> Changes since (implicit) v1:
> - make function static inline as suggested by Ahmad
> - change void *buf to u32 *val to resemble's U-Boot's pmic_reg_read() as
>   suggested by Ahmad
> ---
>  include/pbl/pmic.h | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/include/pbl/pmic.h b/include/pbl/pmic.h
> index 0f882c5649d..4eeee31d46c 100644
> --- a/include/pbl/pmic.h
> +++ b/include/pbl/pmic.h
> @@ -9,6 +9,30 @@ struct pmic_config {
>  	u8 val;
>  };
>  
> +static inline void pmic_reg_read(struct pbl_i2c *i2c, int addr, u8 reg, u32 *val)
> +{
> +	int ret;
> +	u8 buf[1];
> +	struct i2c_msg msg[] = {
> +		{
> +			.addr = addr,
> +			.buf = &reg,
> +			.len = 1,
> +		}, {
> +			.addr = addr,
> +			.flags = I2C_M_RD,
> +			.buf = buf,
> +			.len = 1,
> +		},
> +	};
> +
> +	ret = pbl_i2c_xfer(i2c, msg, ARRAY_SIZE(msg));
> +	if (ret != ARRAY_SIZE(msg))
> +		pr_err("Failed to read from pmic@%x: %d\n", addr, ret);
> +
> +	*val = buf[0];
> +}
> +
>  static void pmic_reg_write(struct pbl_i2c *i2c, int addr, u8 reg, u8 val)
>  {
>  	int ret;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



