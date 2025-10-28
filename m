Delivery-date: Tue, 28 Oct 2025 13:50:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDj9b-00CgiT-14
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 13:50:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDj9a-0006Ib-PM
	for lore@pengutronix.de; Tue, 28 Oct 2025 13:50:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jQ3vFDmjAhDY8pZyZoSs65qyEaBiduySwBpdJspTSp8=; b=1hgOXyxR7TYJGGMBTwXU1vSCxx
	YZkvtQFGJwKhozVQDs0ql4hEmtkmjSvVfEZBGCM/8a/Sid1lKFElIBp+rFDAFVUNmyDuOaA6jbRGM
	5Tgvcpyambhruh4sh5gemGmUj1ya/hvVMl1SwOGQ25MX67p5poUJ9sQrGjD/lPe4D0Viuk8Kaz26h
	jt/f4xm1r+wFsdTkGaf3KH7e6Nm5hgMmvug+T4lfjAGiiwRyg9PqABbJXL4cccoDt88imU5topEe6
	UswMQIz0xeHstvImMvUv8xdQxG6lldtIi+ii0Y/SQiWzwb3SmgZYX13GH8Nx0tuC2s28u79UJpI+q
	FrMzM4kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDj9A-0000000Fy3G-246u;
	Tue, 28 Oct 2025 12:49:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDj97-0000000Fy2e-0kZ5
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 12:49:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDj95-0006EK-JW; Tue, 28 Oct 2025 13:49:51 +0100
Message-ID: <5177583f-3b92-4d7e-b872-ff9a0a861187@pengutronix.de>
Date: Tue, 28 Oct 2025 13:49:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <20251028121820.1242298-1-f.pflug@pengutronix.de>
 <20251028121820.1242298-2-f.pflug@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251028121820.1242298-2-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_054953_220134_A941578E 
X-CRM114-Status: GOOD (  19.72  )
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
Subject: Re: [PATCH 2/3] startup: autoboot: disable on deactivated console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 10/28/25 1:18 PM, Fabian Pflug wrote:
> If the console input is deactivated either globally or through a
> security policy, then it does not make sense to wait for user input, but
> instead boot the system directly.

CONFIG_CONSOLE_DISABLE_INPUT is unneeded here as it removed the input
flag from the consoles and so console_get_first_active would return NULL.

I think console_get_first_active() should maybe return NULL if
SCONFIG_CONSOLE_INPUT is disabled. In that case, we should probably
rename it, e.g. console_get_first_interactive.


> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  common/startup.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/common/startup.c b/common/startup.c
> index 3bc2609006..ea5436afa6 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -188,9 +188,11 @@ enum autoboot_state do_autoboot_countdown(void)
>  	if (autoboot_state != AUTOBOOT_UNKNOWN)
>  		return autoboot_state;
>  
> -	if (!console_get_first_active() &&
> -	    global_autoboot_state != AUTOBOOT_ABORT &&
> -	    global_autoboot_state != AUTOBOOT_HALT) {
> +	if ((!console_get_first_active() &&
> +	     global_autoboot_state != AUTOBOOT_ABORT &&
> +	     global_autoboot_state != AUTOBOOT_HALT) ||
> +	    !IS_ALLOWED(SCONFIG_CONSOLE_INPUT) ||
> +		IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT)) {
>  		printf("\nNon-interactive console, booting system\n");
>  		return autoboot_state = AUTOBOOT_BOOT;
>  	}

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



