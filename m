Delivery-date: Mon, 26 Jan 2026 12:20:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkKeA-005WZf-2x
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 12:20:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkKe9-00071b-Ss
	for lore@pengutronix.de; Mon, 26 Jan 2026 12:20:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PmFlumqrUfxxYoJNEy7cLya1cACInCdEQaPo0an3ZvA=; b=WGxPTB2EVrzv3kJf6po5YYkPCQ
	lCFsTUeTmUYBsJmYy8PhqG8O1rz2icsv+wq6cA8aNWWaznZ+EJN+YJbQTi8aEiWpXD6OFmkL8q8VK
	TFsQIx+g3a0O9d3ITr5c29opCuJwKT/laKRK+NZbYv392tTr9c5dtICffnZOrI2MNqofDoMZqsAFP
	mTMIS0vF/yT5bGswjk2Sg3VjquQYIYlF8nhlsJYuzBbhBmWeRMmwodv1Y4hSbzmq9UbucsSW8DBtY
	BDB5P09JfuGYBQbHwkzHisT84l7C96uCwXd56RQ6DVGyWn40uc01fi44ZOjzcm0htiRCMLHxnT1Qm
	91FwaXjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKdh-0000000CP7Q-377P;
	Mon, 26 Jan 2026 11:20:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKde-0000000CP62-3bTT
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 11:20:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkKdd-0006wm-4O; Mon, 26 Jan 2026 12:20:09 +0100
Message-ID: <c9f90894-52ac-4090-b4a9-8d82b735e56e@pengutronix.de>
Date: Mon, 26 Jan 2026 12:20:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
 <20251117-soc-uid-v2-6-a2415bf9133d@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251117-soc-uid-v2-6-a2415bf9133d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_032010_907221_BD5C8536 
X-CRM114-Status: GOOD (  23.61  )
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
Subject: Re: [PATCH v2 6/9] nvmem: ocotp: Fix SoC ID reading for i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/17/25 9:35 AM, Sascha Hauer wrote:
> On i.MX8MP the SoC ID is stored at 0x420/0x430, not on 0x410/0x420 as on
> other i.MX8M SoCs. Also on i.MX8MP the SoC ID is 128bit and not 64bit
> with the upper bits stored at 0xe00/0xe10.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

As this has implications for user space (e.g. journald quotas are per
directory and machine id changes the dir), this deserves a mention in
the migration guide.

Cheers,
Ahmad

> ---
>  drivers/nvmem/ocotp.c | 33 +++++++++++++++++++++++++++------
>  1 file changed, 27 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
> index 7bca27540417ad9ba0ce5c5f8ec43ad1c63638b9..affca938849d0d1a8dc347e3a0e1f3a380f1aab7 100644
> --- a/drivers/nvmem/ocotp.c
> +++ b/drivers/nvmem/ocotp.c
> @@ -853,17 +853,38 @@ static int imx_ocotp_init_dt(struct ocotp_priv *priv)
>  	return imx8m_feat_ctrl_init(priv->dev.parent, tester3, tester4, priv->data->feat);
>  }
>  
> +#define IMX8MP_OCOTP_UID(n)	\
> +	(OCOTP_WORD(0x420 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
> +#define IMX8MP_OCOTP_UID_2(n)	\
> +	(OCOTP_WORD(0xe00 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
> +
>  static void imx_ocotp_set_unique_machine_id(void)
>  {
> -	uint32_t unique_id_parts[UNIQUE_ID_NUM];
> -	int i;
> +	bool is_imx8mp = of_machine_is_compatible("fsl,imx8mp");
> +	uint32_t uid[4];
> +	int len;
>  
> -	for (i = 0; i < UNIQUE_ID_NUM; i++)
> -		if (imx_ocotp_read_field(OCOTP_UNIQUE_ID(i),
> -					 &unique_id_parts[i]))
> +	if (is_imx8mp) {
> +		if (imx_ocotp_read_field(IMX8MP_OCOTP_UID(0), &uid[0]))
> +			return;
> +		if (imx_ocotp_read_field(IMX8MP_OCOTP_UID(1), &uid[1]))
> +			return;
> +
> +		if (imx_ocotp_read_field(IMX8MP_OCOTP_UID_2(0), &uid[2]))
> +			return;
> +		if (imx_ocotp_read_field(IMX8MP_OCOTP_UID_2(1), &uid[3]))
>  			return;
> +		len = sizeof(uid);
> +	} else {
> +		if (imx_ocotp_read_field(OCOTP_UNIQUE_ID(0), &uid[0]))
> +			return;
> +		if (imx_ocotp_read_field(OCOTP_UNIQUE_ID(1), &uid[1]))
> +			return;
> +
> +		len = sizeof(uid) / 2;
> +	}
>  
> -	machine_id_set_hashable(unique_id_parts, sizeof(unique_id_parts));
> +	machine_id_set_hashable(uid, len);
>  }
>  
>  static int imx_ocotp_probe(struct device *dev)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



