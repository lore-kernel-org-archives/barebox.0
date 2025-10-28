Delivery-date: Tue, 28 Oct 2025 13:39:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDizU-00CgYB-2e
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 13:39:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDizU-00056I-85
	for lore@pengutronix.de; Tue, 28 Oct 2025 13:39:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I4bobmW7vHi6bhLHW5W9VndtX/dmdP9KSpcUHURXxfA=; b=if3pZczIs0k8bZFZNgYaB+Ci6H
	mxSh8JdCfpgbe7mVariK5OkmZ9Bmj+4zqhJGHJZQ+iSFzQrNmUsl/jiTIlJAp9rH+c23pSNv6fiHh
	aTM4o8E+ar1SMdSk7qHH5+STvsjH1rsQ5ON6PAvYM0PTMQpY7JlQObCugWPfQLp+fzcXeULX087L3
	dAqey6hxxTr1XN2+QJRcgAgqkrVtzV04Fib3tzDZ8KgWD8vAdnbwzBqXJXLVK7rRu+uTT1ywEJNj5
	GKjpPCW/bjeoZAVCBs5hGk08Is7Vyf68KrTYQp9A6YB9VRdK7oBsy/AUnNiBvGdfxV1AxMo8rF0g0
	ykjMn29w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDiz0-0000000Fx3N-44Yk;
	Tue, 28 Oct 2025 12:39:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDiyy-0000000Fx2a-2H4I
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 12:39:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDiyw-0004zd-ST; Tue, 28 Oct 2025 13:39:22 +0100
Message-ID: <2fc02718-032e-4ad4-89a5-e780836c430d@pengutronix.de>
Date: Tue, 28 Oct 2025 13:39:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <20251028121820.1242298-1-f.pflug@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251028121820.1242298-1-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_053924_590232_F3402D8E 
X-CRM114-Status: GOOD (  22.24  )
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
Subject: Re: [PATCH 1/3] startup: check for console before showing menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Fabian,

On 10/28/25 1:18 PM, Fabian Pflug wrote:
> If there is no input available or possible due to policy settings, it
> does not make sense to show a menu and ask for input.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  common/startup.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/common/startup.c b/common/startup.c
> index 8d36ffceb4..3bc2609006 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -45,6 +45,7 @@
>  #include <pbl/handoff-data.h>
>  #include <libfile.h>
>  #include <fuzz.h>
> +#include <security/config.h>
>  
>  extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
>  		  __barebox_initcalls_end[];
> @@ -361,14 +362,15 @@ static int run_init(void)
>  		run_shell();
>  	}
>  
> -	do {
> -		/*
> -		 * Let's run the command once at least, so an error
> -		 * message is printed if the file doesn't exist
> -		 */
> -		run_command(MENUFILE);
> -	} while (stat(MENUFILE, &s) == 0);
> -
> +	if(!IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT) && IS_ALLOWED(SCONFIG_CONSOLE_INPUT)) {

CONFIG_CONSOLE_DISABLE_INPUT only influences the default, it can still
be changed later at runtime, so this is not necessarily correct.

> +		do {

Move the IS_ALLOWED(SCONFIG_CONSOLE_INPUT) check here?

Feels more natural to do it in the loop than outside. Extra benefit: We
could use it for testing purposes (Menu entry that locks the console..)

Cheers,
Ahmad

> +			/*
> +			* Let's run the command once at least, so an error
> +			* message is printed if the file doesn't exist
> +			*/
> +			run_command(MENUFILE);
> +		} while (stat(MENUFILE, &s) == 0);
> +	}
>  	hang();
>  }
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



