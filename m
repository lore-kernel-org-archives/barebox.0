Delivery-date: Tue, 13 Jun 2023 13:50:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q92XC-0059JL-AA
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 13:50:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q92X9-0007bp-Nj
	for lore@pengutronix.de; Tue, 13 Jun 2023 13:50:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=owSaqUX5CXfEb2w1LMTUC34CfK4qrA8yz+bYnPB6q90=; b=xhfu+SfeVIFWpJNAoPuwbI6UGj
	cglykUPfhMSeIbm2406unSlLbuOm0Kh5SqeH3C/oMWYo9fqk7FVkMpKmUEjbF2cQVkTD650RZtvEE
	qfN5JmeD0D2Cooia+Ic+FVuUanK+1Hkuz8Xbo96YVUNdMWBIlW4J/0lYlUZf3QyWz+dLTMztkUT/z
	tzo74YHGn/WKK8IZed/Y80sOdzZyTDZvZltnvWzWNv7SA0Py9qK+YSmOK4qlt/ftOPfr/ODku1S7E
	F0FGxQQGlU8eZPqFM9uqUDZnM2R2Nyhb/79iJzU7wrXI5c6IFl0Khwt6vestEgoXIxocGa0dKuZri
	23Mjca7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q92W6-007xQr-0K;
	Tue, 13 Jun 2023 11:48:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q92W3-007xQJ-1m
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 11:48:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q92W1-0007AE-LH
	for barebox@lists.infradead.org; Tue, 13 Jun 2023 13:48:49 +0200
Message-ID: <19bece81-134f-a9bf-8305-7a5025999574@pengutronix.de>
Date: Tue, 13 Jun 2023 13:48:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US, de-DE
To: barebox@lists.infradead.org
References: <20230608134040.2123869-1-a.fatoum@pengutronix.de>
 <20230608134040.2123869-3-a.fatoum@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
In-Reply-To: <20230608134040.2123869-3-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_044851_590334_BF23D758 
X-CRM114-Status: GOOD (  25.89  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] commands: of_diff: simplify error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

FTR - though I'm too late to the party:

This also fixes a null pointer exception when running of_diff with invalid 
arguments: 
https://lore.barebox.org/barebox/044fee32-5560-2e85-a0d3-cc7cea71ed48@pengutronix.de/

Tested-by: Johannes Zink <j.zink@pengutronix.de>

On 6/8/23 15:40, Ahmad Fatoum wrote:
> The error check and message is duplicated for each argument and
> could be unified if we move it to get_tree instead.
> 
> While at it, we limit argc to exactly 3 in case we want to add options
> in the future.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>   commands/of_diff.c | 55 ++++++++++++++++------------------------------
>   drivers/of/base.c  |  3 +++
>   2 files changed, 22 insertions(+), 36 deletions(-)
> 
> diff --git a/commands/of_diff.c b/commands/of_diff.c
> index 19a4a26d2012..ff3d46c7f530 100644
> --- a/commands/of_diff.c
> +++ b/commands/of_diff.c
> @@ -17,60 +17,43 @@ static struct device_node *get_tree(const char *filename, struct device_node *ro
>   {
>   	struct device_node *node;
>   
> +	if (!root)
> +		root = ERR_PTR(-ENOENT);
> +
>   	if (!strcmp(filename, "-")) {
> -		node = of_get_root_node();
> -		if (!node)
> -			return ERR_PTR(-ENOENT);
> -
> -		return of_dup(node);
> -	}
> -
> -	if (!strcmp(filename, "+")) {
> -		node = of_get_root_node();
> -		if (!node)
> -			return ERR_PTR(-ENOENT);
> -
>   		node = of_dup(root);
> -
> -		of_fix_tree(node);
> -
> -		return node;
> +	} else if (!strcmp(filename, "+")) {
> +		node = of_dup(root);
> +		if (!IS_ERR(node))
> +			of_fix_tree(node);
> +	} else {
> +		node = of_read_file(filename);
>   	}
>   
> -	return of_read_file(filename);
> +	if (IS_ERR(node))
> +		printf("Cannot read %s: %pe\n", filename, node);
> +
> +	return node;
>   }
>   
>   static int do_of_diff(int argc, char *argv[])
>   {
> -	int ret = 0;
> +	int ret = COMMAND_ERROR;
>   	struct device_node *a, *b, *root;
>   
> -	if (argc < 3)
> +	if (argc != 3)
>   		return COMMAND_ERROR_USAGE;
>   
>   	root = of_get_root_node();
>   	a = get_tree(argv[1], root);
>   	b = get_tree(argv[2], root);
>   
> -	if (IS_ERR(a)) {
> -		printf("Cannot read %s: %pe\n", argv[1], a);
> -		ret = COMMAND_ERROR;
> -		a = NULL;
> -		goto out;
> -	}
> +	if (!IS_ERR(a) && !IS_ERR(b))
> +		ret = of_diff(a, b, 0) ? COMMAND_ERROR : COMMAND_SUCCESS;
>   
> -	if (IS_ERR(b)) {
> -		printf("Cannot read %s: %pe\n", argv[2], b);
> -		ret = COMMAND_ERROR;
> -		b = NULL;
> -		goto out;
> -	}
> -
> -	ret = of_diff(a, b, 0) ? COMMAND_ERROR : COMMAND_SUCCESS;
> -out:
> -	if (a && a != root)
> +	if (!IS_ERR(a) && a != root)
>   		of_delete_node(a);
> -	if (b && b != root)
> +	if (!IS_ERR(b) && b != root)
>   		of_delete_node(b);
>   
>   	return ret;
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 5da188115547..e3416b5b75a7 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2660,6 +2660,9 @@ struct device_node *of_copy_node(struct device_node *parent, const struct device
>   
>   struct device_node *of_dup(const struct device_node *root)
>   {
> +	if (IS_ERR_OR_NULL(root))
> +		return ERR_CAST(root);
> +
>   	return of_copy_node(NULL, root);
>   }
>   

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



