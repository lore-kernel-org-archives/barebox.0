Delivery-date: Thu, 21 Sep 2023 14:11:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIWL-005rJp-Sw
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 14:11:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIWJ-0004Tu-Lx
	for lore@pengutronix.de; Thu, 21 Sep 2023 14:11:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=79IVh1mwOIxXY5sbyzRM/NuU8hfOzXa9KA8Q5uQCgKs=; b=5FcrGNlR4YwUsLsoXtvCz7eX7Q
	Tzz4a9DX3H3gsLF+IG5SnGIrHdmrjrJAEqiq8k8bUmDsH7gjWDv443z5cZh6kFGVYVYmUxWmGh9cr
	VMv9pECg3GAD7kyb33OR/avB2SDnX/KidyNcuGBJscod3ck53NJAHzPqdxIfAVfQdlVqhgRD61Pne
	5ViwUXMW6MKpcqpiRLGEy1zcY+uko7hXyTuZxuo451PIySf2Gd8/TvHLRMC9FjoSRnXEe8RQ9V5J7
	qqZT8kIJa/q1p1tp0pjGElByV61zWf+BakbzuHhsNsb993yRUP9jxHAUjZYXWgKJto08HGo+mkf+Q
	WH5esnPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIVC-005yh8-2k;
	Thu, 21 Sep 2023 12:09:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIV9-005ygW-21
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 12:09:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIV6-00040u-3Z; Thu, 21 Sep 2023 14:09:44 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIV5-007uqp-J3; Thu, 21 Sep 2023 14:09:43 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIV5-00AkrQ-FE; Thu, 21 Sep 2023 14:09:43 +0200
Date: Thu, 21 Sep 2023 14:09:43 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921120943.GK637806@pengutronix.de>
References: <20230921092539.4142293-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921092539.4142293-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_050947_663964_A25180D1 
X-CRM114-Status: GOOD (  23.28  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] startup: don't skip countdown if consoles were
 runtime enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 21, 2023 at 11:25:38AM +0200, Ahmad Fatoum wrote:
> Systems with verified boot will disable at least console input by
> default, but when presented with an unlock token, they may elect to
> enable the console. Currently, the user needs to be really quick with
> ctrl+c to abort the boot on the active console, so let's make the system
> have a normal count down if a console has been activated by board code.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/startup.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/startup.c b/common/startup.c
> index f96cff41429d..bbba72f89255 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -174,7 +174,7 @@ enum autoboot_state do_autoboot_countdown(void)
>  	if (autoboot_state != AUTOBOOT_UNKNOWN)
>  		return autoboot_state;
>  
> -	if (IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT)) {
> +	if (!console_get_first_active()) {
>  		printf("\nNon-interactive console, booting system\n");
>  		return autoboot_state = AUTOBOOT_BOOT;
>  	}
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


