Delivery-date: Wed, 26 Jul 2023 09:52:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOZK3-00ATbc-Ir
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 09:52:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOZK1-0004sQ-7u
	for lore@pengutronix.de; Wed, 26 Jul 2023 09:52:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ngRN7vGpONN5ue/O6MUvGLCF3idBUfw/7nuB3xcry3Q=; b=wjZyrS0cOgfqH9MRvSilS+ejqh
	zpzifPo/phh8geZrbTcuQvvd19wwclBrBQCqd6PmQJCBIHRzrt9vPZXb2beq8nslC06cUIdzNmBVd
	w0+yWmnVQUDZsQSaX3Q/VK+WHGCJzOWHbpjcD9/+1wjZxTWbb5ZrgZv3ksmqVtBhqScMSCzGueQGU
	GCT68U8Hu0uRN2KtFAyr5Ib437IpAFSYi+45hgYc2OoPLXAonNccSaWL/1YTQF/H9zY+OvsrwvNv7
	aA3JKHL1qj/qn5iQIVQLgsJpE6AlXbkdxfifOUip3Xfx0kDbq+MsOItecKBrZilDFyzY9YlducIG/
	nm/s/RuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOZIs-009Uhw-0A;
	Wed, 26 Jul 2023 07:51:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOZIp-009Uha-39
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 07:51:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qOZIo-0004lp-Hq; Wed, 26 Jul 2023 09:51:22 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qOZIo-0008UM-Ax; Wed, 26 Jul 2023 09:51:22 +0200
Date: Wed, 26 Jul 2023 09:51:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20230726075122.xmw5fktnexpg74si@pengutronix.de>
References: <20230705144219.504194-3-r.czerwinski@pengutronix.de>
 <20230726063159.1666436-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230726063159.1666436-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_005124_035173_2025C166 
X-CRM114-Status: GOOD (  15.16  )
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
Subject: Re: [PATCH] fixup! i.MX: HABv4: extend support to i.MX8M SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-07-26, Ahmad Fatoum wrote:
> CONFIG_HABV4 selects CONFIG_HAB and that file still has one imx8mq only
> check that should be loosened to an imx8m check when extending the
> symbol for these SoCs.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/hab/hab.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
> index fad367f43dfb..c5d44ec921b0 100644
> --- a/drivers/hab/hab.c
> +++ b/drivers/hab/hab.c
> @@ -208,7 +208,7 @@ static struct imx_hab_ops *imx_get_hab_ops(void)
>  
>  	if (IS_ENABLED(CONFIG_HABV3) && (cpu_is_mx25() || cpu_is_mx35()))
>  		tmp = &imx_hab_ops_iim;
> -	else if (IS_ENABLED(CONFIG_HABV4) && (cpu_is_mx6() || cpu_is_mx8mq()))
> +	else if (IS_ENABLED(CONFIG_HABV4) && (cpu_is_mx6() || cpu_is_mx8m()))
>  		tmp = &imx_hab_ops_ocotp;
>  	else
>  		return NULL;
> -- 
> 2.39.2
> 
> 
> 


