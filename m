Delivery-date: Tue, 31 May 2022 10:19:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvx6M-00G2OC-5W
	for lore@lore.pengutronix.de; Tue, 31 May 2022 10:19:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvx6K-0000Yf-Vc
	for lore@pengutronix.de; Tue, 31 May 2022 10:19:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D92XJo3s7Iu1/kpIU/wdznkkYEZTbUkKmN81muQMjXc=; b=GP4WSKURDLltmVKByDhTDDZoBD
	XUgajvV4gL3T+nKiRT+Aw2gHAk2KDE3cRRH4CEZKlymG5VWlCk94KAiNSGq32yHSYpOo3nYTbEtXr
	SembBTUNJ2VqW2IehdMu2KymtaLPjFK3MnIqUU+e/D4IkQ4tdDOd0LQc4Zr1OgB1ixlb6ny09rMKs
	l9cUERUrp1jCiuzAt06drZBXNR42fgCrBEsLgmHOLYfmB2Ov0Q1MKylyg7E/zuZb+jqNjSXXB+n/8
	IvjgYsazefHvFROa2bL2aQEeek46nMZEo8ZyMdBb2Ztsi1zdtdLm/WFxPOOsoU4+d5t9QYbTjjN8r
	cbD6e64w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvx4y-009nlh-Ev; Tue, 31 May 2022 08:18:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvx4t-009nl5-RL
	for barebox@lists.infradead.org; Tue, 31 May 2022 08:18:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nvx4s-0000RF-L7; Tue, 31 May 2022 10:18:10 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nvx4s-0002Vi-CE; Tue, 31 May 2022 10:18:10 +0200
Date: Tue, 31 May 2022 10:18:10 +0200
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220531081810.GT1615@pengutronix.de>
References: <20220530175051.507579-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220530175051.507579-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_011811_938622_2822DC2B 
X-CRM114-Status: GOOD (  21.52  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: nxp-imx8mq-evk: install Barebox into eMMC boot
 partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 30, 2022 at 07:50:51PM +0200, Lucas Stach wrote:
> Switch the Barebox update handler to install Barebox in the eMMC boot
> partitions, which is preferred due to the capability to do atomic
> updates.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mq-evk/board.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
> index c28107cb1751..8d88bfe8c249 100644
> --- a/arch/arm/boards/nxp-imx8mq-evk/board.c
> +++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
> @@ -40,7 +40,7 @@ static int nxp_imx8mq_evk_init(void)
>  	barebox_set_hostname("imx8mq-evk");
>  
>  	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
> -	imx8m_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc0.barebox", flags);
> +	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0", flags);
>  
>  	flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
>  	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", flags);
> -- 
> 2.36.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

