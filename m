Delivery-date: Thu, 03 Feb 2022 13:43:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFbSI-004fog-FD
	for lore@lore.pengutronix.de; Thu, 03 Feb 2022 13:43:18 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFbSH-0003Ln-7z
	for lore@pengutronix.de; Thu, 03 Feb 2022 13:43:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+sG5R/CBKZxbW4puJ8FFfL1j0iHIm2rV6+Y9EA5whs=; b=Jn31Yvyf6SC+tS
	2jARwU4Vhbpaa23BIzHmemEwqg6U/dnT+TPxIno6aYKNWQmtFcDpGE3++0dGn85HmRpQOJiL2PxMd
	TR7rPPrx6F6JJfcF+XU6w1HCv0LXmtMQiOICC0keZYO8gZNVB1SRsJlUXbEbIqKjURMdBISt8Jd/j
	apsilRtYhrTJYw5H67nJinnjjRF5TZH+c0H82rlYmQvtetnjqdrX7vuGz98AUb8k4D6XhmwXPLqxn
	60BXh+mo+jII/vPWNOjqDilL5n1REXZ6TS+Zzb+FmsDT1BIgb3Ovz8cTuYYxaT/c4nfgHfhJfg3eV
	11JvLTVaqLPGvOILF9TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFbQl-001Jx2-QE; Thu, 03 Feb 2022 12:41:43 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFbQg-001JZY-Ku
 for barebox@lists.infradead.org; Thu, 03 Feb 2022 12:41:40 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nFbMY-0002eJ-9n; Thu, 03 Feb 2022 13:37:22 +0100
Message-ID: <6ad8f985-f06c-7cd8-9e26-fa9c84cf109e@pengutronix.de>
Date: Thu, 3 Feb 2022 13:37:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20220203104552.3158202-1-o.rempel@pengutronix.de>
 <20220203104552.3158202-7-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220203104552.3158202-7-o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_044138_714781_11395AC4 
X-CRM114-Status: GOOD (  18.54  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 6/6] ARM: rpi: enable deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 03.02.22 11:45, Oleksij Rempel wrote:
> With deep-probe enabled we can reduce boot time from 250msec to 190msec
> on the RPi2

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Nice!

> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index 6e62d19643..9aa150de56 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -2,6 +2,7 @@
>  // SPDX-FileCopyrightText: 2009 Carlo Caione <carlo@carlocaione.org>
>  
>  #include <common.h>
> +#include <deep-probe.h>
>  #include <init.h>
>  #include <fs.h>
>  #include <of.h>
> @@ -607,6 +608,7 @@ static const struct of_device_id rpi_of_match[] = {
>  	{ .compatible = "raspberrypi,3-model-b-plus", .data = rpi_3_model_b_plus },
>  	{ /* sentinel */ },
>  };
> +BAREBOX_DEEP_PROBE_ENABLE(rpi_of_match);
>  
>  static struct driver_d rpi_board_driver = {
>  	.name = "board-rpi",


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

