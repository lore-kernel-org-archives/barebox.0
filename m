Delivery-date: Thu, 24 Jun 2021 21:07:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwUh0-0001Va-E2
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 21:07:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwUgz-0003eg-25
	for lore@pengutronix.de; Thu, 24 Jun 2021 21:07:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p+ki5gPDSHo7t++WOVk+Ur+gl7BTsO9lA42XXE301Fc=; b=B5cMjs2EQZQtZuoXuVTIVLW6uU
	bbyt9NVXAIdsZdARBOnDwqy0goHWR2i3iLNzG1cMN8KxqKsRT/xiAn5NCQzUEXEhtP13Jj7cV/y17
	5bHqvQTCNQi42DOYaKfwCFLpb4m3Y82SnY9wmcJtHtoGzAZnz9DsJZXMZ6RPnw6ChTRI3MUIKnvoi
	w9oo3xy6TxPjndPZRS810D8AdQGsgn5QMWAr9CEHi2MgESb4g8FE1QKpq918GOD9NTi9XwElyCM/f
	ly9NkENqDYs1AGBWSe/Qj9/2BIpbp+sVpRETDkRKLr5TdVD4briLgfyaeIiJQzVoUtRQ29GSoNqBq
	IaFtNj7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwUfO-00FxfX-Qb; Thu, 24 Jun 2021 19:05:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwUfI-00FxeI-53
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 19:05:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lwUfG-0003K4-Ij; Thu, 24 Jun 2021 21:05:26 +0200
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: barebox@lists.infradead.org
References: <20210624150931.891123-1-geert@linux-m68k.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c20c131f-89d9-a3c0-1d91-9d3de583236c@pengutronix.de>
Date: Thu, 24 Jun 2021 21:05:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210624150931.891123-1-geert@linux-m68k.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_120528_239090_A6D958AB 
X-CRM114-Status: GOOD (  16.56  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: starfive-jh7100: Fix duplicate numbers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Geert,

On 24.06.21 17:09, Geert Uytterhoeven wrote:
> Fixes: 6f92e74e5b94d8e6 ("clk: add initial StarFive clock support")
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
> Completely untested.

Thanks for catching!
Gave it a run and it[1] still boots to shell:

Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

[1]: https://github.com/a3f/barebox/tree/beaglev

> 
>  include/dt-bindings/clock/starfive-jh7100.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/dt-bindings/clock/starfive-jh7100.h b/include/dt-bindings/clock/starfive-jh7100.h
> index 9ad5e7f9bfd5f655..2512bb810ec45c8b 100644
> --- a/include/dt-bindings/clock/starfive-jh7100.h
> +++ b/include/dt-bindings/clock/starfive-jh7100.h
> @@ -42,9 +42,9 @@
>  #define CLK_U74_CORE1		33
>  #define CLK_U74_AXI		34
>  #define CLK_U74RTC_TOGGLE	35
> -#define CLK_SGDMA2P_AXI		35
> +#define CLK_SGDMA2P_AXI		36
>  #define CLK_DMA2PNOC_AXI	37
> -#define CLK_SGDMA2P_AHB		37
> +#define CLK_SGDMA2P_AHB		38
>  #define CLK_DLA_BUS		39
>  #define CLK_DLA_AXI		40
>  #define CLK_DLANOC_AXI		41
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

