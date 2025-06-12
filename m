Delivery-date: Thu, 12 Jun 2025 12:29:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPfC1-006TsF-0p
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 12:29:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPfC0-0000Oq-O3
	for lore@pengutronix.de; Thu, 12 Jun 2025 12:29:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tCj4duIqGLixpxSuuisan+tAsqJB20Xs/OHMoV7TaJI=; b=MSN6tQUNHdVJrA5FUwo4NvAwZN
	29KEew6Jpl24WBtxsNsxvE2+mN2t4+X/ye/aw0ibu9O14MUbGb86DeHL6eYOOzkwjftXHSE4QV6gx
	2lfqBOEnbJK4R82gCAO2voID0dNLPnB5ckj9FRD55XUuyz7BfObutvkxK4FjLYiB6zrUoGd6zFgXq
	y3zgYsRaK3OoZhHZbvZsg1wSp+lHeiPdFVIxTVMWbKUTDoPBVJ9nA7BWKFbBfw59mvmiBlQ+LNDqP
	wRpkwTq5xffyd30VgcQcQax4etgLdZ7hf7M1hxD2QsZvaHgC4aHAPBnhqY9KU2PW7k0wiGAFAJpdx
	HVGal9gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPfBZ-0000000Cz2Z-3kVi;
	Thu, 12 Jun 2025 10:29:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPe0T-0000000Cmsr-37iO
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 09:13:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPe0S-0000p0-60; Thu, 12 Jun 2025 11:13:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPe0R-00365h-3D;
	Thu, 12 Jun 2025 11:13:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPe0R-007sJ2-2y;
	Thu, 12 Jun 2025 11:13:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250612081809.4170727-1-a.fatoum@barebox.org>
References: <20250612081809.4170727-1-a.fatoum@barebox.org>
Message-Id: <174971963591.1876863.11285848978662307957.b4-ty@pengutronix.de>
Date: Thu, 12 Jun 2025 11:13:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_021357_782479_744AA71B 
X-CRM114-Status: UNSURE (   6.28  )
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
Subject: Re: [PATCH] fixup! bootm: booti: make device tree optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Jun 2025 10:18:09 +0200, Ahmad Fatoum wrote:
> bootm_get_devicetree returns the fixed up device tree, so it must be
> called after bootm_load_initrd, so the properties indicating the initrd
> location are included in the fixed DT.
> 
> 

Applied, thanks!

[1/1] fixup! bootm: booti: make device tree optional
      https://git.pengutronix.de/cgit/barebox/commit/?id=0461c2c248a5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



