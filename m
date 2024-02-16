Delivery-date: Sat, 17 Feb 2024 00:06:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rb7HX-0097lI-2G
	for lore@lore.pengutronix.de;
	Sat, 17 Feb 2024 00:06:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rb7HX-0002cN-5W
	for lore@pengutronix.de; Sat, 17 Feb 2024 00:06:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uUEq9DXQRWzRt4wGTWsA0zereTx6cWATY06U0ivxdhI=; b=Q1sdAWEeRqzCjLi6VD7+1FYbAD
	t/TlzFfUehXDy29ubkNXuPovg47Lu+REZn0LOmypmmdbF/m8ptBRp4Cljr/VOMKqGhufN1iz6f2KQ
	MUODO7wio+3V5KDcTN74f16fhDUgmbNjNN8ETEgbQkKpj8xo7imK7RXsLOFbe4QiUblXCPwEWjv/p
	WbTC2IF+6DZIICl5v0Slnt+iEuvVMevqjLPm2RM3amNX6+sAHsB+9r7qEhwCFcvJ3Pz6LuA/0NvQW
	5uDU9hl9VLdd7RoZBXnR6IUqiSwj2XB7uRfWFxu5v54YeWa96iaxTMJR+268cRitRUJO2hPJatsBn
	XA5My9XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb7H1-000000042Rw-1VlM;
	Fri, 16 Feb 2024 23:05:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb7Gy-000000042RA-3CnL
	for barebox@lists.infradead.org;
	Fri, 16 Feb 2024 23:05:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rb7Gw-0002ZF-GQ; Sat, 17 Feb 2024 00:05:34 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rb7Gw-0019lj-3x; Sat, 17 Feb 2024 00:05:34 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rb7Gw-00BbZN-08;
	Sat, 17 Feb 2024 00:05:34 +0100
Date: Sat, 17 Feb 2024 00:05:34 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240216230534.pyw6igylfkpoqmoj@pengutronix.de>
References: <20240216220337.2327115-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240216220337.2327115-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_150536_824136_3B995FA2 
X-CRM114-Status: GOOD (  13.01  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] i2c: don't return error pointers from
 of_find_i2c_adapter_by_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-02-16, Ahmad Fatoum wrote:
> All callers of of_find_i2c_adapter_by_node expect errors to be indicated
> by NULL and don't check non-NULL pointers with IS_ERR().

Good catch.

> Therefore map of_device_ensure_probed() errors to NULL as well to avoid
> dereferencing error pointers.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/i2c/i2c.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index 70d1b810c1c3..1985ddfdc776 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -593,7 +593,7 @@ struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node)
>  
>  	ret = of_device_ensure_probed(node);
>  	if (ret)
> -		return ERR_PTR(ret);
> +		return NULL;
>  
>  	for_each_i2c_adapter(adap)
>  		if (adap->dev.of_node == node)
> -- 
> 2.39.2
> 
> 
> 


