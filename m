Delivery-date: Wed, 22 Oct 2025 11:43:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVNX-00AYvl-02
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 11:43:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVNW-0000rq-Cr
	for lore@pengutronix.de; Wed, 22 Oct 2025 11:43:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vo/2QmkE9ua3QM3PEcPQBxMwG2AP/Kbfo2HNkVUfRdw=; b=SYrgp84ez6Vkorh5YimNRKW4cG
	NryJYEJFYXFwHFfpKd6zKOl5kwAadaEpWD1BDyEwHOEL6snw/D/UMRML9Qrjt87BUVHeZPFsr6uDD
	UTbQQFow2L76S/vmNs52QiKY59X/fe++2Hs6r3S5/BsqCCvVtB4KQ8HDk67WEuQHWwVMPPyrIZ99u
	GWPGGmeiq+E/SwVaDqEHfKyGHEh6yIKu4VDeY5svn9ku4TnYwB50ApjOcjAeBeCD8QNKreNgqoi8Y
	YKFxsifDGZ59GGWOsLFTiln5RyZUwBgWZzeMAi37Tu847vDuHTG3qJYvyJ0+dmMsMwmXyaZZdEsMi
	Baglop6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVN8-00000002Ikg-3Wq6;
	Wed, 22 Oct 2025 09:43:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVN5-00000002IkF-3tyF
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 09:43:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBVN4-0000l1-FG; Wed, 22 Oct 2025 11:43:06 +0200
Message-ID: <1ee2493e-5907-406a-a063-8d231e3ff266@pengutronix.de>
Date: Wed, 22 Oct 2025 11:43:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-5-7a8aaf95081c@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251014-tlv-signature-v1-5-7a8aaf95081c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_024308_183623_03A69315 
X-CRM114-Status: GOOD (  19.51  )
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
Subject: Re: [PATCH 05/15] commands: keys: update output format to include
 keyring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/14/25 1:02 PM, Jonas Rebmann wrote:
> Also show the algorithm used.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  commands/keys.c             |  8 ++------
>  include/crypto/public_key.h | 12 ++++++++++++
>  2 files changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/commands/keys.c b/commands/keys.c
> index 2d85e8124f..e1e87f3e9e 100644
> --- a/commands/keys.c
> +++ b/commands/keys.c
> @@ -7,12 +7,8 @@ static int do_keys(int argc, char *argv[])
>  	const struct public_key *key;
>  
>  	for_each_public_key(key) {
> -		printf("KEY: %*phN", key->hashlen, key->hash);
> -
> -		if (key->key_name_hint)
> -			printf(" (%s)\n", key->key_name_hint);
> -		else
> -			printf("\n");
> +		printf("KEY: %*phN\tTYPE: %s\tKEYRING: %s\tHINT: %s\n", key->hashlen,
> +		       key->hash, public_key_type_string(key->type), key->keyring, key->key_name_hint);

Given that hint is only relevant to FIT, I think it would be better to
hide it when it's empty.

Cheers,
Ahmad

>  	}
>  
>  	return 0;
> diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
> index 44ae09e4d0..269b878a04 100644
> --- a/include/crypto/public_key.h
> +++ b/include/crypto/public_key.h
> @@ -12,6 +12,18 @@ enum public_key_type {
>  	PUBLIC_KEY_TYPE_ECDSA,
>  };
>  
> +static inline const char *public_key_type_string(enum public_key_type type)
> +{
> +	switch (type) {
> +	case PUBLIC_KEY_TYPE_RSA:
> +		return "RSA";
> +	case PUBLIC_KEY_TYPE_ECDSA:
> +		return "ECDSA";
> +	default:
> +		return "unknown";
> +	}
> +}
> +
>  struct public_key {
>  	enum public_key_type type;
>  	struct list_head list;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



