Delivery-date: Thu, 30 May 2024 15:26:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCfnd-0004Sa-2N
	for lore@lore.pengutronix.de;
	Thu, 30 May 2024 15:26:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCfnd-0007Re-5R
	for lore@pengutronix.de; Thu, 30 May 2024 15:26:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l9jIeKV6MURTGeiIqA08Qtcp+tlDdJqKFwih7C8NkxY=; b=yej0ctdYD5h3RaRzYzwjwpjQyS
	9ou8AXU1bP9SpraChnndEatA0Bj7i0goZ/3JF6QnQhdVjAaKD+ETgiUIlzFAeZDy3fjv8pK/w2w7F
	fN++62J9lwa7wYAn2iYEqnmJuhVhwtvdyE/cw6VNPLwcT6vnm6gWA91QnuiI+KsAYLNHBX0aF9r1d
	F/n7/F7QUb5NyJQ9Yry21orRbNcEO+/sazwfXRVlL+mq8YT5CjIi80NAk/mJpzQ90mcDomMKkYY/r
	ID0LEGDSnnCYml8rExZMqa5wNcids/XiBBOGmp613rl0uz/WUU3Ny+Yc06RV/eASRTx8HwXWA03R+
	cOMX+HBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCfn7-00000007M5C-3tza;
	Thu, 30 May 2024 13:26:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCfn3-00000007M4N-2r6y
	for barebox@lists.infradead.org;
	Thu, 30 May 2024 13:25:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCfn2-0007Np-5c; Thu, 30 May 2024 15:25:56 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCfn1-003bPG-Or; Thu, 30 May 2024 15:25:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCfn1-008tmk-2I;
	Thu, 30 May 2024 15:25:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20240529094124.513880-1-o.rempel@pengutronix.de>
References: <20240529094124.513880-1-o.rempel@pengutronix.de>
Message-Id: <171707555570.2120785.18298365506014669730.b4-ty@pengutronix.de>
Date: Thu, 30 May 2024 15:25:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_062557_772132_0F866564 
X-CRM114-Status: UNSURE (   8.62  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 1/2] net: sja1105: split adjust_link into reusable
 functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 29 May 2024 11:41:23 +0200, Oleksij Rempel wrote:
> Refactor sja1105_adjust_link by moving RGMII delay and speed settings
> into separate functions: sja1105_set_rgmii_delay() and
> sja1105_set_speed().
> This restructuring makes the code more modular and reusable, preparing
> for the next patch where the CPU port configuration will be handled in
> a separate function.
> 
> [...]

Applied, thanks!

[1/2] net: sja1105: split adjust_link into reusable functions
      https://git.pengutronix.de/cgit/barebox/commit/?id=7eb2939bc051 (link may not be stable)
[2/2] net: sja1105: add function to configure CPU port
      https://git.pengutronix.de/cgit/barebox/commit/?id=9cce2d64ba7d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



