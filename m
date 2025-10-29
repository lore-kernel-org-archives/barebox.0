Delivery-date: Wed, 29 Oct 2025 08:05:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE0Ey-00Cxe7-1B
	for lore@lore.pengutronix.de;
	Wed, 29 Oct 2025 08:05:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE0Ex-0004ja-Qa
	for lore@pengutronix.de; Wed, 29 Oct 2025 08:05:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ECg9QcWBBrZM6w8aImYQTirFfDTV6vnssPze/bPwdcY=; b=jwDRgw9+W3vsPnVmAIR5aNKtYj
	FAcLlDBe3/3BorKv31ZvzYkhXHHK3sihAG6HLmugduNBjj1nrcROij0JuZDZQMXGpHDtTa30D95uo
	XmBH7rXfR1wCOZQ2Ko2DsigPcnnHZZtXEGkXCEpmAfKMu20T1h/+hxgs9bHc1nlz7SgHV18AMQ7e6
	mjpMjLu1TZiCM9G/PRw134M0FMragy+SbIuIaLzp/fIU9kSZ+TQk44DQ2yKTLdz9U7Gdc2+w2lyhM
	2fn/f9M0uYJXIVoirlm7pvTrmH+Z0SpDd9jE3AlnLeeHJyyZakGi00aV+TBlRyrcW70YUOUPdKs4n
	SIaPdPag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE0EV-000000000GA-1c4A;
	Wed, 29 Oct 2025 07:04:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE0ES-000000000F2-34UL
	for barebox@lists.infradead.org;
	Wed, 29 Oct 2025 07:04:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vE0EQ-0004dI-KW; Wed, 29 Oct 2025 08:04:30 +0100
Message-ID: <a45014da-fa2c-4b1d-93fb-4ab46743a95c@pengutronix.de>
Date: Wed, 29 Oct 2025 08:04:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <20251028154453.2990491-1-f.pflug@pengutronix.de>
 <20251028154453.2990491-3-f.pflug@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251028154453.2990491-3-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_000432_772999_EFC54270 
X-CRM114-Status: GOOD (  20.23  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/3] console_common: get_first_active: respect security
 policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 28.10.25 16:43, Fabian Pflug wrote:
> If the console input is deactivated through a security policy, then
> there is no need to iterate over the current consoles, as none should
> have a STDIN.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
> v2:
> Fix in console common instead of working around it in startup.c
>  common/console_common.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/common/console_common.c b/common/console_common.c
> index 5b7a64c99c..a8319c20f3 100644
> --- a/common/console_common.c
> +++ b/common/console_common.c
> @@ -23,6 +23,7 @@
>  #include <linux/math64.h>
>  #include <linux/sizes.h>
>  #include <linux/overflow.h>
> +#include <security/config.h>
>  
>  #ifndef CONFIG_CONSOLE_NONE
>  
> @@ -331,6 +332,11 @@ struct console_device *console_get_first_active(void)
>  {
>  	struct console_device *cdev;
>  	const unsigned char active = CONSOLE_STDIN | CONSOLE_STDOUT;
> +
> +	/* if no console input is allows, then we can't have STDIN on any. */
> +	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
> +		return NULL;

This stretches the definition of an "active" console, because the console
is still usable for output. Please rename to console_get_first_interactive()
as requested on v1.

Thanks,
Ahmad

> +
>  	/*
>  	 * Assumption to have BOTH CONSOLE_STDIN AND STDOUT in the
>  	 * same output console


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


