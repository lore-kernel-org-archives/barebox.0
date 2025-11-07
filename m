Delivery-date: Fri, 07 Nov 2025 09:59:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHIJt-00GFCH-2O
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 09:59:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHIJt-0007QY-24
	for lore@pengutronix.de; Fri, 07 Nov 2025 09:59:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mimFhpSRTNYpxDr6oFjyIFn+7923fdWDR550AG/ltAQ=; b=ygJfTLjppmWexmaUe0dr1FTCXd
	r6NK7KBtpMEDRBQKEA0aTnL71ZP17Ajy0/A7TTQETwnSB92ojOvmSuOl66VTpfrmdcolen3tdwRps
	LG8IA3h/aoNle4P+0BfchHBJK+OS0hlemYolP9jUxvEddztAAVAdOh0Dm/re4MGBG2z9PBzfjJT+R
	Rl/UZxaBaaZvLutvZzRH4OKLkUq516PRMqrXTfPwMpSAU7BdBqtqGfGQHSXRpcfj2eYX/wxoEMOU9
	lP2GQp7cJ2bqlg1EMkzNhz15nU7rESsnR7H1XTVhjOTQuPnhrEkGBlFXipeU5EiTjuk6WjbUy63aC
	d4zm8h7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHIJL-0000000Gv9g-2BxD;
	Fri, 07 Nov 2025 08:59:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHIJF-0000000Gv7q-3gBe
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 08:59:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHIJC-0007BW-Jd; Fri, 07 Nov 2025 09:59:02 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHIJC-007V7M-12;
	Fri, 07 Nov 2025 09:59:02 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHIJC-00000000Hfb-2t9z;
	Fri, 07 Nov 2025 09:59:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
References: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
Message-Id: <176250594224.67872.9604737676681513368.b4-ty@pengutronix.de>
Date: Fri, 07 Nov 2025 09:59:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_005905_921556_0831A782 
X-CRM114-Status: GOOD (  11.65  )
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
Subject: Re: [PATCH v3 00/17] TLV-Signature and keyrings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 06 Nov 2025 16:17:57 +0100, Jonas Rebmann wrote:
> This series introduces everything needed for the use of signed TLVs in
> barebox. This allows for signed TLVs to be part of a secure boot chain,
> if CONFIG_TLV_SIGNATURE is enabled, keys are configured and the decoder
> is configured to require signature.
> 
> As TLV signature verification uses the public_keys list, propagated by
> keytoc.c with the public keys selected in CONFIG_CRYPTO_PUBLIC_KEYS, the
> keyring feature was introduced to allow separate keys for separate
> concerns.
> 
> [...]

Applied, thanks!

[01/17] lib: idr: avoid dangling else in idr_for_each_entry()
        https://git.pengutronix.de/cgit/barebox/commit/?id=558f95a99d30 (link may not be stable)
[02/17] common: clean up TLV code
        https://git.pengutronix.de/cgit/barebox/commit/?id=12fbe2420c57 (link may not be stable)
[03/17] crypto: Add support for keyrings
        https://git.pengutronix.de/cgit/barebox/commit/?id=9b6abf4928dc (link may not be stable)
[04/17] fit: only accept keys from "fit"-keyring
        https://git.pengutronix.de/cgit/barebox/commit/?id=35e1d658501d (link may not be stable)
[05/17] crypto: keytoc: Rename "hint" to "fit-hint" and do not use it in identifiers
        https://git.pengutronix.de/cgit/barebox/commit/?id=631598a78787 (link may not be stable)
[06/17] commands: keys: update output format to include keyring
        https://git.pengutronix.de/cgit/barebox/commit/?id=7a255f1bb20a (link may not be stable)
[07/17] commands: tlv: Error out on invalid TLVs
        https://git.pengutronix.de/cgit/barebox/commit/?id=8fc7e96dce0a (link may not be stable)
[08/17] scripts: bareboxtlv-generator: Implement signature
        https://git.pengutronix.de/cgit/barebox/commit/?id=bdc51ec7b77b (link may not be stable)
[09/17] scripts: bareboxtlv-generator: Increase max_size in example schema
        https://git.pengutronix.de/cgit/barebox/commit/?id=40dccf6965ad (link may not be stable)
[10/17] common: tlv: Add TLV-Signature support
        https://git.pengutronix.de/cgit/barebox/commit/?id=49deb31eb9f4 (link may not be stable)
[11/17] common: tlv: default decoder for signed TLV
        https://git.pengutronix.de/cgit/barebox/commit/?id=92801a8a3b85 (link may not be stable)
[12/17] crypto: Use "development" keys for "fit" and "tlv" keyring
        https://git.pengutronix.de/cgit/barebox/commit/?id=1006b066cf20 (link may not be stable)
[13/17] test: py: add signature to TLV integration tests
        https://git.pengutronix.de/cgit/barebox/commit/?id=50407b127bc1 (link may not be stable)
[14/17] ci: pytest: Add kconfig fragment for TLV signature integration tests
        https://git.pengutronix.de/cgit/barebox/commit/?id=54205e3cfa11 (link may not be stable)
[15/17] crypto: concatenate fit development certificate with private key
        https://git.pengutronix.de/cgit/barebox/commit/?id=a3078241ffb4 (link may not be stable)
[16/17] doc/barebox-tlv: Update documentation regarding TLV-Signature
        https://git.pengutronix.de/cgit/barebox/commit/?id=39a6cb84f837 (link may not be stable)
[17/17] Documentation: migration-2025.12.0: List changes to CONFIG_CRYPTO_PUBLIC_KEYS
        https://git.pengutronix.de/cgit/barebox/commit/?id=e48163fc4647 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



