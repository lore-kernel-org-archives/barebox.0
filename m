Delivery-date: Tue, 28 Oct 2025 08:31:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDeAk-00Cbqz-1H
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 08:31:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDeAj-0004I8-Qk
	for lore@pengutronix.de; Tue, 28 Oct 2025 08:31:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O/iUdP3Xz04YdOIcOz3bUbTw2OPBvA2MkMNZMzdHwYc=; b=kp3dtLQNXs8ybXMPKG1rL14BLT
	nZ9mFCwndd2JYAg6hEB173L6VvcR3eIpTXge1qCxDb4ncBDAPTPucPQtQJApTuc1a2Vv1GjAFKvJg
	2ulXy/qI6TKJ2mmCa1q5fjF0KMtApBJnFOzumjBc4ANq8/r+5dCrXYjK47ztyYz5/QbuxbqHeVntS
	cblNAwrIhJoToAzzEw4c94nIXJlM8O6Uwwy/wItBym22FpQa/7keXeD74iVBvU+4fBbExxVwtd6BC
	IVnpJMyObjpxHfLKATlaHveJyIvcGduhwWhABMruNBGnJhJA6gM7myAg+3d9VkzMwbej7Spb4oX3Q
	c3gWxufQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDeAL-0000000FPk4-2gmC;
	Tue, 28 Oct 2025 07:30:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDeAI-0000000FPiu-2LOa
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 07:30:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDeAG-0004BO-TY; Tue, 28 Oct 2025 08:30:44 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDeAG-005pxk-2M;
	Tue, 28 Oct 2025 08:30:44 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDeAH-0000000Bfkh-0U16;
	Tue, 28 Oct 2025 08:30:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251027065701.2423010-1-a.fatoum@barebox.org>
References: <20251027065701.2423010-1-a.fatoum@barebox.org>
Message-Id: <176163664466.2781980.8177992435179963993.b4-ty@pengutronix.de>
Date: Tue, 28 Oct 2025 08:30:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_003046_603314_EFF48341 
X-CRM114-Status: UNSURE (   8.45  )
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
Subject: Re: [PATCH] video: panel: add support for Sitronix ST7703 MIPI-DSI
 panel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Oct 2025 07:57:00 +0100, Ahmad Fatoum wrote:
> This panel has been tested with the RK3566 VOP2 MIPI-DSI on the
> Powkiddy RGB30. Support for MIPI-DSI on Rockchip is not upstream yet,
> but the panel can be used with other MIPI-DSI controllers as well.
> 
> 

Applied, thanks!

[1/1] video: panel: add support for Sitronix ST7703 MIPI-DSI panel
      https://git.pengutronix.de/cgit/barebox/commit/?id=bb62dd8586a1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



