Delivery-date: Tue, 04 Apr 2023 09:06:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjakZ-009Qpf-QV
	for lore@lore.pengutronix.de; Tue, 04 Apr 2023 09:06:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjakZ-0004tP-1O
	for lore@pengutronix.de; Tue, 04 Apr 2023 09:06:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lc8J3kt2AjppmgiP+GmuBjjzM9rInzdY56f5q+g1iBY=; b=1urxMcrkafx2JRvxT3P++gtdun
	ggkKsQ5LvxnztRMExpsUCeMk0srJxIgL6tdbMAg7K8CtkMzUni4KkCV2dPiBf+6seCVHkHYNEQh/0
	4iQZhuetV3QHDA0MNTlFR/Jo+B9brC5S6NM1kE+bZdAnbVd+QFbVgp4U0mnrEeeXSeMI20ShTS5mE
	jS5Idrd9GwrcCZ3/gZwpWK7tKgKHIFbe8Imc15SpLdURoltJazLN9FTFq3u1dH9tkcDdKEXLLJX3D
	8Cit3Ng+F7Blp/7GA6YBkieJwm7UaH7xOT8O86kSz/VJF5qmznEP4+yjiqt9ZA1UyyJh9rSu2KlLn
	u+A9t3/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjajZ-000GAS-1d;
	Tue, 04 Apr 2023 07:05:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjajV-000G9U-2C
	for barebox@lists.infradead.org;
	Tue, 04 Apr 2023 07:05:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjajU-0004bX-Ej; Tue, 04 Apr 2023 09:05:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjajU-0008Q1-7f; Tue, 04 Apr 2023 09:05:32 +0200
Date: Tue, 4 Apr 2023 09:05:32 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230404070532.GV19113@pengutronix.de>
References: <20230403122509.258800-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230403122509.258800-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_000533_715990_25AE1911 
X-CRM114-Status: GOOD (  20.15  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: boards: protonic-imx6: fix bbu_handler device paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Apr 03, 2023 at 02:25:09PM +0200, Marco Felsch wrote:
> The update handler path must be a full-path starting at '/'. Fix this by
> adding the '/dev/' path prefix.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/boards/protonic-imx6/board.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
> index d2fb25d3cc..0d57f409d2 100644
> --- a/arch/arm/boards/protonic-imx6/board.c
> +++ b/arch/arm/boards/protonic-imx6/board.c
> @@ -530,7 +530,7 @@ static int prt_imx6_bbu(struct prt_imx6_priv *priv)
>  		emmc_flags = BBU_HANDLER_FLAG_DEFAULT;
>  	}
>  
> -	devicefile = basprintf("mmc%d", dcfg->emmc_usdhc);
> +	devicefile = basprintf("/dev/mmc%d", dcfg->emmc_usdhc);
>  	if (!devicefile) {
>  		ret = -ENOMEM;
>  		goto exit_bbu;
> @@ -540,7 +540,7 @@ static int prt_imx6_bbu(struct prt_imx6_priv *priv)
>  	if (ret)
>  		goto exit_bbu;
>  
> -	devicefile = basprintf("mmc%d", dcfg->sd_usdhc);
> +	devicefile = basprintf("/dev/mmc%d", dcfg->sd_usdhc);
>  	if (!devicefile) {
>  		ret = -ENOMEM;
>  		goto exit_bbu;
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


