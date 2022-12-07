Delivery-date: Wed, 07 Dec 2022 08:04:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oTv-00DLYb-OT
	for lore@lore.pengutronix.de; Wed, 07 Dec 2022 08:04:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oTv-0000xn-4O
	for lore@pengutronix.de; Wed, 07 Dec 2022 08:04:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5wKx+kZaqqKEHLfuc0iI9miTwl6MdyzQOEs0fp23+CU=; b=UuhMN9cNIL/7ToNOPYTrGw08D2
	xcvyH52vflEFRXa8hiVUWEzq6QQuAhEcgMPQQwByR9vjNs8uUICdA9Hppha8JPGH0xEMZXD90rW+A
	4u/UkwaFbgn+SecoUBbrRMCJLTQB0FJEMZCOJelyHVFum4RkdamloATeypu5fzQwZ5JNT7ZJmz0no
	Go4g082kKxKiQsOEtwiipNH7RMOOSIja+uBhBzSpK7AjdISe7jZ/rEmF4PWrAgpXVwWI3fFqJw7hn
	We9cXN3+chm3MjL22f5937fc8pQvkRorOH8E1ZGxqsR7XVzBr8z4vcABMtJ+BfcaOyY1kl/oh9Xrk
	oNEP6hHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oSh-00DieZ-Qc; Wed, 07 Dec 2022 07:03:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oSd-00Didy-E6
	for barebox@lists.infradead.org; Wed, 07 Dec 2022 07:03:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oSb-0000hD-S5; Wed, 07 Dec 2022 08:03:17 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oSb-0001gj-Kv; Wed, 07 Dec 2022 08:03:17 +0100
Date: Wed, 7 Dec 2022 08:03:17 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221207070317.GD29728@pengutronix.de>
References: <20221206115839.1847916-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221206115839.1847916-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_230319_488455_0EAD1104 
X-CRM114-Status: GOOD (  18.55  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! ARM: i.MX8M: implement bootrom log viewing command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Dec 06, 2022 at 12:58:39PM +0100, Ahmad Fatoum wrote:
> FAIL is reported even for non-HAB boot, so skip that.
> 0x82 is apparently documented wrongly in application note, see:
> https://patchwork.ozlabs.org/project/uboot/patch/20220414163623.16500-1-fedor.ross@ifm.com/
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/bootrom-cmd.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/bootrom-cmd.c b/arch/arm/mach-imx/bootrom-cmd.c
> index 6269f86cbc0d..0238d09b169f 100644
> --- a/arch/arm/mach-imx/bootrom-cmd.c
> +++ b/arch/arm/mach-imx/bootrom-cmd.c
> @@ -117,7 +117,8 @@ static int imx8m_bootrom_decode_log(const u32 *rom_log)
>  			       rom_log[++i]);
>  			continue;
>  		case 0x82:
> -			printf("Start to execute boot device driver pre-config\n");
> +			printf("Start to execute boot device driver pre-config @%u ticks\n",
> +			       rom_log[++i]);
>  			continue;
>  		case 0x83:
>  			printf("Boot device driver pre-config completes\n");
> @@ -144,8 +145,8 @@ static int imx8m_bootrom_decode_log(const u32 *rom_log)
>  			continue;
>  
>  		case 0xa0:
> -			printf("Image authentication result: %s (0x%08x) @%u ticks\n",
> -			       (rom_log[i+1] & 0xFF) == 0xF0 ? "PASS" : "FAIL",
> +			printf("Image authentication result: %s(0x%08x) @%u ticks\n",
> +			       (rom_log[i+1] & 0xFF) == 0xF0 ? "PASS " : "",
>  			       rom_log[i+1], rom_log[i+2]);
>  			i += 2;
>  			continue;
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


