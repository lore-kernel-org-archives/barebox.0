Delivery-date: Tue, 06 Aug 2024 08:04:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbDIz-006jYL-2b
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 08:04:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbDIz-0005LA-52
	for lore@pengutronix.de; Tue, 06 Aug 2024 08:04:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9QI6kYtAhyQEHDuxsw/fqsyV9BW81xwYPPF2HQfX3rs=; b=P7R3hh1rk2KGPADB1AC2qzLhwN
	AGqZAnEvXdMHL9mY1i5MI4q8Kgn91sbpEc2sKRNw5HIzSMi7f1acij3xV2l1X+TeFLjnrp/AVjHsy
	pg6iytPl25V6bCkw+dEIAaQnmiTYcVg9xcXXzy7gMUgb0pxt1YubEsNnkt3dbbW2o7RWJrfugu/XX
	9ng+EIX1cL92CqNxBV4YtYpLcI782zexGUUcZSubKm+xXN6LLSgILUBavQrR2hVfbpC6RAwblLlKS
	US7K6Tl+VPHeOJGDuQ7WsF7hQNS0gRboREqGpLbC6Ft1jrDZkSGnErwbG+RLrctsUyWjO3LYHCL0c
	l1HMx0cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbDIW-00000000d6A-43B8;
	Tue, 06 Aug 2024 06:03:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbDIT-00000000d5Y-3XzS
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 06:03:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDIS-0005GE-JB; Tue, 06 Aug 2024 08:03:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDIS-004seA-5w; Tue, 06 Aug 2024 08:03:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDIS-002khv-0O;
	Tue, 06 Aug 2024 08:03:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240722082405.926111-1-s.hauer@pengutronix.de>
References: <20240722082405.926111-1-s.hauer@pengutronix.de>
Message-Id: <172292422811.656150.8182584317110255868.b4-ty@pengutronix.de>
Date: Tue, 06 Aug 2024 08:03:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_230349_921472_746EF4B7 
X-CRM114-Status: GOOD (  10.64  )
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
Subject: Re: [PATCH 0/9] Add ECDSA support for FIT image verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 22 Jul 2024 10:23:56 +0200, Sascha Hauer wrote:
> This series implements ECDSA signature verification for FIT images.
> The ECDSA code itself is taken from the Kernel. Currently only supported
> way to specify a ECDSA key is to compile it into the binary using
> CONFIG_CRYPTO_ECDSA_KEY, taking it from a device tree is not yet
> supported.
> 
> Sascha Hauer (9):
>   errno: include string for EOPNOTSUPP
>   rsatoc: switch to non deprecated openssl API
>   rsatoc: rename to keytoc
>   keytoc: add ecdsa support
>   malloc: implement free_sensitive()
>   Add elliptic curve cryptography (ECC) helper functions
>   crypro: add ECDSA support
>   crypto: make RSA a visible option
>   fit: Add ecdsa support
> 
> [...]

Applied, thanks!

[1/9] errno: include string for EOPNOTSUPP
      https://git.pengutronix.de/cgit/barebox/commit/?id=1ad1a884407f (link may not be stable)
[2/9] rsatoc: switch to non deprecated openssl API
      (no commit info)
[3/9] rsatoc: rename to keytoc
      https://git.pengutronix.de/cgit/barebox/commit/?id=7b51f76a4534 (link may not be stable)
[4/9] keytoc: add ecdsa support
      https://git.pengutronix.de/cgit/barebox/commit/?id=994f3df141f5 (link may not be stable)
[5/9] malloc: implement free_sensitive()
      (no commit info)
[6/9] Add elliptic curve cryptography (ECC) helper functions
      (no commit info)
[7/9] crypro: add ECDSA support
      (no commit info)
[8/9] crypto: make RSA a visible option
      (no commit info)
[9/9] fit: Add ecdsa support
      (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



