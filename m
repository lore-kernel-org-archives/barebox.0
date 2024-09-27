Delivery-date: Fri, 27 Sep 2024 13:28:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su98s-003Nvh-1J
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 13:28:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su98s-0001bj-PJ
	for lore@pengutronix.de; Fri, 27 Sep 2024 13:28:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T1tQEbPyKgq2D/SxCmpcAM9VzojEh1/MYjZgkOuL09k=; b=1irOkhOKHl4rDAxOWBfNV5I8ZP
	kVmbgWdS//DV60dXpu2RYpsPsiW91a4nJKonn8sABRMdxMhnXwKIYJevmOZ5qcF3HD6pSrc2g71w4
	r09rlOkKVYfnBjhnFulDZnAcVW0nfAH6H/15JDNa/s8v53fqiepj0KboL6iNWaqvahcpF19Orrzeb
	y+Vm+NlDxcuOgdQGKImbjbWF5ZiTF+3HaojmhvBbfrrheesfu+GxMSYAG/ILmxH5BAy4jGijgJtYr
	shi+Q4+BA7Jq0KlSzHqCwrwTVaEpMbvKG2ihvil8fai3gIwPjHABz6c6WskEGj8/4PcXgIRhcmvmC
	dn0Kw7qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su98L-0000000Awzr-0fAb;
	Fri, 27 Sep 2024 11:27:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su93v-0000000AwHY-0SFC
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 11:23:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su93t-0007aX-0g; Fri, 27 Sep 2024 13:23:01 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su93s-001uTw-K3; Fri, 27 Sep 2024 13:23:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su93s-000UKg-3D;
	Fri, 27 Sep 2024 13:23:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240913075924.1652866-1-s.hauer@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
Message-Id: <172743618054.116559.8093415204739250402.b4-ty@pengutronix.de>
Date: Fri, 27 Sep 2024 13:23:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_042303_187879_AD02CEFC 
X-CRM114-Status: GOOD (  11.41  )
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
Subject: Re: [PATCH v4 00/16] Add ECDSA support for FIT image verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 13 Sep 2024 09:59:08 +0200, Sascha Hauer wrote:
> This series implements ECDSA signature verification for FIT images.
> The ECDSA code itself is taken from the Kernel. Currently only supported
> way to specify a ECDSA key is to compile it into the binary using
> CONFIG_CRYPTO_PUBLIC_KEYS, taking it from a device tree is not yet
> supported.
> Since v2 this series unifies the way public keys are passed to barebox.
> We now have a single Kconfig option which takes a list of public keys,
> which can be either RSA or ECDSA keys.
> 
> [...]

Applied, thanks!

[01/16] keytoc: remove ECDSA dts support
        https://git.pengutronix.de/cgit/barebox/commit/?id=ea8da7c9f2bc (link may not be stable)
[02/16] keytoc: fail in case gen_key() fails
        https://git.pengutronix.de/cgit/barebox/commit/?id=dcd40860f529 (link may not be stable)
[03/16] keytoc: fix ECDSA endianess problems
        https://git.pengutronix.de/cgit/barebox/commit/?id=9932d1817b84 (link may not be stable)
[04/16] keytoc: remove duplicate __ENV__ check
        https://git.pengutronix.de/cgit/barebox/commit/?id=7a0ced8632b5 (link may not be stable)
[05/16] crypto: Makefile: make simpler
        https://git.pengutronix.de/cgit/barebox/commit/?id=099f1aed5c67 (link may not be stable)
[06/16] crypto/Makefile: Drop unnecessary dependencies
        https://git.pengutronix.de/cgit/barebox/commit/?id=d0aa7e8fb1e2 (link may not be stable)
[07/16] keytoc: make key name hint optional
        https://git.pengutronix.de/cgit/barebox/commit/?id=ed553b7d070c (link may not be stable)
[08/16] crypto: rsa: include key name hint into CONFIG_CRYPTO_RSA_KEY
        https://git.pengutronix.de/cgit/barebox/commit/?id=93ccf51a40ff (link may not be stable)
[09/16] crypto: rsa: encapsulate rsa keys in public keys struct
        https://git.pengutronix.de/cgit/barebox/commit/?id=b26a8b0a025c (link may not be stable)
[10/16] crypto: add public_key functions
        https://git.pengutronix.de/cgit/barebox/commit/?id=724f48590768 (link may not be stable)
[11/16] crypto: builtin_keys: Allow to specify multiple keys in CONFIG_CRYPTO_PUBLIC_KEYS
        https://git.pengutronix.de/cgit/barebox/commit/?id=13db5fdf2d54 (link may not be stable)
[12/16] crypto: public-keys: use array of public_keys
        https://git.pengutronix.de/cgit/barebox/commit/?id=1eb1f1d2b885 (link may not be stable)
[13/16] crypto: rsa: create static inline wrapper for rsa_verify()
        https://git.pengutronix.de/cgit/barebox/commit/?id=5ace4df43844 (link may not be stable)
[14/16] Add elliptic curve cryptography (ECC) helper functions
        https://git.pengutronix.de/cgit/barebox/commit/?id=cdc6830e3121 (link may not be stable)
[15/16] crypto: add ECDSA support
        https://git.pengutronix.de/cgit/barebox/commit/?id=1a3214bd3eb3 (link may not be stable)
[16/16] crypto: make RSA a visible option
        https://git.pengutronix.de/cgit/barebox/commit/?id=8e1de73767fd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



