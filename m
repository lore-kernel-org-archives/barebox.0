Delivery-date: Tue, 06 Jan 2026 08:47:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1md-001oi4-2n
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:47:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1md-0006Xh-BU
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:47:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PObX/uGq13R5OXqV7oM4tjWS7kFFydXTkz+kZMYnMsw=; b=JpEyeWLKbUY01d7qNt8UpsjEth
	dRNffErRZzl1cCgKNamcLdvBKg+Zpa2hFZurj2smp5kSblO7PvmHFcq1xrV0WgQ3WMySfNEM+FEhR
	9hY0ct7R9dwvKRlLK8s0ZjHAER9qiEkP4GFiACOrgg1Xa7VLmlBzT9BrigltlScVXraY5GkdvVcSv
	syWS+fGP+ziGMazeBjzIB7oiMi5H2rWCH8n5/+K5XU3GtyI7aD9dcoy2KC6fbhVlB9BdfkCg2DhjA
	N5dbCZFBQAMKlRL2PmoJT9Gw5x7TWj4DM/d6gB5VG/8ofu97oLNUFYEyrutH35IgVf8umKedQwbRr
	jRGefRZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1mA-0000000CXqn-39LG;
	Tue, 06 Jan 2026 07:46:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1m5-0000000CXpY-33kx
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:46:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1m4-0006P0-2P; Tue, 06 Jan 2026 08:46:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1m3-009JKX-2q;
	Tue, 06 Jan 2026 08:46:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1m3-0000000890T-3Rtx;
	Tue, 06 Jan 2026 08:46:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260105-riotboard-v1-0-789b844d7e36@pengutronix.de>
References: <20260105-riotboard-v1-0-789b844d7e36@pengutronix.de>
Message-Id: <176768559982.1941232.9999322383300838440.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 08:46:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_234642_208058_0E2B6C66 
X-CRM114-Status: UNSURE (   6.10  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 0/4] i.MX6 Riotboard related patches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 11:44:57 +0100, Sascha Hauer wrote:
> These are patches I came up with while using the i.MX6 Riotboard.
> 
> 

Applied, thanks!

[1/4] ARM: i.MX6: Riotboard: ungate peripheral clocks
      https://git.pengutronix.de/cgit/barebox/commit/?id=945278538eac (link may not be stable)
[2/4] ARM: i.MX6: Riotboard: Add hint how to enable DEBUG_LL
      https://git.pengutronix.de/cgit/barebox/commit/?id=31407a627d9f (link may not be stable)
[4/4] ARM: boards: remove #define DEBUG in board files
      https://git.pengutronix.de/cgit/barebox/commit/?id=32318cb2783e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



