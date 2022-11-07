Delivery-date: Mon, 07 Nov 2022 14:06:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os1pS-000Qwl-1E
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 14:06:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os1pQ-0005CV-Dg
	for lore@pengutronix.de; Mon, 07 Nov 2022 14:06:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JrD/lLFXqkVd7RVVDheyiY1AWpIlDZJlIhohosgjG/I=; b=oJYvYmsPYFr36Zv6j2DVdX28Wt
	xu46BfV8gBgn4PwFBuIAhVuoBGvI6c8T9P6vwdurkDkhAtrgfSyz4oTwKjokMd/OKflLg0n+9sEU8
	Bl5Iton0VQRQzVIraT1CaQV03tcRsOZPAqF5uWQL0nWhLuEHvG94UpYoK6IdDieu/pAc/Jw6nhKE4
	lCozpR5XfrHQ+fW+0rblmvQ8QUf3LxV5RjF0BwaaCOee0GU+YaxQ0IGN8zTwJPcZqNxiyrgWoP0F2
	mbESazGuUifJAkzqek7mogI7vVO4jDFyl++TmjBl8r3Hnd+8zaDragJ1cvF0OxKtSrG3qmFsUy0ao
	BvjVwT7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os1nc-00EeXe-LJ; Mon, 07 Nov 2022 13:04:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os1nM-00EeQg-1Q
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 13:04:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=irc.pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1os1nH-0004UU-Vi
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 14:04:04 +0100
Message-ID: <eb51a31b14f879640ad4a6e237894733df357c9f.camel@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 07 Nov 2022 14:04:02 +0100
In-Reply-To: <20221107111701.2570303-5-o.rempel@pengutronix.de>
References: <20221107111701.2570303-1-o.rempel@pengutronix.de>
	 <20221107111701.2570303-5-o.rempel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_050408_152729_316067D5 
X-CRM114-Status: GOOD (  21.59  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 5/8] drivers: net: fec_imx: add promiscuous mode
 configuration support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Oleksij,

On Mon, 2022-11-07 at 12:16 +0100, Oleksij Rempel wrote:
> Add promiscuous mode configuration support to allow using multiple
> MAC address
> on same FEC interfaces.
> 
minor nitpick: s/interfaces/interface/

Best regards
Johannes

> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/fec_imx.c | 24 +++++++++++++++++++++++-
>  drivers/net/fec_imx.h |  1 +
>  2 files changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 673555a48a..da42a479d9 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -25,6 +25,22 @@
>  
>  #include "fec_imx.h"
>  
> +static int fec_set_promisc(struct eth_device *edev, bool enable)
> +{
> +       struct fec_priv *fec = (struct fec_priv *)edev->priv;
> +       u32 rcntl;
> +
> +       rcntl = readl(fec->regs + FEC_R_CNTRL);
> +
> +       if (enable)
> +               rcntl |= FEC_R_CNTRL_PROMISC;
> +       else
> +               rcntl &= ~FEC_R_CNTRL_PROMISC;
> +
> +       writel(rcntl, fec->regs + FEC_R_CNTRL);
> +
> +       return 0;
> +}
>  
>  /*
>   * MII-interface related functions
> @@ -257,10 +273,13 @@ static int fec_init(struct eth_device *dev)
>          */
>         writel(0x00000000, fec->regs + FEC_IMASK);
>  
> +       rcntl = readl(fec->regs + FEC_R_CNTRL);
> +       rcntl &= FEC_R_CNTRL_PROMISC;
> +
>         /*
>          * Set FEC-Lite receive control register(R_CNTRL):
>          */
> -       rcntl = FEC_R_CNTRL_MAX_FL(1518);
> +       rcntl |= FEC_R_CNTRL_MAX_FL(1518);
>  
>         rcntl |= FEC_R_CNTRL_MII_MODE;
>         /*
> @@ -768,6 +787,7 @@ static int fec_probe(struct device_d *dev)
>         edev->halt = fec_halt;
>         edev->get_ethaddr = fec_get_hwaddr;
>         edev->set_ethaddr = fec_set_hwaddr;
> +       edev->set_promisc = fec_set_promisc;
>         edev->parent = dev;
>  
>         dma_set_mask(dev, DMA_BIT_MASK(32));
> @@ -834,6 +854,8 @@ static int fec_probe(struct device_d *dev)
>         if (ret)
>                 goto free_gpio;
>  
> +       fec_set_promisc(edev, false);
> +
>         /*
>          * reserve memory for both buffer descriptor chains at once
>          * Datasheet forces the startaddress of each chain is 16 byte
> aligned
> diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
> index 316eefe48f..9bb1c64b55 100644
> --- a/drivers/net/fec_imx.h
> +++ b/drivers/net/fec_imx.h
> @@ -58,6 +58,7 @@
>  #define FEC_R_CNTRL_RMII_10T           (1 << 9) /* i.MX28 specific
> */
>  #define FEC_R_CNTRL_RMII_MODE          (1 << 8) /* i.MX28 specific
> */
>  #define FEC_R_CNTRL_FCE                        (1 << 5)
> +#define FEC_R_CNTRL_PROMISC            (1 << 3)
>  #define FEC_R_CNTRL_MII_MODE           (1 << 2)
>  
>  #define FEC_IEVENT_HBERR                0x80000000 /* Note: Not on
> i.MX28 */

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



