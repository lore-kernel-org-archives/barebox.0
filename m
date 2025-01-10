Delivery-date: Fri, 10 Jan 2025 10:35:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWBQ1-000JfT-17
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 10:35:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWBQ1-0002Ed-IH
	for lore@pengutronix.de; Fri, 10 Jan 2025 10:35:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3QVmWS9e2XqXFxDw0gDc/pWNCDWqgWDLI3dSguftJRs=; b=VabGAMBwXEa7Xu4KDSnX3zQt7K
	9b834vurL1NqpEM9FkRPA9uWHkKoUZVFeAQlvELwswWX9W1FiwVdp42HS9Ojb1Pg3vF3yXEcyVyaz
	2ebuHBNdzTPDifA8klk2Ca4nT3TqyZsiEnLThU2xoX2etklE6hSIax9Sy6K3o+ZiAMcxjUlh8toVe
	LSl0GSpbP50NZxtau2LHFnqphinVgODLlZgUbuAh3reBj2s21p8xMTizFDgJ32bho1C4F6p5O24nx
	9pCLXxbGtiLpy/wfaJ1asDXMid77ZPV+iS4IWDTwV5+v4E86TlgkD/OLcLFXYWbZKDIw3lzlNuZZN
	KaAmQoAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWBPV-0000000EkNb-2aEu;
	Fri, 10 Jan 2025 09:34:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWBJ7-0000000EiEi-1GZG
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 09:27:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWBJ5-0001Kf-Fe; Fri, 10 Jan 2025 10:27:55 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWBJ5-0008OO-0w;
	Fri, 10 Jan 2025 10:27:55 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWBJ5-001fNn-0j;
	Fri, 10 Jan 2025 10:27:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20250106153633.1470205-1-bst@pengutronix.de>
References: <20250106153633.1470205-1-bst@pengutronix.de>
Message-Id: <173650127522.397346.8006498360578313604.b4-ty@pengutronix.de>
Date: Fri, 10 Jan 2025 10:27:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_012757_349142_87142E8A 
X-CRM114-Status: UNSURE (   7.15  )
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
Subject: Re: [PATCH 1/3] keytoc: move __ENV__ resolving to dedicated
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 06 Jan 2025 16:36:31 +0100, Bastian Krause wrote:
> A future commit will also allow the FIT keyname hint to be passed via
> an environment variable. So move the resolving to a dedicated function
> now and use it for the FIT key name hint in a future commit.
> 
> 

Applied, thanks!

[1/3] keytoc: move __ENV__ resolving to dedicated function
      https://git.pengutronix.de/cgit/barebox/commit/?id=75058434becb (link may not be stable)
[2/3] keytoc: allow __ENV__ lookup for keyname hint
      https://git.pengutronix.de/cgit/barebox/commit/?id=0c80b86393b1 (link may not be stable)
[3/3] crypto: document __ENV__ lookup in CRYPTO_PUBLIC_KEYS
      https://git.pengutronix.de/cgit/barebox/commit/?id=d5be80b5fc52 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



