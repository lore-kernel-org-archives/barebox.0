Delivery-date: Fri, 27 Sep 2024 08:19:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su4KT-003IUa-2Q
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 08:19:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su4KU-0001MS-7g
	for lore@pengutronix.de; Fri, 27 Sep 2024 08:19:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qvoTvuXZYOgvKd+iv/csJflRccU0DG/EwodaDxu4BuA=; b=4rOgUL/8UiLtUfkUlh+CU1+rwq
	TEOEW/PbS62WVos4oiR8F1t4UUoarww1UUMTY+oGW5Ka7IL/l681thGAnV/x9yVQ1zgrSNovWK+u7
	NQnykMTBi1pponCqguralHM3/l+DQKRs7W5ezIjJ0rx/YCOxS/yNOmAn7aNck2gfisBOcMlewuxY3
	pyEWgt48QiND9QQ1ibxGqemr3JOJSt5RVR/Ndx7fyOf9xwj6DPDHNlxpauJqcYOhE7JAShXg4gi7k
	YQ0NWm34cqkfE8l3zWxUzyrfUWfjhwsauTA+8ifPzfxjBarGaQPisCTuwXNMZYf5BQG3CmDFXFUEk
	mgedMVYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su4K0-0000000AAs3-3Lme;
	Fri, 27 Sep 2024 06:19:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su4JG-0000000AAlf-0wO8
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 06:18:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1su4JE-0000mF-Kh; Fri, 27 Sep 2024 08:18:32 +0200
Message-ID: <38df33bb-8ac6-4119-bc55-6bb26c7ecd4d@pengutronix.de>
Date: Fri, 27 Sep 2024 08:18:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
 <20240926-vop2-v1-9-fe0581f2020b@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240926-vop2-v1-9-fe0581f2020b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_231834_316995_4CA2C0F0 
X-CRM114-Status: GOOD (  18.62  )
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
Subject: Re: [PATCH 09/13] video: i.MX ipuv3: switch to upstream hdmi driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.09.24 15:15, Sascha Hauer wrote:
> The Linux dw-hdmi driver is based on a driver which originally was
> written specifically for the i.MX and was converted later to a generic
> dw-hdmi driver. The barebox driver is still based on the original Linux
> driver. We just merged the dw-hdmi driver. With this patch we now get
> rid of the i.MX specific driver and use the generic one.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/video/imx-ipu-v3/Kconfig       |    1 +
>  drivers/video/imx-ipu-v3/Makefile      |    2 +-
>  drivers/video/imx-ipu-v3/dw_hdmi-imx.c |  223 ++++++
>  drivers/video/imx-ipu-v3/imx-hdmi.c    | 1360 --------------------------------
>  drivers/video/imx-ipu-v3/imx-hdmi.h    | 1029 ------------------------
>  5 files changed, 225 insertions(+), 2390 deletions(-)
> 
> diff --git a/drivers/video/imx-ipu-v3/Kconfig b/drivers/video/imx-ipu-v3/Kconfig
> index 4429e815cd..94503d2cbf 100644
> --- a/drivers/video/imx-ipu-v3/Kconfig
> +++ b/drivers/video/imx-ipu-v3/Kconfig
> @@ -16,6 +16,7 @@ config DRIVER_VIDEO_IMX_IPUV3_LVDS
>  config DRIVER_VIDEO_IMX_IPUV3_HDMI
>  	bool "IPUv3 HDMI support"
>  	depends on DRIVER_VIDEO_EDID
> +	depends on DRIVER_VIDEO_DW_HDMI

IMO, should be a select too.


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


