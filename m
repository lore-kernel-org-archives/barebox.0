Delivery-date: Mon, 03 Apr 2023 09:05:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjEFg-008G3M-Qe
	for lore@lore.pengutronix.de; Mon, 03 Apr 2023 09:05:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjEFg-0001mN-9p
	for lore@pengutronix.de; Mon, 03 Apr 2023 09:05:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xAZt9ZaobsMU57VSc6El9NhCcEgaSNZtTb5HwzK6mS8=; b=zSljdzp8Oi0ZOXhKqeL9EzV2r8
	ISPRCbW/dEz7taTrJ36kIrPAULaa+TDDS1aMbWPVP8/nB8lUbXlouA9roAepOL7ik2xCj6MRdabo3
	4y4SegG9Srhv0BG9ziR8IKWdkxtDBygzZQ2e95FX4TtZQyEu7tWIU3TqML5LeLNtpgv5ff1bnCKdZ
	OBmSdCEdlKrdDH0ywUwlod6eYRNEN9khrB0cMe/LILky9zHPWGlzVwQgMrR1yPpN9EmvF2w5JKxfI
	3iNhQBEb/3gtck5MkJKHcpgumk7AYDoyVoM/p+RWWSe5Uiai1pQi0b+TFfqwQ3IZgEml0gY1m5jXP
	zf05qoiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjEEk-00EK3S-2g;
	Mon, 03 Apr 2023 07:04:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjEEh-00EK2Y-0C
	for barebox@lists.infradead.org;
	Mon, 03 Apr 2023 07:04:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjEEf-0001Vg-PL; Mon, 03 Apr 2023 09:04:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjEEf-0007rj-JQ; Mon, 03 Apr 2023 09:04:13 +0200
Date: Mon, 3 Apr 2023 09:04:13 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230403070413.GN19113@pengutronix.de>
References: <20230331143130.1903540-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230331143130.1903540-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_000415_098150_8A61A5E6 
X-CRM114-Status: GOOD (  20.56  )
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
Subject: Re: [PATCH] common: state: make barebox-state enabling in Kconfig
 easier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 31, 2023 at 04:31:30PM +0200, Ahmad Fatoum wrote:
> CONFIG_STATE only enables the framework, but practically all users
> interact with the framework via the device tree binding, which has a
> separate symbol. Make barebox state enabling easier by automatically
> enabling STATE_DRV and CMD_STATE if possible when STATE itself is
> enabled. They can still be disabled for configurations that don't
> need them.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 57fe5f7886de..d951947463a2 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1016,6 +1016,8 @@ config STATE
>  	select ENVIRONMENT_VARIABLES
>  	select OFTREE
>  	select PARAMETER
> +	imply STATE_DRV
> +	imply CMD_STATE
>  	help
>  	  barebox state is a generic framework for atomic power fail-safe
>  	  variable storage and retrieval. It can be used to safely maintain
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


