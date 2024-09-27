Delivery-date: Fri, 27 Sep 2024 13:11:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8tA-003Nfe-2A
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 13:11:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8tB-0002aX-40
	for lore@pengutronix.de; Fri, 27 Sep 2024 13:11:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wksReJZ+gt8Gvr6+VDot8aWyhJ+NtYsAOwJ/xevEH4o=; b=ANJMXKIlJ7gZ//+HKSYoH0cbsE
	2DW9+epAmBf5QGOK9zvQIHRLdfE+gw33vYzNEza7AXPRzKXTjDeqAKn8Q2M6OGKNH6Rhg8s4e7ajq
	rnlRWIxeleuM1HQVMWHyESHgI4aHAKZoWejgQ24YhMrd6Wvnv6EyDFZm1CrNxcMtm4jHl0vjpBMlY
	UZA0fpRg3kUfVzMxk0kchXUinu7TPY8PlxqC60mEhye3IO5FQSgAza8hd2tvLvZ+gm/R8onQx096P
	ioaGD+GeW/jF5VGDXKf1GqWVlO4O1CD4XKxgAg9zWWh7bhIlvHVnBkKVNn6SgrCEOCIWBT5KmcSbX
	wNW/KJEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8sX-0000000Av7G-02zI;
	Fri, 27 Sep 2024 11:11:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8sT-0000000Av6g-0k0G
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 11:11:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1su8sR-0002Fh-DD; Fri, 27 Sep 2024 13:11:11 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1su8sQ-001uSl-Us; Fri, 27 Sep 2024 13:11:10 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1su8sQ-00F2Vm-2p;
	Fri, 27 Sep 2024 13:11:10 +0200
Date: Fri, 27 Sep 2024 13:11:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZvaSzgjYTN6JWIKx@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-10-s.hauer@pengutronix.de>
 <e5fabaa7-10e7-435b-b2f4-380fdca30cdf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e5fabaa7-10e7-435b-b2f4-380fdca30cdf@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_041113_243529_F06C1F29 
X-CRM114-Status: GOOD (  26.77  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 09/16] crypto: rsa: encapsulate rsa keys in public
 keys struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Sep 27, 2024 at 10:02:08AM +0200, Ahmad Fatoum wrote:
> On 13.09.24 09:59, Sascha Hauer wrote:
> > This encapsulates struct rsa_public_key into a struct public_key. So far
> > RSA keys are the only supported key type. With adding ECDSA keys we need
> > a container struct so that we can add ECDSA keys using the same
> > mechanisms.
> > 
> > Also we rename CONFIG_CRYPTO_RSA_KEY to CONFIG_CRYPTO_PUBLIC_KEYS and
> > CONFIG_CRYPTO_RSA_BUILTIN_KEYS to CONFIG_CRYPTO_BUILTIN_KEYS as these
> > variables will be used for all types of keys, not only RSA keys.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> But two comments below.
> 
> > diff --git a/crypto/public-keys.c b/crypto/public-keys.c
> > new file mode 100644
> > index 0000000000..a3ef3bafc8
> > --- /dev/null
> > +++ b/crypto/public-keys.c
> > @@ -0,0 +1,39 @@
> 
> add a pr_fmt?
> 
> > +#include <common.h>
> > +#include <crypto/public_key.h>
> > +#include <rsa.h>
> > +
> > +extern const struct public_key * const __public_keys_start;
> > +extern const struct public_key * const __public_keys_end;
> > +
> > +static int init_public_keys(void)
> > +{
> > +	const struct public_key * const *iter;
> > +	int ret;
> > +
> > +	for (iter = &__public_keys_start; iter != &__public_keys_end; iter++) {
> > +		struct rsa_public_key *rsa_key;
> > +
> > +		switch ((*iter)->type) {
> > +		case PUBLIC_KEY_TYPE_RSA:
> > +			rsa_key = rsa_key_dup((*iter)->rsa);
> > +			if (!rsa_key)
> > +				continue;
> > +
> > +			ret = rsa_key_add(rsa_key);
> > +			if (ret)
> > +				pr_err("Cannot add rsa key: %pe\n", ERR_PTR(ret));
> > +			break;
> > +		default:
> > +			pr_err("Ignoring unknown key type %u\n", (*iter)->type);
> > +		}
> > +
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +device_initcall(init_public_keys);
> > +
> 
> > -extern const struct rsa_public_key * const __rsa_keys_start;
> > -extern const struct rsa_public_key * const __rsa_keys_end;
> 
> I know you are just moving these around, but defining
> these with [] is way less confusing IMO.

This is changed in 12/16.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


