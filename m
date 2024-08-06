Delivery-date: Tue, 06 Aug 2024 08:04:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbDJ4-006jYg-1E
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 08:04:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbDJ3-0005Lt-ND
	for lore@pengutronix.de; Tue, 06 Aug 2024 08:04:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qkzzmqhmIMaoh1Gi2nUGAQ+gUJu2yGDB+C+r1RRQ/zQ=; b=TETaZHZvrVLr0Pjsh2KpcmHREc
	mDoPS07sfYD9iAt3msraEOUQ5z2oAsOocuVMthC+4zrcFV5NQkO1oRnSyR+djye90ZP4FcS6ebmFz
	ghzAAVTHgZUkInvRelgNBiXLEwGx0UyOjnwpfohmxGxH/su9d9VYHk7Sa0yOX+X5E3aLoBZwtsvaI
	LtrLWyCovEXgzjKTDnJwrNnzSCTikWBPu2WsrNlVkUchNC/HHYKpTST/TZlHhLHccCm5doqdN1zsP
	WDjECaFWXVxE+JxxqnIPUW80V2gOIWTnsOvcFXs3HpCdffgY3WSjC0cIv7+rhopU+gF9KagWQtAA0
	/fB3ND1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbDIe-00000000d7i-32xd;
	Tue, 06 Aug 2024 06:04:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbDIb-00000000d6u-318b
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 06:03:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDIS-0005GF-JG; Tue, 06 Aug 2024 08:03:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDIS-004seB-6R; Tue, 06 Aug 2024 08:03:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDIS-002khv-0Q;
	Tue, 06 Aug 2024 08:03:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240801055737.3190132-1-s.hauer@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
Message-Id: <172292422813.656150.12310395347700725147.b4-ty@pengutronix.de>
Date: Tue, 06 Aug 2024 08:03:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_230357_794403_33F86A7C 
X-CRM114-Status: GOOD (  12.78  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/19] Add ECDSA support for FIT image verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 01 Aug 2024 07:57:18 +0200, Sascha Hauer wrote:
> This series implements ECDSA signature verification for FIT images.
> The ECDSA code itself is taken from the Kernel. Currently only supported
> way to specify a ECDSA key is to compile it into the binary using
> CONFIG_CRYPTO_ECDSA_KEY, taking it from a device tree is not ye
> supported.
> 
> Changes since v1:
> - better split up rsatoc patches
> - keep engine support around in rsatoc as it is still needed in many
>   cases
> - Add more cleanup to rsatoc
> 
> [...]

Applied, thanks!

[01/19] errno: include string for EOPNOTSUPP
        https://git.pengutronix.de/cgit/barebox/commit/?id=1ad1a884407f (link may not be stable)
[02/19] rsatoc: disable deprecated function warnings
        https://git.pengutronix.de/cgit/barebox/commit/?id=d64d733d2451 (link may not be stable)
[03/19] rsatoc: remove unnecessary function call
        https://git.pengutronix.de/cgit/barebox/commit/?id=42731deb592f (link may not be stable)
[04/19] rsatoc: pass EVP_PKEY around
        https://git.pengutronix.de/cgit/barebox/commit/?id=b1fef1396772 (link may not be stable)
[05/19] rsatoc: rename rsa_err() to openssl_error()
        https://git.pengutronix.de/cgit/barebox/commit/?id=5206d3b61418 (link may not be stable)
[06/19] rsatoc: move engine initialization to engine_get_pub_key()
        https://git.pengutronix.de/cgit/barebox/commit/?id=89d32ef83ecd (link may not be stable)
[07/19] rsatoc: cleanup error handling
        https://git.pengutronix.de/cgit/barebox/commit/?id=c99779284ce5 (link may not be stable)
[08/19] rsatoc: remove unnecessary error check
        https://git.pengutronix.de/cgit/barebox/commit/?id=2ec045398f6d (link may not be stable)
[09/19] rsatoc: use non deprecated openssl functions to retrieve RSA params
        https://git.pengutronix.de/cgit/barebox/commit/?id=cc0b8a2e7606 (link may not be stable)
[10/19] rsatoc: check error value of gen_key()
        https://git.pengutronix.de/cgit/barebox/commit/?id=6df30149362d (link may not be stable)
[11/19] rsatoc: rename to keytoc
        https://git.pengutronix.de/cgit/barebox/commit/?id=7b51f76a4534 (link may not be stable)
[12/19] keytoc: add ecdsa support
        https://git.pengutronix.de/cgit/barebox/commit/?id=994f3df141f5 (link may not be stable)
[13/19] keytoc: Let openssl_error() take a format string
        https://git.pengutronix.de/cgit/barebox/commit/?id=73a0f34fddc7 (link may not be stable)
[14/19] keytoc: clarify error messages
        https://git.pengutronix.de/cgit/barebox/commit/?id=cfd2a8f1fc19 (link may not be stable)
[15/19] malloc: implement free_sensitive()
        (no commit info)
[16/19] Add elliptic curve cryptography (ECC) helper functions
        (no commit info)
[17/19] crypto: add ECDSA support
        (no commit info)
[18/19] crypto: make RSA a visible option
        (no commit info)
[19/19] fit: Add ecdsa support
        (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



