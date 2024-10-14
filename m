Delivery-date: Mon, 14 Oct 2024 14:53:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0KZp-004GAf-1X
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 14:53:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0KZo-0006oA-UH
	for lore@pengutronix.de; Mon, 14 Oct 2024 14:53:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xrE0fRBNcej0ZXhfY7CI3KSmG9GywJdhPwx4etiGIiE=; b=Xa15nwxPIXvF7MXOpPX9wEY8ep
	hkPMC406X/Xd1ZYUoameW1B0mdz1FC2RJTMpnLWV6tE9C6/Tl/vZcssy/5/2HmF4rz9FFo8cxaCvk
	u1m4RI05cpCuFJzFxHhlTw20HBa6NGbJWQEk5bx1Ljam89MJOORbxb5pR3yMJBJcjBcwBeYA4sb/S
	jaGUhWzg//KltN8oHiwZGTHqmxHP5m0a4UxroT6DUyWAoyZgARgqVELGsl0pSkvNQANJTV7xDiRwd
	8Mc6PvHuxQCFcb3HwXspkD2NLqkpErHglPkxFweJjwbNZcm5zvAfvfwfobGFSuckods4MWUQ6qW+b
	m9mmsE8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0KZ9-000000059Mr-0JeU;
	Mon, 14 Oct 2024 12:52:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0J00-00000004rjF-2heS
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:12:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0Izx-0006gN-AB; Mon, 14 Oct 2024 13:12:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0Izw-001mCv-Tm; Mon, 14 Oct 2024 13:12:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0Izw-00FY8U-2i;
	Mon, 14 Oct 2024 13:12:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241014104644.2610132-1-a.fatoum@pengutronix.de>
References: <20241014104644.2610132-1-a.fatoum@pengutronix.de>
Message-Id: <172890434483.3706022.3023016287670954323.b4-ty@pengutronix.de>
Date: Mon, 14 Oct 2024 13:12:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_041228_788419_626FED3B 
X-CRM114-Status: UNSURE (   8.19  )
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
Subject: Re: [PATCH 1/2] fixup! video: add dw-hdmi driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Oct 2024 12:46:43 +0200, Ahmad Fatoum wrote:
> video: dw-hdmi: drop never defined dw_hdmi_remove
> 
> Building without linker garbage collection triggers an error, because
> dw_hdmi_remove is never defined.
> 
> We remove it, but keep dw_hdmi_unbind as a dummy function as it can
> be called by other drivers and then we could make it do something
> useful in future.
> 
> [...]

Applied, thanks!

[1/2] fixup! video: add dw-hdmi driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=3f61bbe2b1f4 (link may not be stable)
[2/2] fixup! video: add dw-hdmi driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=3f61bbe2b1f4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



