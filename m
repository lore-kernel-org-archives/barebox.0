Delivery-date: Mon, 03 Nov 2025 09:39:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFq6P-00EnFM-1b
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 09:39:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFq6O-0008Fu-VX
	for lore@pengutronix.de; Mon, 03 Nov 2025 09:39:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gseKHocURKl8rPBph7kxK3b12goBGmjKkfcjx6foRzw=; b=QXixRqQTY8zzXsVyR6GZ/c2I8s
	pbmVVMg/Izl+GPFf+sXdd9By4DxFvjAx8VcfAd90uN02c5vv+9aO1T59/4MVrZbGDsgflur0zk7bC
	5CBOvCHt4YCsjDxsweY64kBfp9PpvRQLRFIUDh2sqMkAtlE7Fc1NQeIyrQebW0KcTHL73mP+1c3vH
	v2C9zTeu9HC1RVviv5L3N+45QvbFSnzv6fHm0IQmNV7SHeY3rmxIPTKqUI2JypKHofJqlOZESsJgH
	VOjkxCYKnrvly4fN6KqzvRRxFxb+EyrpgmI2S0HzipydNM70YCJ1EvLgIHD5PGiJQ6PgWOb3kimAu
	YfwzNsVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFq5i-00000009Rk1-34pX;
	Mon, 03 Nov 2025 08:39:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFq5g-00000009RjO-1DQc
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 08:39:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq5d-0008AT-CN; Mon, 03 Nov 2025 09:39:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq5d-006pSX-0c;
	Mon, 03 Nov 2025 09:39:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq5d-0000000HLXo-2Nsr;
	Mon, 03 Nov 2025 09:39:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251028-fixup-ecdsa-v1-1-aca221d4672b@pengutronix.de>
References: <20251028-fixup-ecdsa-v1-1-aca221d4672b@pengutronix.de>
Message-Id: <176215914111.4134341.1180696762592922489.b4-ty@pengutronix.de>
Date: Mon, 03 Nov 2025 09:39:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_003904_330015_D4284334 
X-CRM114-Status: UNSURE (   7.16  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! public-keys: move list out of struct public_key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 28 Oct 2025 16:01:57 +0100, Jonas Rebmann wrote:
> After not invoking ecdsa_key_dup() on keys before first use anymore,
> key->size bits remains uninitialized, breaking ecdsa_verify() and
> thereby ECDSA at large.
> 
>  - Drop the unused ecdsa_key_dup
>  - Drop the uninitialized size_bits field in struct ecdsa_public_key
>  - Invoke ecdsa_key_size() in ecdsa_verify() instead
> 
> [...]

Applied, thanks!

[1/1] fixup! public-keys: move list out of struct public_key
      https://git.pengutronix.de/cgit/barebox/commit/?id=b39e4204f161 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



