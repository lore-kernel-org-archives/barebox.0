Delivery-date: Mon, 13 Oct 2025 12:02:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8FNq-007KaQ-0n
	for lore@lore.pengutronix.de;
	Mon, 13 Oct 2025 12:02:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8FNp-0007yF-NE
	for lore@pengutronix.de; Mon, 13 Oct 2025 12:02:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CQMCDOLTg4QECqnefSZ8Iom8ThjyIjwuJy2N9it+llQ=; b=nib+9S+lvj770SBS8vRAiC4+Dj
	UGtIZ0Ouzk3fP6R0EG2EsgVuiM7Jjx/RZ8UMCHxK3rZfXnLK3gLD2LrUeo4L0MxnGRLLx06ZNqctu
	eOeCsZzKcPAqeQJmywxiOKnMA1m96g4tPReWwzeaNnjDV0HgORpHkUqNTFbwymX9ZJ3/l2tuE6A7r
	WT3NKBp12J1wbC7lb6nWZSCDOkdBwFAzt6Z13kTIWAJ1h4+NYiMUduQ5oR/uu47PEStmcV2N5Ccns
	ByJBqP2K5dxp6v65eDyXE21Za3BGCVtkydtYBunR5/sARVTitKegTCV9UZl/CJbHfKT2pHDrZzUcX
	XMqena/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8FNN-0000000CqIT-1E7Q;
	Mon, 13 Oct 2025 10:01:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8FNL-0000000CqH0-0hat
	for barebox@lists.infradead.org;
	Mon, 13 Oct 2025 10:01:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8FNJ-0007jO-JC; Mon, 13 Oct 2025 12:01:53 +0200
Message-ID: <1c5a7d8c-cb1f-4559-869a-8228563e3248@pengutronix.de>
Date: Mon, 13 Oct 2025 12:01:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Grzeschik <m.grzeschik@pengutronix.de>,
 barebox@lists.infradead.org
References: <aOUAKx-E6jn9ZLWT@pengutronix.de>
 <20251013094943.1299607-1-m.grzeschik@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251013094943.1299607-1-m.grzeschik@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_030155_209675_247D2DE8 
X-CRM114-Status: GOOD (  16.73  )
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
X-Spam-Status: No, score=-1.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] clk: clk_set_parent: skip any operation if current and
 new parents are equal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/13/25 11:49 AM, Michael Grzeschik wrote:
> When an clk is defined with only one parent it probably has no
> set_parent function. Therefor changing the parent would return with
> -EINVAL. We check for this case and skip this function in this case.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  drivers/clk/clk.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 89a007a12c5..ac5b83cf8b4 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -302,6 +302,9 @@ int clk_set_parent(struct clk *clk, struct clk *newparent)
>  	if (IS_ERR(newparent))
>  		return PTR_ERR(newparent);
>  
> +	if (newparent == curparent)
> +		return 0;
> +
>  	if (!clk->num_parents)
>  		return -EINVAL;
>  	if (!clk->ops->set_parent)

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



