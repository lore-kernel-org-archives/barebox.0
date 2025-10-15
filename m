Delivery-date: Wed, 15 Oct 2025 12:21:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8ydH-0083xf-0o
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 12:21:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8ydG-0006jy-M4
	for lore@pengutronix.de; Wed, 15 Oct 2025 12:21:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GvnzMbyiadebF5yKuXoOUg/5Ytf8RXhc6DG79SIo+Eo=; b=MdxOpuaZ6LmFK5D3eNwvIJ/pdD
	uiVH18mxFH/X8wm7FNg7+Y8aOTVyAaE5dIErLQp5mLO11/tGFGLEw0OT8/yjw3CuBasXq9x78At23
	Cgw4Gj2GyrXdCcSdR45jYQLYzsnXYhOdsy9G5MBZ1+Owi4JYPaA31DkgBUP1Jh/ZDWOjxLdTB12Qp
	+nf8M3YNL5Om+bWXtRzxxWPoAt3q0r0PsBVyvybU+6H1kX0c5YfgGEt724UEncuRKQrN1N4yMpMJ6
	3tYR/9ccrrxG7w/29F/5ULo0j5VuYD7/Azy92ga1x7rNH+srh7+579p1r87L8fi5y0xGRFLMhR6P8
	a7CgwvZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ycp-00000001GIl-0uN0;
	Wed, 15 Oct 2025 10:20:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ycm-00000001GHQ-1GEM
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 10:20:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8yck-0006eL-BB; Wed, 15 Oct 2025 12:20:50 +0200
Message-ID: <172794fd-bcaf-4563-96e8-be8a82c5e7ab@pengutronix.de>
Date: Wed, 15 Oct 2025 12:20:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-14-7a8aaf95081c@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-14-7a8aaf95081c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_032052_364278_34107712 
X-CRM114-Status: GOOD (  12.76  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 14/15] doc/barebox-tlv: Update documentation regarding
 TLV-Signature
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2025-10-14 13:03, Jonas Rebmann wrote:
>   - Update the data structure documentation
>   - Explain the signature scheme
>   - Add signature to bareboxtlv-generator usage description

I forgot to update the kconfig help for CRYPTO_BUILTIN_KEYS. In v2 I
would include in this documentation patch the change to:

   This option should be a space separated list of filenames of public
   key specifications. While other syntaxes are supported for legacy
   reasons, each entry should have the format
   keyring=<keyring>[,fit-hint=<hint>]:<crt>
   
   <keyring> specifies the keyring for the key to be included in (e.g.
   "fit" if this key is to be used for fitimage verification).
   
   <fit-hint> is used as a key name hint for fitimage verificaiton to
   find a key without iterating over all keys.
   
   <crt> specifies the path of a public key to be included in barebox.
   It can be a PEM-formatted file containing an X.509 certificate. If a
   certificate path starts with "pkcs11:" it is interpreted as a PKCS#11
   URI rather than a file.
   
   Placeholders such as __ENV__VAR_NAME can be used to look up the
   corresponding value in the environment variable VAR_NAME for public
   key paths/URIs as well as key name hints.
   
   Examples specified directly:
   
   - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit:pkcs11:object=foo"
   - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=myhint:pkcs11:object=foo"
   - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=myhint:pkcs11:object=foo keyring=fit:/foobar/baz.der"
   - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=myhint:pkcs11:object=foo keyring=fit,fit-hint=myotherhint:/foobar/baz.der"
   
   Example specified indirectly by two environment variables:
   
   - myhint="myhint"
   - myname="pkcs11:object=foo" (.der could be used too)
   - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=__ENV__myhint:__ENV__myname"
   
   Example specified indirectly by a single environment variable:
   
   - mykey="keyring=fit,fit-hint=myhint:pkcs11:object=foo" (.der could be used too)
   - CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__mykey"


Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


