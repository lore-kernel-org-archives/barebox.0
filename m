Delivery-date: Fri, 09 Dec 2022 08:17:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Xd5-00FmXY-H3
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 08:17:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Xd4-0006tD-AG
	for lore@pengutronix.de; Fri, 09 Dec 2022 08:17:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AML/2r/tNYx2ek1csRKfBKY3/5RyFIUWtqYblQYfOuE=; b=3ZRZmqfPeEUB77dyz9PUzD5GUF
	d+mi7fEKod28a0t7LQsuZPAMSAlw4lK2tCOJjVySzrLRuSG5xfLURx+p51d7tZ8xT6cpR5N4VoHE/
	YF1ZrdMj4Z1Gz8/GZRiBaQCCqwqHGk+S6oXU96GOOk5XMfFul+nJW6kX3dcFmOJznvWVSdtzHZgi1
	5h9uCCwz3UWAke/As86B0GpLlH4+Be6xVUgX18RlAOgxehfXCEJ0YW+yCCuFs6EeYDoO7aQBVds34
	b04IyYu33x3SpuybVk6HLBh4bd7CGp61xbxxnBopbagBTjsY0ougEndNnItt1eSyfzye4okmm6Y9p
	VVZOm3Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3Xbw-004uqv-0F; Fri, 09 Dec 2022 07:15:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3Xbr-004upR-EH
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 07:15:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1p3Xbq-0006YQ-45; Fri, 09 Dec 2022 08:15:50 +0100
Message-ID: <db8fc67f-6bb1-0c75-9df5-8423b5aa8f04@pengutronix.de>
Date: Fri, 9 Dec 2022 08:15:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20221101062350.3206890-1-a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221101062350.3206890-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221208_231551_503054_FDEB1EE8 
X-CRM114-Status: GOOD (  17.09  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: start: print debugging info when
 CONFIG_DEBUG_INITCALLS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 01.11.22 07:23, Ahmad Fatoum wrote:
> Like we now do during PBL, have CONFIG_DEBUG_INITCALLS also activate
> the early barebox start debug logging just prior to initcall execution.
> 
> This is useful when debugging early hands and will only be visible if
> CONFIG_DEBUG_LL is enabled and configured appropriately.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Ping.

> ---
>  arch/arm/cpu/start.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index f9b617aa855a..be303514c23d 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -3,6 +3,10 @@
>  
>  #define pr_fmt(fmt) "start.c: " fmt
>  
> +#ifdef CONFIG_DEBUG_INITCALLS
> +#define DEBUG
> +#endif
> +
>  #include <common.h>
>  #include <init.h>
>  #include <linux/sizes.h>

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



