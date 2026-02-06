Delivery-date: Fri, 06 Feb 2026 14:04:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voLVf-009UWx-38
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 14:04:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voLVe-0008E4-9V
	for lore@pengutronix.de; Fri, 06 Feb 2026 14:04:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hU49UfN1P69deV+CsHi3JdwTEeLDf8c+fY27LxpZrHM=; b=cazkP8X3FRU0KuN9rMkzGyLsZB
	12G3MuUYpsROWDhHCYW2wyNibehruJESQaBJqiDsn9xPgwbD7g7c42a4J6G7y6qCqRYd51UFPveMK
	iOpI6pMHO+VdEHwtjJKnWl6adzUMbGAl+qpnmugqTqsISs5qnk+xmTLL6M1f4D3E32eVv9XWh19nK
	XoyJHaMsKLNjQJ5FIpTXinxWp8Zpf5+EqhlMsax+vhG8IecrTYR8YsLxnkiE4iVSfX7UWp2J+djqc
	qJV/goT9/AP7L1UpLxPRUiCucl3qlsseCamG3pebtqVK4psg3cjNRQ5ZY3y7drCjCXFOCO4KkJWTM
	n9Up4IUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voLVH-0000000BKz1-0yUT;
	Fri, 06 Feb 2026 13:04:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voLVC-0000000BKyL-2viq
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 13:04:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1voLVB-0008AN-7X; Fri, 06 Feb 2026 14:04:01 +0100
Message-ID: <10f73ae0-ae21-4ce7-be2d-bfe00c17c41c@pengutronix.de>
Date: Fri, 6 Feb 2026 14:04:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
 <20260205-vmaster-customers-leicageo-system1600-v1-1-a80b234ce1a1@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260205-vmaster-customers-leicageo-system1600-v1-1-a80b234ce1a1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_050403_263596_53FBE785 
X-CRM114-Status: GOOD (  14.04  )
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
Subject: Re: [PATCH 1/5] ARM: i.MX8MM: add MX8MM_PAD_CTL defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 2/5/26 4:45 PM, Marco Felsch wrote:
> Add defines like already done for i.MX8MP and i.MX8MQ.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/mach/imx/iomux-mx8mm.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/include/mach/imx/iomux-mx8mm.h b/include/mach/imx/iomux-mx8mm.h
> index ee0240f538322021ae37a7d154bfdd26d0628087..693eb67b9602c1c5ca4f8f9b448c2a7886ce1046 100644
> --- a/include/mach/imx/iomux-mx8mm.h
> +++ b/include/mach/imx/iomux-mx8mm.h
> @@ -691,6 +691,16 @@ enum {
>  	IMX8MM_PAD_UART4_TXD_GPIO5_IO29                               =  IOMUX_PAD(0x04B8, 0x0250, 5, 0x0000, 0, 0),
>  };
>  
> +#define MX8MM_PAD_CTL_DSE1	(0 << 1)
> +#define MX8MM_PAD_CTL_DSE2	(2 << 1)
> +#define MX8MM_PAD_CTL_DSE4	(1 << 1)
> +#define MX8MM_PAD_CTL_DSE6	(3 << 1)
> +#define MX8MM_PAD_CTL_FSEL	BIT(4)
> +#define MX8MM_PAD_CTL_ODE	BIT(5)
> +#define MX8MM_PAD_CTL_PUE	BIT(6)
> +#define MX8MM_PAD_CTL_HYS	BIT(7)
> +#define MX8MM_PAD_CTL_PE	BIT(8)
> +
>  static inline void imx8mm_setup_pad(iomux_v3_cfg_t pad)
>  {
>  	void __iomem *iomux = IOMEM(MX8MM_IOMUXC_BASE_ADDR);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



