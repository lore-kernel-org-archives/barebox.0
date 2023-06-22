Delivery-date: Thu, 22 Jun 2023 18:55:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCNaM-00HBdt-Cd
	for lore@lore.pengutronix.de; Thu, 22 Jun 2023 18:55:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCNaJ-0005Rc-Pd
	for lore@pengutronix.de; Thu, 22 Jun 2023 18:55:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+77uV45qZtHPN0tVbIx1bsoohagETQFs6V8ANTqZpCE=; b=lISRZNnIJl10TkGPD29o9M7Xn5
	F9BlqxUlY5tDK70UJFbO97R7JmOkRs2M5qMRl7/pKrnLoH24vXyMtdox2VM42j8Sz7bK/TnfxrKuT
	sa7sV/5QqHLi69skB+arb5iM4Z+EPBPm2fh7BBRpobAmoXBtS4zZ55QJpGcO7Hhqbqf4lwcLEj4/2
	TjRMhIBDQEcORbeLbRLxG3NRCxufo0XqNyvvk7hZ9PNLXxleI9Uo2U70nscBTVWcx7qqQI6w7Ccuu
	rsj4qsa6udsc8eanFniZzPQu1xX7TPk4bcbVaU41Rt4aHUCHrcgLpK6FFQk67e3Y7WJGLwq20jp66
	p5TPwYXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCNYo-001H8e-2m;
	Thu, 22 Jun 2023 16:53:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCNYl-001H7Y-1V
	for barebox@lists.infradead.org;
	Thu, 22 Jun 2023 16:53:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qCNYg-0005JR-Sw
	for barebox@lists.infradead.org; Thu, 22 Jun 2023 18:53:22 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qCNYg-0008BC-LZ
	for barebox@lists.infradead.org; Thu, 22 Jun 2023 18:53:22 +0200
Date: Thu, 22 Jun 2023 18:53:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20230622165322.cs254ldwojxkvgjn@pengutronix.de>
References: <20230405095036.2864517-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230405095036.2864517-1-m.felsch@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_095327_502029_7B4D5501 
X-CRM114-Status: GOOD (  17.48  )
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
Subject: Re: [PATCH] fastboot: avoid console_countdown_abort for getvar
 request
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

gentle ping.

On 23-04-05, Marco Felsch wrote:
> Don't abort the console countdown in case of 'fastboot getvar' requests.
> Most the time the host just want to query information but don't want to
> abort the boot. Therefore skip the abort in case of getvar requests and
> abort it in all other cases.
> 
> Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  common/fastboot.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/common/fastboot.c b/common/fastboot.c
> index ae7f132444..6c58195395 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -772,6 +772,11 @@ static void cb_erase(struct fastboot *fb, const char *cmd)
>  		fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
>  }
>  
> +static bool fastboot_cmd_abort_allowed(const char *cmdbuf)
> +{
> +	return strcmp_l1("getvar:", cmdbuf) == 0 ? false : true;
> +}
> +
>  struct cmd_dispatch_info {
>  	char *cmd;
>  	void (*cb)(struct fastboot *fb, const char *opt);
> @@ -783,7 +788,8 @@ static void fb_run_command(struct fastboot *fb, const char *cmdbuf,
>  	const struct cmd_dispatch_info *cmd;
>  	int i;
>  
> -	console_countdown_abort();
> +	if (fastboot_cmd_abort_allowed(cmdbuf))
> +		console_countdown_abort();
>  
>  	for (i = 0; i < num_commands; i++) {
>  		cmd = &cmds[i];
> -- 
> 2.39.2
> 
> 
> 


