Delivery-date: Mon, 15 Apr 2024 10:31:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwHkY-001ijE-0M
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 10:31:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwHkU-00004w-6A
	for lore@pengutronix.de; Mon, 15 Apr 2024 10:31:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+7dCvLarB/ILk/P7Nu0SE9w0BhPI57Qt0cLbpyiPPyQ=; b=4oHwD74aiKVBARe+tQX8hSIQ+t
	rM2QxqjgwVd0/ywOhWHulT5Kmv//JxrGTK4MI+E42XUTKoHJv5tY5cW9lR8VX5BVZ1HWJJqCfxEqp
	IxUroZx1jyhs0XbbSMBXYepAVJLGavWoIeYGIvt7RoV8qUxCDjZSDYcM8XaO/wg+0DKSFFXAqkE5V
	qlzM8mGF/KfKVuzYnqiJAJ57shn31Jt1nQp6DhLIz091CXahNK4wXtxFKcPVpYNZrrIi+NQQuw2l/
	wW1F8VtXevpI22qCpLZO+WKGV+bYOUERRG0ZvnTWN7snEGuwKgGtVFIscBDy/uk1GBjZaHZ6XOFsW
	uYoM1YQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwHjo-00000007Y0R-28sp;
	Mon, 15 Apr 2024 08:30:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwHjk-00000007Xzc-2ROF
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 08:30:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwHjg-0007WO-H5; Mon, 15 Apr 2024 10:30:44 +0200
Message-ID: <69c9a97e-80e8-40e9-89c7-b9479f9dfd01@pengutronix.de>
Date: Mon, 15 Apr 2024 10:30:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jonas Richardsen <jonasrichardsen@emlix.com>, barebox@lists.infradead.org
References: <9010811a-0bf2-45bb-8efa-7ad27f60f565@pengutronix.de>
 <20240415081458.295448-1-jonasrichardsen@emlix.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240415081458.295448-1-jonasrichardsen@emlix.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_013048_658810_B4A0D997 
X-CRM114-Status: GOOD (  13.43  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: do not copy properties if they already exist in the
 destination
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 15.04.24 10:14, Jonas Richardsen wrote:

Please write a short sentence here, justifying the change and add
you S-o-b, see https://developercertificate.org/

> ---
>  drivers/of/base.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index b22959dabe..9bb4ae13db 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2346,6 +2346,9 @@ struct property *of_copy_property(const struct device_node *src,
>  	if (!prop)
>  		return NULL;
>  
> +	if (of_find_property(dst, propname, NULL))
> +		return ERR_PTR(-EEXIST);

Use of_property_present() here instead.

Cheers,
Ahmad

> +
>  	return of_new_property(dst, propname,
>  			       of_property_get_value(prop), prop->length);
>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



