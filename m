Delivery-date: Mon, 14 Oct 2024 14:53:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0KZo-004GAA-02
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 14:53:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0KZn-0006nL-Cu
	for lore@pengutronix.de; Mon, 14 Oct 2024 14:53:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1CVxhDLUB48NSnJv3ivio3aFk8MaaAjDW2Se5uGoSfA=; b=nfekcRHk3L/MjzQ8A/6PueNnck
	uG2tlw1Xj17GK6QP/McfSapTchgRQEyHtOaZ4lHFO+ZYBFLeUPwreBWeoyTjWaLOVZQ355z+DtW0N
	Su6W783+IALOURi6KwoezxzeUfI+8t70EmkECrzJAb9HHfWJCWG2B6oyG/I06PxoJsIt221+rFPZ7
	/gUcpbI0djFvslvQk50WkJeQeWXBGXPJUC7F3t+zPFvjpsCmB59sAZ3DJp3bnRJNP0Am4KcygjNtp
	mrjXTLparoPIvaelH4vcLQLIX0VskcanG/MHasdP2ZMoMliuamLKPdXKKLJJGEuj4pYRryjLDTJNg
	5ArQNq6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0KZA-000000059NK-1JSA;
	Mon, 14 Oct 2024 12:52:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0J0n-00000004rxh-0oMr
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:13:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0J0l-0006ma-Nk; Mon, 14 Oct 2024 13:13:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0J0l-001mD8-Aq; Mon, 14 Oct 2024 13:13:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0J0l-00FetQ-0u;
	Mon, 14 Oct 2024 13:13:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: rcz@pengutronix.de, ske@pengutronix.de
In-Reply-To: <20241014085506.2207866-1-a.fatoum@pengutronix.de>
References: <20241014085506.2207866-1-a.fatoum@pengutronix.de>
Message-Id: <172890439527.3731983.4132757642503377309.b4-ty@pengutronix.de>
Date: Mon, 14 Oct 2024 13:13:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_041317_269562_6FFD5858 
X-CRM114-Status: UNSURE (   7.96  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mdio_bus: add NULL check to mdiobus_read/mdiobus_write
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Oct 2024 10:55:06 +0200, Ahmad Fatoum wrote:
> These functions shouldn't be called with a NULL pointer as argument in
> the first place, but this happened at least twice so far[1][2], because
> drivers weren't tested in fixed-link setups without PHYs.
> 
> To improve user experience, let's return -EIO instead of crashing
> outright. The proper fix is still to adapt these drivers, so they
> do not try to access non-existent PHYs.
> 
> [...]

Applied, thanks!

[1/1] mdio_bus: add NULL check to mdiobus_read/mdiobus_write
      https://git.pengutronix.de/cgit/barebox/commit/?id=36d1dd4afe57 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



