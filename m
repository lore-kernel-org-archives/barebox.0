Delivery-date: Wed, 22 Oct 2025 11:56:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVaE-00AZ4U-1a
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 11:56:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVaD-0002kS-V3
	for lore@pengutronix.de; Wed, 22 Oct 2025 11:56:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9eR1CYehZ9/UlDQXCM0GvcqJ3cBank3fJ1Inx8L3EGU=; b=hXI5JSISiBsT07IYYBDcGJwlDf
	clLE1Mbqyh3SlZoi59ZL2yrB7xX12bg/VrIW73LtYXDdhPettl0iweFG71CKJEee3akTVboDmO8bN
	NcuAn2H+ZItsEdU2+xK6aGa2sHNZ97IaaWRihsXquxQdWFE3xx8SKmgGwYQmJXb5lzsTN86O8JPJd
	fQNNYLuLdfPS3ZxUGi1VNk30Lu6xzNdEpCajXeaHxKDTV41aBLPoNOnnc1Ku91xMZEpl8w0whl4PM
	z0Y2ep3AjfECuFVcT0kVpuD3UxFZu9zf3K5NoA7LdTX4H48aX+Fe3hPX9sDztf2OZxOy7QDnuB+e/
	3GMBD8QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVZm-00000002L3j-0Yfr;
	Wed, 22 Oct 2025 09:56:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVZi-00000002L2X-0yzw
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 09:56:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vBVZg-0002d7-EV; Wed, 22 Oct 2025 11:56:08 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vBVZg-004rzB-0r;
	Wed, 22 Oct 2025 11:56:08 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vBVZg-00B7An-0a;
	Wed, 22 Oct 2025 11:56:08 +0200
Date: Wed, 22 Oct 2025 11:56:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>,
	Jonas Rebmann <jre@pengutronix.de>
Message-ID: <aPiqOHY4kU7yZOIY@pengutronix.de>
References: <20251022093813.4191649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251022093813.4191649-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_025610_589006_ADD1E566 
X-CRM114-Status: GOOD (  18.11  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! FIT: compare key name hint with streq_ptr for
 clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Oct 22, 2025 at 11:38:06AM +0200, Ahmad Fatoum wrote:
> FIT: fix use of multiple FIT keys
> 
> streq_ptr returns true if both arguments are NULL. This can happen if we
> have no FIT key name hints at all and shouldn't lead to ignoring keys,
> so add the check for the hint.

key_name_hint can't be NULL, so this is not necessary. However, it's not
exactly obvious that key_name_hint can't be NULL, so this fixup improves
readability, hence: applied.

Sascha

> index 3017ccb5048f..22f768e7a070 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -290,8 +290,8 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
>  	for_each_public_key(key) {
>  		fail_reason = "verification failed";
>  
> -		/* Don't recheck with same key as before */
> -		if (streq_ptr(key->key_name_hint, key_name))
> +		/* Don't recheck with same key_name as before */
> +		if (key_name && streq_ptr(key->key_name_hint, key_name))
>  			continue;
>  
>  		ret = public_key_verify(key, sig_value, sig_len, hash, algo);
> -- 
> 2.47.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


