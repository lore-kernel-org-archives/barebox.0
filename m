Delivery-date: Mon, 14 Jul 2025 09:41:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubDod-00HKbh-1v
	for lore@lore.pengutronix.de;
	Mon, 14 Jul 2025 09:41:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubDod-0000Mb-0S
	for lore@pengutronix.de; Mon, 14 Jul 2025 09:41:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EP6zm/CuqWytWvrC+VuEdrBLEy1Pk9b+aeJ7vbDuynw=; b=jE4NloYqqcX9ZG
	uJ8rb4URxG4zU/YXnUDospEbsn5Rx6uTDHaadvNtvm2sV/DD3bbHxakF7Ylml802B/bmI4se55QZo
	aHxyOvWgNKeGyGhQjpARc7b9IVAg78kjvbyJspTVPw+2STkCOecqC2Dd/P5rtNBK6zKls8zYAse9Q
	2U6TwSZn9xRA8t+aLVlHdaFcskRnLwFOwtdNCex5nzrRzSgmqGGgt3mSGCJb0kR1iGBg8kWISSovV
	6lP6D5O24YG+4tvJoVeV8lZzn6ns436L1cXIfGL5LmTGI0/O8PIz68nXmN0kw+hqNSseQevUbHDZl
	MWblvLPVzIegKKYd2cGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubDo8-00000001V2j-3oLZ;
	Mon, 14 Jul 2025 07:41:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubDTx-00000001SBF-35Jn
	for barebox@lists.infradead.org;
	Mon, 14 Jul 2025 07:20:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ubDTw-0004jx-DC; Mon, 14 Jul 2025 09:20:12 +0200
Message-ID: <29f25213-39b8-40e5-af30-a8d4fcef5ecb@pengutronix.de>
Date: Mon, 14 Jul 2025 09:20:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Gwenhael Goavec-Merou <gwenj@trabucayre.com>, barebox@lists.infradead.org
References: <20250707055331.2355809-1-gwenj@trabucayre.com>
 <20250707055331.2355809-2-gwenj@trabucayre.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250707055331.2355809-2-gwenj@trabucayre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_002013_783511_6F9A1295 
X-CRM114-Status: GOOD (  19.89  )
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
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>, Johannes Roith <johannes@gnu-linux.rocks>, Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 2/3] arch/arm/boards/avnet-zedboard/lowlevel.c: added SDIO
 clk frequency configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 07.07.25 07:53, Gwenhael Goavec-Merou wrote:
> From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> 
> As mentionned in [1] MMC sometime fails to be initialized/ is not
> working with this type of error:
> 
> arasan-sdhci e0100000.mmc@e0100000.of: registered as mmc0
> malloc space: 0x17e00000 -> 0x1fdfffff (size 128 MiB)
> arasan-sdhci e0100000.mmc@e0100000.of: error while transferring data for command 6
> arasan-sdhci e0100000.mmc@e0100000.of: state = 0x01ff0202 , interrupt = 0x00208000
> mmc0: Card's startup fails with -74
> barebox-environment chosen:environment-sd.of: probe failed: No such file or directory
> environment load /dev/env0: No such file or directory
> 
> This patch adds SDIO clck configuration allowing to have a valid MMC
> clock frequency.
> 
> [1] https://lore.barebox.org/barebox/VI1PR02MB4429606E3B06D0F53D2B4175AB4DA@VI1PR02MB4429.eurprd02.prod.outlook.com/T/#m1cb8598da4741c0b7a41944e1aecef373dd74319

Same comment as on v1, I'd suggest as commit message title:

  ARM: zynq: zed: add SDIO clk frequency configuration


I am wondering why this is needed when we seem to have a clock driver for
the platform, but your workaround looks ok:

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> 
> Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> ---
>  arch/arm/boards/avnet-zedboard/lowlevel.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
> index 605aab783a..b7a98f5a82 100644
> --- a/arch/arm/boards/avnet-zedboard/lowlevel.c
> +++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
> @@ -241,6 +241,7 @@ static void avnet_zedboard_ps7_init(void)
>  	/* poor mans clkctrl */
>  	writel(0x00001403, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_UART_CLK_CTRL);
>  	writel(0x00000101, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_LQSPI_CLK_CTRL);
> +	writel(0x00001401, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_SDIO_CLK_CTRL);
>  
>  	/* GEM0 */
>  	writel(0x00000001, 0xf8000138);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


