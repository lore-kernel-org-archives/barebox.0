Delivery-date: Fri, 07 Nov 2025 09:59:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHIJt-00GFCR-2j
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 09:59:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHIJt-0007Qa-4n
	for lore@pengutronix.de; Fri, 07 Nov 2025 09:59:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WFk6GIA/7sXxj365Zji36BOQ6t9FAg8rgU4bzrTnpvw=; b=SfR3Rpkr+5BU+EbqM7KmNocYhu
	hJNDNypbQr36+H8qJbqkTcfnWhc8Y8S3rrzOjuXoaiyvEZ/V2ku8ha1kTKXBYTSgzjsnzbdJVXnB+
	g4rdm2yS4EI53MVZLh9wQgUKx6Jwy3BtDgQXv+GrgEZVVrSeTeY680mS2Q8Zfoio+6S3dOfnQHaxn
	IlERaTbsPZkyEhdi0LhqrVpSLDPyPMuPbG0B5ab9MhSlz1SiVftC3Td+RhHCM45YGd06gfUVMjwgh
	4OudxZ5m8KDcG6j4q4uCTECnnh12U2XbC8Q+Vqxquc5A37sUPU26L3PNcVnvMoh4Pr33F1vnsD4fF
	NP7+zR2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHIJI-0000000Gv8v-45LN;
	Fri, 07 Nov 2025 08:59:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHIJF-0000000Gv7o-3bTg
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 08:59:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHIJC-0007BU-HQ; Fri, 07 Nov 2025 09:59:02 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHIJC-007V7L-0y;
	Fri, 07 Nov 2025 09:59:02 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHIJC-00000000Hfb-2o7M;
	Fri, 07 Nov 2025 09:59:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
Message-Id: <176250594221.67872.202815862743419092.b4-ty@pengutronix.de>
Date: Fri, 07 Nov 2025 09:59:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_005905_905013_461085B0 
X-CRM114-Status: GOOD (  11.57  )
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
Subject: Re: [PATCH 00/15] TLV-Signature and keyrings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 14 Oct 2025 13:02:51 +0200, Jonas Rebmann wrote:
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

[01/15] common: clean up TLV code
        https://git.pengutronix.de/cgit/barebox/commit/?id=12fbe2420c57 (link may not be stable)
[02/15] crypto: Add support for keyrings
        https://git.pengutronix.de/cgit/barebox/commit/?id=9b6abf4928dc (link may not be stable)
[03/15] fit: only accept keys from "fit"-keyring
        https://git.pengutronix.de/cgit/barebox/commit/?id=35e1d658501d (link may not be stable)
[04/15] crypto: keytoc: Rename "hint" to "fit-hint" and do not use it in identifiers
        https://git.pengutronix.de/cgit/barebox/commit/?id=631598a78787 (link may not be stable)
[05/15] commands: keys: update output format to include keyring
        https://git.pengutronix.de/cgit/barebox/commit/?id=7a255f1bb20a (link may not be stable)
[06/15] commands: tlv: Error out on invalid TLVs
        https://git.pengutronix.de/cgit/barebox/commit/?id=8fc7e96dce0a (link may not be stable)
[07/15] scripts: bareboxtlv-generator: Implement signature
        https://git.pengutronix.de/cgit/barebox/commit/?id=bdc51ec7b77b (link may not be stable)
[08/15] scripts: bareboxtlv-generator: Increase max_size in example schema
        https://git.pengutronix.de/cgit/barebox/commit/?id=40dccf6965ad (link may not be stable)
[09/15] common: tlv: Add TLV-Signature support
        https://git.pengutronix.de/cgit/barebox/commit/?id=49deb31eb9f4 (link may not be stable)
[10/15] common: tlv: default decoder for signed TLV
        https://git.pengutronix.de/cgit/barebox/commit/?id=92801a8a3b85 (link may not be stable)
[11/15] crypto: Use "development" keys for "fit" and "tlv" keyring
        https://git.pengutronix.de/cgit/barebox/commit/?id=1006b066cf20 (link may not be stable)
[12/15] test: py: add signature to TLV integration tests
        https://git.pengutronix.de/cgit/barebox/commit/?id=50407b127bc1 (link may not be stable)
[13/15] ci: pytest: Add kconfig fragment for TLV signature integration tests
        https://git.pengutronix.de/cgit/barebox/commit/?id=54205e3cfa11 (link may not be stable)
[14/15] doc/barebox-tlv: Update documentation regarding TLV-Signature
        https://git.pengutronix.de/cgit/barebox/commit/?id=39a6cb84f837 (link may not be stable)
[15/15] Documentation: migration-2025.11.0: List changes to CONFIG_CRYPTO_PUBLIC_KEYS
        (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



