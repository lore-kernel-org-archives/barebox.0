Delivery-date: Tue, 13 Jun 2023 09:15:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yFa-004rpM-PL
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 09:15:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yFY-0007aR-82
	for lore@pengutronix.de; Tue, 13 Jun 2023 09:15:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DfSyIDG6cb2N6OsTCQiRowXfMHzGDKD5Q6zmTuz0/20=; b=Z3rtQ1PFz5ogD3le8NtKWvuXDH
	zmRCCzmkATQUU2/3Kh6zjklZv3bmKl1/0vL7BaQ3QP5b2seNCn6KwwdQWM14TMqVM0eCUWGSGyMny
	HTSa0lrVEVCEkiOg/wIjxO/wTOOxj8vaH5KqWLW3wIx02u89h3jlVr4StNb5CDqRTIY5O5SEbRlN6
	vu4GN2cXwuKy7RjOJwaViOKlzf6sam/5Tzh7RWrXCneDQQ35uyq3VOTMpBlw9O3L8Ao88ILseLl2F
	qwLBrCfs2z9G19s24X6OD5N9oO79CjCjZ+XyTWz6OUvrLoRYQP05OEqWKcYOPbfTjraTJWNb35mQN
	jskoIgsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yEX-007Bes-0z;
	Tue, 13 Jun 2023 07:14:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yEV-007Bdt-00
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 07:14:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8yET-0007D0-Nl; Tue, 13 Jun 2023 09:14:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8yET-0006qB-Gm; Tue, 13 Jun 2023 09:14:25 +0200
Date: Tue, 13 Jun 2023 09:14:25 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230613071425.GI18491@pengutronix.de>
References: <20230612130322.1093717-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612130322.1093717-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_001427_033953_B7DFA8DF 
X-CRM114-Status: GOOD (  22.96  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] boot: don't print error message on -ENOMEDIUM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 12, 2023 at 03:03:22PM +0200, Ahmad Fatoum wrote:
> It can be expected for a boot entry to usually fail, e.g. when it checks
> for a removable USB drive that's not always connected. Such boot targets
> have the choice of either returning 0, which means it was a dry run and
> boot aborts or an error code, which yields an error message.
> 
> Let's handle -ENOMEDIUM specially and not print an error for it, so it
> can be used in such scenarios.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/boot.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/boot.c b/common/boot.c
> index 9c6fc3044271..4edea682219b 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -151,7 +151,7 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
>  	}
>  
>  	ret = be->boot(be, verbose, dryrun);
> -	if (ret)
> +	if (ret && ret != -ENOMEDIUM)
>  		pr_err("Booting entry '%s' failed\n", be->title);
>  
>  	return ret;
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


