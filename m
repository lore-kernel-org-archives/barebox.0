Delivery-date: Fri, 30 Jan 2026 09:01:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vljRi-006uVd-0W
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 09:01:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vljRh-0005O0-5b
	for lore@pengutronix.de; Fri, 30 Jan 2026 09:01:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=34FTB1KJ/3/3v94alvc5v77Woi19Fw9aOXG4uuDi6Zs=; b=zFG1cU00CLMmKC41tDcTyq87cA
	3pOSym7VN/RNX7nkOhuCI4hugkWTc1bQ2R78QuNnaNAmo9ILlf9cDiA6eNX2IFKQHuHpIt+8GLjGm
	40NCLKQE6Y7MvwY1ymCabpk6tP6C+gRPjUDNKhNlxzVKqemkbUaJC2xtBqsuylooU4CdetKu5W3Jh
	BfF+DQbosPJ0NuXaxaGa3kz6ukRzEQrMwcIvtxSi48vxlzh+TuHxL2p496Yk+PvPKrT+k3D56zHQS
	7c5KKF66/z80dOTBlIPYX9XXnb/XbwkF9EcKsPDBjjEMy+n0EiMkUWlgYxrQxG+QPEHIDw/sXttr4
	DBdgL8BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vljRI-00000001Awk-3VdT;
	Fri, 30 Jan 2026 08:01:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vljRG-00000001AwF-3pGb
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 08:01:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vljRE-0005I4-H2; Fri, 30 Jan 2026 09:01:08 +0100
Message-ID: <6b035688-df27-47ea-9fe4-acad9afc35ff@pengutronix.de>
Date: Fri, 30 Jan 2026 09:01:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
 <20260130-barebox-kickpi-v2-8-d27cf94a39b6@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260130-barebox-kickpi-v2-8-d27cf94a39b6@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_000110_957259_3EACEDBB 
X-CRM114-Status: GOOD (  16.66  )
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
Subject: Re: [PATCH v2 08/14] aiodev: rockchip_saradc: Add RK3562 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/30/26 06:17, Sohaib Mohamed wrote:
> The RK3562 has a SARADC v2 with 8 channels and 12 bit resolution.
> compile-tested Only.
> 
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/aiodev/rockchip_saradc.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
> index f1efab5233..d4cb1f4fbe 100644
> --- a/drivers/aiodev/rockchip_saradc.c
> +++ b/drivers/aiodev/rockchip_saradc.c
> @@ -256,6 +256,12 @@ static int rockchip_saradc_probe(struct device *dev)
>  	return ret;
>  }
>  
> +static const struct rockchip_saradc_cfg rk3562_saradc_cfg = {
> +	.num_bits = 12,
> +	.num_channels = 8,
> +	.read = rockchip_saradc_read_v2,
> +};
> +
>  static const struct rockchip_saradc_cfg rk3568_saradc_cfg = {
>  	.num_bits = 10,
>  	.num_channels = 8,
> @@ -276,6 +282,7 @@ static const struct rockchip_saradc_cfg rk3588_saradc_cfg = {
>  };
>  
>  static const struct of_device_id of_rockchip_saradc_match[] = {
> +	{ .compatible = "rockchip,rk3562-saradc", .data = &rk3562_saradc_cfg },
>  	{ .compatible = "rockchip,rk3568-saradc", .data = &rk3568_saradc_cfg },
>  	{ .compatible = "rockchip,rk3576-saradc", .data = &rk3576_saradc_cfg },
>  	{ .compatible = "rockchip,rk3588-saradc", .data = &rk3588_saradc_cfg },
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


