Delivery-date: Wed, 16 Aug 2023 11:41:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD2I-0066eY-RL
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 11:41:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD2H-0001YF-2C
	for lore@pengutronix.de; Wed, 16 Aug 2023 11:41:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KpMjf3sACZUPCAkgbNDT5UuYJz8CoqpIBGWKGLw/h7o=; b=gxKW+h7/VmeyCZ1Hl+CTmS24js
	hahF5pyafOgqOpQlqXIVkg+fXPPqEdKUYQyGQPWizySHPfiiM+Cgk3eigYkCIWvNmft0Cg8zuQNfd
	hg1HlbqxgPGIh+1B+niaMklh1n8qUKaEIL/VrpMvIUNv6YmvHQWMRNfWePjj67obabCSDA8CaRApj
	MfxfsKBciKNS0Pu9O1/rUC9kTmRkzpXBGvY52rUq6SbBtIaVKJ29XDB1ZuqcOxAQxpl9D/7NoZqN3
	ijUALoKn7YuK4CB0VV18L1blZ8OHP9cdwCn9ME2zGdJtSpbRo/nHxrOet3yeVn7j4JjohJFT7tqxP
	fFQzwG/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWD1N-003d9p-1S;
	Wed, 16 Aug 2023 09:40:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWD1J-003d7U-2U
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 09:40:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWD1I-00014l-Ep; Wed, 16 Aug 2023 11:40:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWD1I-0008Lt-4v; Wed, 16 Aug 2023 11:40:52 +0200
Date: Wed, 16 Aug 2023 11:40:52 +0200
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230816094052.GD5650@pengutronix.de>
References: <20230814141112.567070-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230814141112.567070-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_024053_811306_4CF5D730 
X-CRM114-Status: GOOD (  18.52  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: global: document usage without parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 14, 2023 at 04:11:13PM +0200, Roland Hieber wrote:
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  commands/global.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/global.c b/commands/global.c
> index cf8e9a5b4894..a8ff5ea18fb0 100644
> --- a/commands/global.c
> +++ b/commands/global.c
> @@ -50,6 +50,7 @@ static int do_global(int argc, char *argv[])
>  
>  BAREBOX_CMD_HELP_START(global)
>  BAREBOX_CMD_HELP_TEXT("Add a new global variable named VAR, optionally set to VALUE.")
> +BAREBOX_CMD_HELP_TEXT("Without options, print all global and env (prefixed with *) variables.")
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT("-r", "Remove globalvars")
> @@ -58,7 +59,7 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(global)
>  	.cmd		= do_global,
>  	BAREBOX_CMD_DESC("create or set global variables")
> -	BAREBOX_CMD_OPTS("[-r] VAR[=VALUE] ...")
> +	BAREBOX_CMD_OPTS("[-r] [VAR[=VALUE] ...]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
>  	BAREBOX_CMD_HELP(cmd_global_help)
>  	BAREBOX_CMD_COMPLETE(global_complete)
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


