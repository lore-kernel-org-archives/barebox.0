Delivery-date: Tue, 19 Aug 2025 08:06:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoFU5-0028vv-1a
	for lore@lore.pengutronix.de;
	Tue, 19 Aug 2025 08:06:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoFU3-0006KM-Sf
	for lore@pengutronix.de; Tue, 19 Aug 2025 08:06:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pvew9o56p5A5TWowXMljCDyJn26ENObefthFh0mxWC4=; b=qBqhRPLz2FEmLtUqtp2SS2zOfH
	cF0S+tYS7BSf/GH11QeCyFXQ6uKGvc6KTdxUeq6mRjtUAnPrkM6GCWvpKxJnSoz1/enjRqnLKKlgt
	PrJpzVuBrDb9KQ1Bttz1CSbHmfGjpxyEAVmZt3bQtdEAsmV1JIgkX3aJ4HfS/8wtFk3fanQHHhWET
	XpAaTe0TxW2RChF5IXP5IcLDwFnnyEkgdLZyrFIWIz/yKukw4ro9ez04pawmLt5UlY57P44Jh3uJ7
	Vw8MXtha+XPbTU/BBBo5NwPEVIFUpIfvvtuZpNvb8bFjj86qM9o5mOd1T+AodXVeCNMou8FbabFwh
	zT82+8rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoFTf-00000009UId-0Ax7;
	Tue, 19 Aug 2025 06:05:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoFSC-00000009U96-15OP
	for barebox@lists.infradead.org;
	Tue, 19 Aug 2025 06:04:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoFSB-00060F-4Z; Tue, 19 Aug 2025 08:04:15 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoFSA-0011Kq-34;
	Tue, 19 Aug 2025 08:04:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoFSA-00Cy4X-2t;
	Tue, 19 Aug 2025 08:04:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20250818170815.2478554-1-m.felsch@pengutronix.de>
References: <20250818170815.2478554-1-m.felsch@pengutronix.de>
Message-Id: <175558345489.3090840.14851291652205614022.b4-ty@pengutronix.de>
Date: Tue, 19 Aug 2025 08:04:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_230416_302199_7271FEC3 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/3] keytoc: mark keyspec user input as readonly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 18 Aug 2025 19:08:13 +0200, Marco Felsch wrote:
> Don't manipulate the user input and intead allocate the keyname and path
> always to drop the usage of freep. Move the keyspec parsing code into a
> helper to increase the readability further while on it.
> 
> This prepares keytoc handle a keyspec provided by a single environment
> variable.
> 
> [...]

Applied, thanks!

[1/3] keytoc: mark keyspec user input as readonly
      https://git.pengutronix.de/cgit/barebox/commit/?id=ca644bd8867b (link may not be stable)
[2/3] keytoc: add support to handle single env keyspec
      https://git.pengutronix.de/cgit/barebox/commit/?id=230bf888f296 (link may not be stable)
[3/3] crypto: add examples to CRYPTO_PUBLIC_KEYS
      https://git.pengutronix.de/cgit/barebox/commit/?id=cbe0ca3dc123 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



