Delivery-date: Wed, 22 Oct 2025 11:41:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVLn-00AYq4-1F
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 11:41:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVLm-0000cu-Pa
	for lore@pengutronix.de; Wed, 22 Oct 2025 11:41:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ToZy2LVxuZxA6SN+aLbXTjQZJDtepllVo7K14sz1Xtg=; b=Wl1IsKAoHRMKY/WMhZrGwsb7TS
	7XjlO5VBjklQzOI3l3JMb5Y9SgzjWQPyd0UK8xMsT58LTQhJWef6xYR5+o3TwWuClXn3YE5PWFfVf
	MRNZffGugrv+9kFRB2PxC/Edh4v//Yd7evPFBEGFR1fVKinS1DQfnIHLU+1SGNIyG/rPTP+izPpqo
	vwpVzZi4feWX3Si0DwifMqNtpuT5fRgz4yIzr1idlnk+JvgDW1EPgVMALjyVivq5pxhr/WwNhIBqj
	hKelJ7OfO3Sq/vPCNg4ZfXlEtJO8A/ux2IIJz2Y7uS0QFKDL4clCAJRTYcWfLY93GMfxMd3x9lxJM
	HHA3fXKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVLK-00000002IXw-1eZi;
	Wed, 22 Oct 2025 09:41:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVLH-00000002IVf-318F
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 09:41:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBVLG-0000X2-70; Wed, 22 Oct 2025 11:41:14 +0200
Message-ID: <c76d0d28-1110-4939-b2ff-673e740db542@pengutronix.de>
Date: Wed, 22 Oct 2025 11:41:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-3-7a8aaf95081c@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251014-tlv-signature-v1-3-7a8aaf95081c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_024115_782286_3F235B81 
X-CRM114-Status: GOOD (  19.46  )
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
Subject: Re: [PATCH 03/15] fit: only accept keys from "fit"-keyring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/14/25 1:02 PM, Jonas Rebmann wrote:
> Separate keys shall be used for fitimage verification and the upcoming
> TLV verification.
> 
> Based on the newly introduced keyring feature, limit fitimage
> verification to the keys in the keyring literally named "fit", which is
> also the current default keyring name in keytoc for backwards
> compatibility.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  common/image-fit.c          | 13 ++++++++-----
>  crypto/public-keys.c        | 13 ++++++++++---
>  crypto/rsa.c                |  1 +
>  include/crypto/public_key.h |  9 ++++++++-
>  include/tlv/tlv.h           |  1 +
>  5 files changed, 28 insertions(+), 9 deletions(-)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 3017ccb504..0cbe8baf6f 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -261,7 +261,7 @@ static struct digest *fit_alloc_digest(struct device_node *sig_node,
>  static int fit_check_signature(struct fit_handle *handle, struct device_node *sig_node,
>  			       enum hash_algo algo, void *hash)
>  {
> -	const char *fail_reason = "no built-in keys";
> +	const char *fail_reason;
>  	const struct public_key *key;
>  	const char *key_name = NULL;
>  	int sig_len;
> @@ -274,10 +274,13 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
>  		return -EINVAL;
>  	}
>  
> +	fail_reason = "no matching keys";
> +
>  	of_property_read_string(sig_node, "key-name-hint", &key_name);
>  	if (key_name) {
> -		key = public_key_get(key_name);
> +		key = public_key_get(key_name, "fit");
>  		if (key) {
> +			fail_reason = "verification failed";
>  			ret = public_key_verify(key, sig_value, sig_len, hash, algo);
>  			if (handle->verbose)
>  				pr_info("Key %*phN (%s) -> signature %s\n", key->hashlen,
> @@ -287,13 +290,13 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
>  		}
>  	}
>  
> -	for_each_public_key(key) {
> -		fail_reason = "verification failed";
> +	for_each_public_key_keyring(key, "fit") {
>  
>  		/* Don't recheck with same key as before */
> -		if (streq_ptr(key->key_name_hint, key_name))
> +		if (key_name && streq_ptr(key->key_name_hint, key_name))

Ouch. This should be fixed up into the commit introducing streq_ptr as
that one breaks handling of multiple keys where there are no hints..

I sent a fixup.


Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



