Delivery-date: Tue, 21 Mar 2023 09:13:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peX7r-008wWY-RT
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 09:13:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peX7r-0005Mu-Ra
	for lore@pengutronix.de; Tue, 21 Mar 2023 09:13:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BwE7DOCPWT8XemVJBvKjqhpx9NQYrK22YQdEcGpI6yw=; b=L8xQNnGzNW4unMHcDunpYNlm5n
	flYvBYk/xf6vJ/mdOD75cGcttWk7aEuHsatLkcy+h32h6UaUQJSxAAzSws/Ozz0JpghJmYj/cx4X8
	0zhA8tVHCc1nzjfxp7es4bqLL7BDBirW/XypfOe79eCvdbRG8zK7oioUhYHW6YiJXZ/JSSC24Dp2O
	NGn+5Ww0DIoGpErSKBhn8ejufXwXKRpX/n1Exjdhg1ba1oxm1c0H01u08kFuOMzuyYk8RNkldQSUg
	7iF5Sx00CwE8F4f4U9/JdbFzmmXIpFkhieZqRA2aW0tJ6nFSZrysZLTmnDdiOZuJaUVKFR6YySEcd
	43f+Yhhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peX6p-00BdYK-2g;
	Tue, 21 Mar 2023 08:12:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peX6m-00BdWm-0I
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 08:12:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peX6k-0005A9-RL; Tue, 21 Mar 2023 09:12:38 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peX6k-00054H-FC; Tue, 21 Mar 2023 09:12:38 +0100
Date: Tue, 21 Mar 2023 09:12:38 +0100
To: Wolfram Sang <wsa@kernel.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230321081238.GF7446@pengutronix.de>
References: <20230319153911.23811-1-wsa@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230319153911.23811-1-wsa@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_011240_131421_1EC41B78 
X-CRM114-Status: GOOD (  17.82  )
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
Subject: Re: [PATCH] commands: edit: fix typo in Kconfig help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Mar 19, 2023 at 04:39:11PM +0100, Wolfram Sang wrote:
> Signed-off-by: Wolfram Sang <wsa@kernel.org>
> ---
>  commands/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index ec15f4e543..27769950d9 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1383,7 +1383,7 @@ config CMD_EDIT
>  	depends on CONSOLE_FULL || CONSOLE_SIMPLE
>  	prompt "edit"
>  	help
> -	  A  small fill-screen editor.
> +	  A small full-screen editor.
>  
>  	  Usage: edit FILE
>  
> -- 
> 2.35.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


