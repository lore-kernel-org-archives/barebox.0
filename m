Delivery-date: Thu, 21 Sep 2023 14:34:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIsj-005s2t-HC
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 14:34:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIsh-00039g-Id
	for lore@pengutronix.de; Thu, 21 Sep 2023 14:34:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sSsPRZw12zNeLGv5NkxQkOtGFPPvCptmLAyQLT+Htk8=; b=VEauZMov0CKRQvnQ2W2XVfJHBV
	2hDhGWAoeqJ2LpblEdel1UznzKeB14Kg9wpc0mM06UUkIusXHHK86ircdWqaFnjwNfpcBcgO82BU3
	STgL2Atzoy5uF/WBF0IdzQL/zdy/DnEazpgDMtHUtX/XogbUIkoedsvU0IX4qWYz9YCJs4HRJy+4k
	iK9Esrzk2V/NYdE0ZpUVcjaPnT4232dvGG1sV7YPYZmyriraPSsLjUjgpD5W5JcFCAxh8cAkEJDBU
	ERBJ/mkCfQ7hoX3NkVPLXr7wuatcXXQNA5QLWalbAfikpXJw2/dGxFHVNDfhHJUgt7rl/88fdzKIP
	rceXfFkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIri-0061nO-1q;
	Thu, 21 Sep 2023 12:33:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIrf-0061ml-1D
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 12:33:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qjIrc-0002jj-Tu; Thu, 21 Sep 2023 14:33:00 +0200
Message-ID: <2a8fbd5c-ad49-d37d-9914-463b174199fc@pengutronix.de>
Date: Thu, 21 Sep 2023 14:33:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20230920123720.767063-1-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230920123720.767063-1-r.czerwinski@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_053303_416352_C861BBED 
X-CRM114-Status: GOOD (  18.91  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] blspec: take compatible name as argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 20.09.23 14:37, Rouven Czerwinski wrote:
> Instead of retrieving the root compatible itself, let
> entry_is_of_compatible take the compatible as an argument. Pass in
> of_get_machine_compatible for now, no functional changes.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  common/blspec.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/common/blspec.c b/common/blspec.c
> index b70332a54c..f8d47f20d2 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -422,13 +422,12 @@ static char *parse_nfs_url(const char *url)
>   *
>   * returns true if the entry is compatible, false otherwise
>   */
> -static bool entry_is_of_compatible(struct blspec_entry *entry)
> +static bool entry_is_of_compatible(struct blspec_entry *entry, const char* compat)
>  {
>  	const char *devicetree;
>  	const char *abspath;
>  	int ret;
>  	struct device_node *root = NULL, *barebox_root;
> -	const char *compat;
>  	char *filename;
>  
>  	/* If the entry doesn't specify a devicetree we are compatible */
> @@ -444,10 +443,6 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
>  	if (!barebox_root)
>  		return true;
>  
> -	ret = of_property_read_string(barebox_root, "compatible", &compat);
> -	if (ret)
> -		return false;
> -
>  	if (entry->rootpath)
>  		abspath = entry->rootpath;
>  	else
> @@ -521,7 +516,7 @@ int blspec_scan_file(struct bootentries *bootentries, const char *root,
>  	entry->configpath = xstrdup(configname);
>  	entry->cdev = get_cdev_by_mountpath(root);
>  
> -	if (!entry_is_of_compatible(entry)) {
> +	if (!entry_is_of_compatible(entry, of_get_machine_compatible())) {

of_get_machine_compatible has an unfortunate name, as it strips away the vendor prefix,
so this change does introduce breakage.

>  		blspec_entry_free(&entry->entry);
>  		return -ENODEV;
>  	}

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



