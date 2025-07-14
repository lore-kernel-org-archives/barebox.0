Delivery-date: Mon, 14 Jul 2025 08:21:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubCZZ-00HJZ3-2r
	for lore@lore.pengutronix.de;
	Mon, 14 Jul 2025 08:21:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubCZZ-0000N2-9u
	for lore@pengutronix.de; Mon, 14 Jul 2025 08:21:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qy175tEx+idWpKCXkNVpJLOC+76lO1cgnUxpAtoKRqc=; b=Q5sex0SxJ9IdAcrip1Jp40/pIN
	gKEXJIw9vlXY7MuRmCgUZLazuMXB2Z++T7I4bBbJuIzFtv9Q8k/D6fVl0q39yGUe4HEps/5timUr9
	yotw4Ql/Vzd4ZsmlTBMT5r61iPR5ftuYpbwoAlO6RCfv1/k5G7GQDlr5rLofA943aJaUazCeiLdQR
	5nJHSFwSOqct/qAhfVg5ROIuh3qlUdps7U+0lzJzFoIw9aSpyfMygd3h5pjAHsW8uMxJKpEodLqQp
	Bc8+0ceMgs5huwoZN9+yw2yqWWlPCLOoiopDuk2TrJ+/daj1JjEXF33fp59YP9aqi00FQZeGLxBh3
	Lu2Co2bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubCZ3-00000001KTb-1ofM;
	Mon, 14 Jul 2025 06:21:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubCMb-00000001HuG-2OTI
	for barebox@lists.infradead.org;
	Mon, 14 Jul 2025 06:08:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ubCMa-00025E-CN; Mon, 14 Jul 2025 08:08:32 +0200
Message-ID: <6f0aaf87-6363-40b4-99df-43e875ec6afa@pengutronix.de>
Date: Mon, 14 Jul 2025 08:08:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Gwenhael Goavec-Merou <gwenj@trabucayre.com>,
 barebox@lists.infradead.org, Lucas Stach <lst@pengutronix.de>
Cc: Johannes Roith <johannes@gnu-linux.rocks>,
 Sascha Hauer <sha@pengutronix.de>,
 Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
References: <20250707055331.2355809-1-gwenj@trabucayre.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250707055331.2355809-1-gwenj@trabucayre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250713_230833_616474_0AECE31E 
X-CRM114-Status: GOOD (  17.33  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] arch/arm/boards/avnet-zedboard/zedboard.zynqcfg:
 removed everything but stop instruction to fix barebox boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 07.07.25 07:53, Gwenhael Goavec-Merou wrote:
> From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> 
> As mentionned in [1,2] sequence present in arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
> causes boot failure without any messages.
> 
> This patch removes all instructions but the last one allowing to have
> access to the barebox prompt
> 
> [1] https://lore.barebox.org/barebox/VI1PR02MB4429606E3B06D0F53D2B4175AB4DA@VI1PR02MB4429.eurprd02.prod.outlook.com/T/#m5fa4fe7832215a7e8160ef6fbd3d122dd58b0a92
> [2] https://lore.barebox.org/barebox/VI1PR02MB4429606E3B06D0F53D2B4175AB4DA@VI1PR02MB4429.eurprd02.prod.outlook.com/T/#m5fa4fe7832215a7e8160ef6fbd3d122dd58b0a92

The title is a bit long, but I think Sascha can fix it up on apply.
I'd rather suggest:

  ARM: zynq: zed: remove early clock config causing hang

Lucas, do you have any input why this configuration may cause issues?

Anyhow:

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> 
> Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> ---
>  .../boards/avnet-zedboard/zedboard.zynqcfg    | 20 -------------------
>  1 file changed, 20 deletions(-)
> 
> diff --git a/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg b/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
> index c6a96aec7b..8e68bbf618 100644
> --- a/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
> +++ b/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
> @@ -1,24 +1,4 @@
>  #include <zynq/zynq7000-header-regs.h>
>  
> -wm 32 ZYNQ_SLCR_UNLOCK		0x0000DF0D
> -wm 32 ZYNQ_CLK_621_TRUE		0x00000001
> -wm 32 ZYNQ_APER_CLK_CTRL	0x01FC044D
> -
> -wm 32 ZYNQ_ARM_PLL_CTRL		0x00028008
> -wm 32 ZYNQ_ARM_PLL_CFG		0x000FA220
> -wm 32 ZYNQ_ARM_PLL_CTRL		0x00028010
> -wm 32 ZYNQ_ARM_PLL_CTRL		0x00028011
> -wm 32 ZYNQ_ARM_PLL_CTRL		0x00028010
> -wm 32 ZYNQ_ARM_PLL_CTRL		0x00028000
> -
> -wm 32 ZYNQ_IO_PLL_CTRL		0x0001E008
> -wm 32 ZYNQ_IO_PLL_CFG		0x001452C0
> -wm 32 ZYNQ_IO_PLL_CTRL		0x0001E010
> -wm 32 ZYNQ_IO_PLL_CTRL		0x0001E011
> -wm 32 ZYNQ_IO_PLL_CTRL		0x0001E010
> -wm 32 ZYNQ_IO_PLL_CTRL		0x0001E000
> -
> -wm 32 ZYNQ_SDIO_CLK_CTRL	0x00000a03
> -
>  /* stop */
>  wm 32 0xFFFFFFFF			0x00000000


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


