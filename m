Delivery-date: Tue, 24 Feb 2026 16:59:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuuor-005E4H-0w
	for lore@lore.pengutronix.de;
	Tue, 24 Feb 2026 16:59:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuuor-0000jK-JR
	for lore@pengutronix.de; Tue, 24 Feb 2026 16:59:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DkS3PrZM0DvV9TzQWvHYuDbl8SXvH6pVF8GQB2C+jAU=; b=q+HbDEfqeWcaL/pbqYQj/cQDrO
	Z+o0Je0eMBYT4yeVSgKP9J3bOuTxETu+Xn4tAfj/ed527ybygH5lhFsB9qgV0kyLks23MHt1pAHxP
	iMIXgnbgGSkgbcmvpJjpjYkqBRzhAV6zQaB97rgJbwu1D8OOuZbuDkYlEUDjok3NrwK9eXXlkb3SF
	tsrbdkxomsDln+AFcFkAQ2exqJ8BQgodsuNrrZkHVHRlyTgnlzrlbaiFiA4pdxPvSQwY7gDcMOC9Z
	5729X6/FCx7/F9ZQy6NjQqvL1UXMxxXFqx3Ppg85qu9kV4qrMxPG6pbeFyxOZ1Suo/cQQmVSEQAVw
	AY1582PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuuoU-00000002MaS-2LnT;
	Tue, 24 Feb 2026 15:59:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuuoR-00000002Ma5-336n
	for barebox@lists.infradead.org;
	Tue, 24 Feb 2026 15:59:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vuuoO-0000bY-Vq; Tue, 24 Feb 2026 16:59:01 +0100
Message-ID: <9da6e1a2-0753-47dc-9193-dc349e866b11@pengutronix.de>
Date: Tue, 24 Feb 2026 16:59:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260223153908.1867811-1-s.hauer@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20260223153908.1867811-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_075903_769458_7C4BBB5E 
X-CRM114-Status: GOOD (  21.14  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Debug: add Kconfig option to abort autoboot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 2026-02-23 16:39, Sascha Hauer wrote:
> For debugging purposes it's sometimes useful when barebox doesn't boot
> through, but stops at the prompt.

Isn't this already compile-time configurable by setting the defaultenv
autoboot to "abort"?

Regards,
Jonas

> This allows for automated debugging
> without having to catch the autoboot timeout first. This normally works
> thanks to labgrid, but at the cost that messages are eaten up by the
> barebox strategy.
> 
> This adds a Kconfig option to just stop at the prompt.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   common/Kconfig.debug | 6 ++++++
>   common/startup.c     | 4 +++-
>   2 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/common/Kconfig.debug b/common/Kconfig.debug
> index b307b84202..13a686d0ad 100644
> --- a/common/Kconfig.debug
> +++ b/common/Kconfig.debug
> @@ -56,6 +56,12 @@ config DEBUG_INITCALLS
>   	help
>   	  If enabled this will print initcall traces.
>   
> +config DEBUG_AUTOBOOT_ABORT
> +	bool "Abort autoboot"
> +	help
> +	  If enabled barebox will not automatically boot but start a shell
> +	  instead.
> +
>   config DEBUG_PBL
>   	bool "Print PBL debugging information"
>   	depends on PBL_CONSOLE
> diff --git a/common/startup.c b/common/startup.c
> index 055d94fe6a..7551813a50 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -189,7 +189,9 @@ void set_autoboot_state(enum autoboot_state autoboot)
>    */
>   enum autoboot_state do_autoboot_countdown(void)
>   {
> -	static enum autoboot_state autoboot_state = AUTOBOOT_UNKNOWN;
> +	static enum autoboot_state autoboot_state =
> +		IS_ENABLED(CONFIG_DEBUG_AUTOBOOT_ABORT) ?
> +			AUTOBOOT_ABORT : AUTOBOOT_UNKNOWN;
>   	unsigned flags = CONSOLE_COUNTDOWN_EXTERN;
>   	int ret;
>   	struct stat s;

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


