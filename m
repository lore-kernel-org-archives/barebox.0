Delivery-date: Fri, 10 Nov 2023 14:13:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RKd-005spE-2g
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:13:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RKd-0000Ls-Qq
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:13:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uISuLfuwudzL1cSIk3UjSb5Sms97Tui2MJ5PA29M0yY=; b=fiNVIsPWdSKnLFzELIx86a3mKA
	MUzjklUE/znanbZxkHqru7OCEoM+jWq+KxBz1poTJEffBqAF0iKTA1yf2l29QptIAkArckh1kV1UU
	4f06At2L/lo6QsRhce41zum6Yf40MnpbxtuAIM0c7KjL+hbr5Nn+7miqYfAYJ/Yn93/D0z4ohyGQF
	cTJx0Jd/gHiXXhNeDyo9kQ9eCl0IzrQ7cDgCB4zbCCgpT7p7A9zg1nLyxFu56xOXtZVZwer378aDg
	kFu8Q88Kom/OL0jVde1Lc46yi4Ir5cHmLOeWQZnptbXESpRrTYqUGS/lROpmwWueg5eI+vIi9LeA4
	ZJ7MkFow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RJg-008ofj-0l;
	Fri, 10 Nov 2023 13:12:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RJe-008ofW-29
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=uISuLfuwudzL1cSIk3UjSb5Sms97Tui2MJ5PA29M0yY=; b=iFsrEdtr67txCmfYHtZBLliQXt
	dK3sQsQ7HwFFe++a6adJbkatIAOvVHhKfr9FhGGX3Vh42scGjqXlNC7PWLq5CYVqLMta6tBHToth2
	5zPUQs3+8IJ6YJQiL9I5h+/S93YQq8hF4nl8NaNrbPuwteOgVYm4QoIbB3w9isDkl6Bzu+0ZOC6bc
	PhKutMjexmZ+x0rIdPMSahA6o+LROw1N2O+HIJnTi3iqT4HFTClJSjTF3afTOwHmIaQORKBsu/6ue
	bMD8vswQEJCpwleO+26DP2mAHOHPO/Co18HLNNGrnMrwLK0Rd+Jer53mDyRLUPQvJRpyM2Q7+542U
	vd9+pYDQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RJa-00FcLN-2u
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:12:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RJa-0008V1-H4; Fri, 10 Nov 2023 14:12:50 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RJa-00822y-4Z; Fri, 10 Nov 2023 14:12:50 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RJa-001LVn-2A; Fri, 10 Nov 2023 14:12:50 +0100
Date: Fri, 10 Nov 2023 14:12:50 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231110131250.GZ3359458@pengutronix.de>
References: <20231109115522.1370884-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109115522.1370884-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_131251_295691_E25EB09C 
X-CRM114-Status: GOOD (  20.96  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] mfd: syscon: don't register clocked syscon if
 geting clock fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 09, 2023 at 12:55:22PM +0100, Ahmad Fatoum wrote:
> When of_syscon_register is called with check_clk=true, it will attempt
> to attach the clock. If that fails, the newly allocated syscon is freed,
> but a dangling pointer remained in the syscon_list.
> 
> Fix this by only registering the syscon in the successful case.
> 
> Fixes: b36b7b727192 ("mfd: syscon: clock peripheral if specified in device tree")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mfd/syscon.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
> index 3e12123b572e..3c2e1241fdff 100644
> --- a/drivers/mfd/syscon.c
> +++ b/drivers/mfd/syscon.c
> @@ -74,8 +74,6 @@ static struct syscon *of_syscon_register(struct device_node *np, bool check_clk)
>  	syscon_config.val_bits = reg_io_width * 8;
>  	syscon_config.max_register = resource_size(&res) - reg_io_width;
>  
> -	list_add_tail(&syscon->list, &syscon_list);
> -
>  	syscon->regmap = regmap_init_mmio_clk(NULL, NULL, syscon->base,
>  					      &syscon_config);
>  
> @@ -93,6 +91,8 @@ static struct syscon *of_syscon_register(struct device_node *np, bool check_clk)
>  		}
>  	}
>  
> +	list_add_tail(&syscon->list, &syscon_list);
> +
>  	return syscon;
>  
>  err_map:
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


