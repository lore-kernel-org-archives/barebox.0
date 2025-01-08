Delivery-date: Wed, 08 Jan 2025 14:51:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWTO-000lDa-0g
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 14:51:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWTO-0007ui-6u
	for lore@pengutronix.de; Wed, 08 Jan 2025 14:51:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aFRR57+U/y9WlMaea2Srqp33n0OifCclX29qHxWCF6s=; b=TFt8yapIK8I04M3VFLqrcdxVWt
	/S0BMkd6RChEsvH64PuDZXAJJPILu/c/Nt2tNmSOseETnzXbKnQgjK5PzYcdIu/EzlbCHq+fOFC1T
	zb3It6qKt49Vyoo6ssCMKK7Whu/M6I83QTuIaFvnPCdxIJHOSLhbv3HEW61JukF7e599QlfxNigwh
	sUbb7aCQRusbNwA3KAoIppr139ne7Mt7pYTeKPq06yCtLQ+LpU+sGWr/BhP89xPswlP4/Xmri1pZo
	WDitBslLq0ae7/XipjeybJeF2wWkE39xM8+X0hn3518RL/ORKqZHqyapimhFHIWriD+ZbG2uLEVmy
	7m8yP0gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWSk-00000008gcT-3ydY;
	Wed, 08 Jan 2025 13:51:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWSg-00000008gZg-2EQr
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 13:51:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWSd-0007hL-UZ; Wed, 08 Jan 2025 14:51:03 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWSc-007X0K-3C;
	Wed, 08 Jan 2025 14:51:03 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWSd-00Fj1i-2D;
	Wed, 08 Jan 2025 14:51:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20250106150959.1459348-1-bst@pengutronix.de>
References: <20250106150959.1459348-1-bst@pengutronix.de>
Message-Id: <173634426367.3747907.7960801082676479481.b4-ty@pengutronix.de>
Date: Wed, 08 Jan 2025 14:51:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_055106_573175_1A02B1B5 
X-CRM114-Status: UNSURE (   5.62  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: reflect rename of CRYPTO_RSA_KEY to
 CRYPTO_PUBLIC_KEYS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 06 Jan 2025 16:09:59 +0100, Bastian Krause wrote:
> The rename happened in
> e1c93ed3bf9 ("crypto: rsa: encapsulate rsa keys in public keys struct").
> 
> 

Applied, thanks!

[1/1] common: reflect rename of CRYPTO_RSA_KEY to CRYPTO_PUBLIC_KEYS
      https://git.pengutronix.de/cgit/barebox/commit/?id=7dc78db6127e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



