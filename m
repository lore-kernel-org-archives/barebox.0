Delivery-date: Wed, 11 May 2022 14:47:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nolku-009eTg-77
	for lore@lore.pengutronix.de; Wed, 11 May 2022 14:47:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nolkt-0004Bb-1c
	for lore@pengutronix.de; Wed, 11 May 2022 14:47:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPXx9weRxPeg7lK362aW6oaEj+2FPBnbGdoWf31z52w=; b=Ie3RwfC8GLvXAZ
	WPxfuA63iSLQgLnNTng3/LEX9sfmOiWGYx3VdZkfqqMJ0yryipkWp1cns+NRvQ5Vua24Abe73t2ep
	a0Mv3r+idZe1qahZkmN88lf28tjOy/Tcpya868MFrqaR4ONIEyPm1+FtzxeDSwtYmOCKF4LPVTpCB
	CDij3LX56QfuR3+2HeK65ULj+Y3h1OnwBCzZKwpd5M20SnxscHwcpHExOUvdjhzIK6vgpbK6jNKna
	olW+AAl/YZUTuLGRzvIwXdVFssXXwz13MlqsntKwu/kkfV09ojVnQ/cKIeJ5ez5fkzlOGlMmTNua8
	Vh8bhunaWeYu0CJnawfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noljW-006pTV-QB; Wed, 11 May 2022 12:46:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noljR-006pSS-D1
 for barebox@lists.infradead.org; Wed, 11 May 2022 12:46:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1noljP-0003zT-Os; Wed, 11 May 2022 14:46:19 +0200
Message-ID: <45cf07ce-bd1b-ef48-52f0-820642e0635a@pengutronix.de>
Date: Wed, 11 May 2022 14:46:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
References: <20220511123139.2767034-1-bst@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220511123139.2767034-1-bst@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_054621_481610_9DFD56CB 
X-CRM114-Status: GOOD (  22.05  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] clk: handle NULL args in clk_{g,s}et_parent()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.05.22 14:31, Bastian Krause wrote:
> NULL struct clk pointers should be treated just as the Linux kernel clk
> driver does [1]. The reasoning should also apply to the parent clk
> argument.
> 
> A NULL struct clk pointer can happen for example on the Freescale i.MX6
> SABRE Smart Device Board if CONFIG_DRIVER_VIDEO_IMX_IPUV3 is disabled,
> leading to assigned-clocks IMX6QDL_CLK_LDB_DI0_SEL and
> IMX6QDL_CLK_LDB_DI1_SEL [2] being unavailable. Without this patch, the
> board hangs while setting those assigned clock configurations since [3].
> 
> [1] 89ac8d7ae1cd ("clk: handle NULL struct clk gracefully")
> [2] dts/src/arm/imx6qdl-sabresd.dtsi
> [3] f5eb5fddb4 ("clk: fix of clk set defaults when dev is a clk provider")
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> Changes since (implicit) v1:
> - make clk_get_parent(NULL) return NULL
> - undo shifting call to clk_get_parent() in clk_set_parent()
> ---
>  drivers/clk/clk.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 8e317b4b05..52e309e877 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -232,6 +232,9 @@ int clk_set_parent(struct clk *clk, struct clk *newparent)
>  	int i, ret;
>  	struct clk *curparent = clk_get_parent(clk);
>  
> +	if (!clk || !newparent)
> +		return 0;
> +
>  	if (IS_ERR(clk))
>  		return PTR_ERR(clk);
>  	if (IS_ERR(newparent))
> @@ -287,7 +290,7 @@ struct clk *clk_get_parent(struct clk *clk)
>  	struct clk_hw *hw;
>  	int idx;
>  
> -	if (IS_ERR(clk))
> +	if (IS_ERR_OR_NULL(clk))
>  		return clk;
>  
>  	if (!clk->num_parents)


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

