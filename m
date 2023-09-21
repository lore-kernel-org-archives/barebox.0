Delivery-date: Thu, 21 Sep 2023 14:40:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIyW-005sDw-Oc
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 14:40:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIyU-0004vg-Mz
	for lore@pengutronix.de; Thu, 21 Sep 2023 14:40:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IzanQNlAuzfn0NyMO4ffcdobPqpGi7ZFJI9svCtdqV4=; b=3Mw5etXZFuaccZ+tKoyf9zuXQu
	PBO/76qFRMJ277IM0PYVwJZunxIwfGHIzVqAX/FEltoZrNwEOWXIHFXtOA/pU/Keplm9GsrzqR7bO
	SPeEAg1YyEsji4gnP5T9oW4Vgd6dgkL3AE5w3d5xXO0mDdoPD++03e4RreCn/GASClcEF8QUravrn
	x8wreCdXQ5UuCtWWdazZuSMt/NIht6qlZkZutQM4LqXHw6eDstvr40YZlfPUQ4GdSMnqePlNBorqD
	3CHHLRY9mL6yBhy2+hDer2R/vv0qCBW0b+u51IaDC0FqLS2CnEaD6asM2M36wig7bopVSWXM1H6Qj
	isCXmnag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIxR-0062We-2l;
	Thu, 21 Sep 2023 12:39:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIxO-0062Va-2p
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 12:39:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIxN-0004Yv-NU; Thu, 21 Sep 2023 14:38:57 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIxN-007vjy-Au; Thu, 21 Sep 2023 14:38:57 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIxN-00Al73-8U; Thu, 21 Sep 2023 14:38:57 +0200
Date: Thu, 21 Sep 2023 14:38:57 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921123857.GO637806@pengutronix.de>
References: <20230920123720.767063-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920123720.767063-1-r.czerwinski@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_053858_914072_A521452D 
X-CRM114-Status: GOOD (  21.35  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] blspec: take compatible name as argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 20, 2023 at 02:37:18PM +0200, Rouven Czerwinski wrote:
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

of_get_machine_compatible() returns the machine name without the vendor
prefix, i.e. from "fsl,imx6dl-sabrelite" it will make "imx6dl-sabrelite"

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


