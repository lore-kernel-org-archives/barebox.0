Delivery-date: Wed, 13 May 2026 20:25:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNEGv-001LhN-1Q
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 20:25:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNEGr-0005FD-Em
	for lore@pengutronix.de; Wed, 13 May 2026 20:25:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zbNucSN4/5WBGb00v+ZtXHI4xNM9aO2MEnz8kwu3Ei8=; b=aH4u2c0iG1fqS1c5mU3ojJyysS
	opEyRfJV2FQcyWjR+RWx1Fy/ECSdW8i3cHZomNrttxc0zf3ZK7dqffFidFFjB7LRK1fIEUZ24JD7m
	/a2tRu28OgYevY6QvNKQUuPVlLyA8vXhxbN7GQ6/ThoOM1FqFOCssShcB3m10d9xIe0VqfPO4nuoG
	jodMSuwVisVR1zqigVwWz0fuMopR2uB4o3oaCZZ2Yt6pWzf46infYowlEPKRw7LBvXjfI1bpGTmFj
	aLuIU+WWkrIb7abXn1GqDwAHnt2ZwKLgXu28u/4kBQv0V0oUkhpvyrUh5YxkEnup7fNnDee/dHZ/m
	41MN3n1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNEFU-00000003SJZ-1ShU;
	Wed, 13 May 2026 18:24:00 +0000
Received: from mailout2.hostsharing.net ([2a01:37:3000::53df:4ee9:0])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNEFO-00000003SDX-1qBg
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 18:23:57 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature ECDSA (secp384r1) server-digest SHA384
	 client-signature ECDSA (secp384r1) client-digest SHA384)
	(Client CN "*.hostsharing.net", Issuer "GlobalSign GCC R6 AlphaSSL CA 2025" (verified OK))
	by mailout2.hostsharing.net (Postfix) with ESMTPS id 4F59210614;
	Wed, 13 May 2026 20:13:49 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
	id 3AA106016B8F; Wed, 13 May 2026 20:13:49 +0200 (CEST)
Date: Wed, 13 May 2026 20:13:49 +0200
From: Lukas Wunner <lukas@wunner.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <agS_XfdyvX_1q9dt@wunner.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-15-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240913075924.1652866-15-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_112354_634679_EB2786A5 
X-CRM114-Status: GOOD (  10.55  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 14/16] Add elliptic curve cryptography (ECC) helper
 functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Sep 13, 2024 at 09:59:22AM +0200, Sascha Hauer wrote:
> +++ b/crypto/ecc.c
[...]
> +		for (i = min; i <= k && i < ndigits; i++) {
> +			uint128_t product;
> +
> +			product = mul_64_64(left[i], right[k - i]);
> +
> +			r01 = add_128_128(r01, product);
> +			r2 += (r01.m_high < product.m_high);
> +		}

Heads-up, this barebox code was copy-pasted from the kernel,
which in turn copy-pasted it from Ken MacKay's micro-ecc
library.  The kernel version has a bug in carry handling
which barebox inherited:

https://lore.kernel.org/r/20260513105741.55534-1-sv3iry@gmail.com/

There might be further bugs that were fixed in the kernel but
not in barebox.

Thanks,

Lukas


