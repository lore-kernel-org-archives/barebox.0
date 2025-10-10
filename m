Delivery-date: Fri, 10 Oct 2025 10:45:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v78l3-006FKy-03
	for lore@lore.pengutronix.de;
	Fri, 10 Oct 2025 10:45:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v78l2-0003UE-EL
	for lore@pengutronix.de; Fri, 10 Oct 2025 10:45:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QrmDE+/fYtAPv6ZCn4Ue7ZmhhIFlrHEiyOqF79/VTvU=; b=CkDzbd93PKwpX80lvQH8grc/b+
	KaFnP5Vbk3zvRUcXtBY5qQRSM1+wUAbUUk9WydfMfu4lL0z4HBoej/qKCYZVT6N61/snAYPWqgVbC
	GQahR0uRJprrv8feVO3llZPjNwPXutZnqpIB19kG020l+qt8Js5J88mRjdUvrf2P3/73aJKhmxlwf
	6YeHl7OY9pgKCd9u0YhL4I2CcndwDwuo1LLr6e9U2qdR7GyulLk2a5wtBCkUE2h4apEP8kYglof7K
	pXhISe1X/Ez69HfMclu+qxJTgxdWZVRKgRBOIBwahe6gdBPpxe3dgyCxN603I4ShfVkjirRinoSYn
	Mg6vWo+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v78kV-000000084Jl-0NL3;
	Fri, 10 Oct 2025 08:45:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v78kS-000000084J0-2aDm
	for barebox@lists.infradead.org;
	Fri, 10 Oct 2025 08:45:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1v78kP-0003FB-K8; Fri, 10 Oct 2025 10:45:09 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1v78kP-002s1J-1O;
	Fri, 10 Oct 2025 10:45:09 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1v78kP-0067t4-14;
	Fri, 10 Oct 2025 10:45:09 +0200
Date: Fri, 10 Oct 2025 10:45:09 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org, jre@pengutronix.de
Message-ID: <20251010084509.gdlia2owvq6jqt4a@pengutronix.de>
References: <20251010054939.3067504-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251010054939.3067504-1-a.fatoum@barebox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251010_014512_655149_6DC3A885 
X-CRM114-Status: GOOD (  16.71  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] FIT: compare key name hint with streq_ptr for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-10-10, Ahmad Fatoum wrote:
> When given a key name hint, we first attempt verification using the key
> it describes and fall through to verifying with all other keys.
> 
> The code implementing this is not necessarily intuitive and strcmp()
> makes it harder to understand.
> 
> As we check for NULL pointer anyway, let's use streq_ptr, which returns
> true instead of 0 on equality.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  common/image-fit.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 6b44a79e9d1c..3017ccb5048f 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -290,7 +290,8 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
>  	for_each_public_key(key) {
>  		fail_reason = "verification failed";
>  
> -		if (key_name && !strcmp(key->key_name_hint, key_name))
> +		/* Don't recheck with same key as before */
> +		if (streq_ptr(key->key_name_hint, key_name))
>  			continue;
>  
>  		ret = public_key_verify(key, sig_value, sig_len, hash, algo);
> -- 
> 2.47.3
> 
> 
> 


