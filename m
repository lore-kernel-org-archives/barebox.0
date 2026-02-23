Delivery-date: Mon, 23 Feb 2026 16:32:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuXvV-004sGi-1J
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 16:32:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuXvV-0000Q1-PB
	for lore@pengutronix.de; Mon, 23 Feb 2026 16:32:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aVu5UaB0Xn+8VInCdKsFew3irZmCLlg9j3JFD4WfL70=; b=MW6nJwgfyPaBvtJGBvzaAHkwIx
	VFiTfFVw/4v9q6wAuji15Rfl8SW6IWtc47IS+2i2SR+fCfyW3Sk9nEaDXdb5xsM7wDS6X/2qDjKwx
	6xKVav1M5SK6bOA+kOybatCjraLq+Tl6/xqeZlvHSnNfP8gopnRiFzwdyNjmIj93KQtW6um7/wPPV
	TkI+hmsXrywqbsfk9YWAoGUPM3XzgsdBdZizqBHVFi46dCicrTL6GAPBjZeNchZau5DiqBAKnmEW8
	lJw0vCDoiFmlRxDheUi0pOStC9/GP97MTHYYGYSXNeQzUi4ta1j0RyOycS0UxMvrJzRCY924q5c+z
	uQgIiffw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuXv2-00000000a16-2cbE;
	Mon, 23 Feb 2026 15:32:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuXuz-00000000a01-3nUZ
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 15:32:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuXuy-0000Gi-7T; Mon, 23 Feb 2026 16:32:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuXuw-002Fkn-1h;
	Mon, 23 Feb 2026 16:32:15 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuXux-000000078sR-3Q3y;
	Mon, 23 Feb 2026 16:32:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Sascha Hauer <sascha@saschahauer.de>, 
 "Claude Sonnet 4.5" <noreply@anthropic.com>
In-Reply-To: <20260223-arm-mmu-v1-0-707d45f6f6e1@pengutronix.de>
References: <20260223-arm-mmu-v1-0-707d45f6f6e1@pengutronix.de>
Message-Id: <177186073580.1702270.7544396857018404808.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 16:32:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_073217_951935_BA9A2110 
X-CRM114-Status: UNSURE (   6.94  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 0/4] ARM: MMU: Some cleanup after recent
 changes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 23 Feb 2026 09:34:05 +0100, Sascha Hauer wrote:
> We now setup the MMU for barebox proper in the PBL already. This makes
> some quirks we currently do in the PBL unnecessary. Remove them for
> good. Also, make mmu_early_enable() safe to be called from board code
> if necessary.
> 
> 

Applied, thanks!

[1/4] mmu: add MAP_CACHED_RWX mapping type
      https://git.pengutronix.de/cgit/barebox/commit/?id=06102b02b21a (link may not be stable)
[2/4] ARM: MMU: drop forced pagewise mapping
      https://git.pengutronix.de/cgit/barebox/commit/?id=72348878f2ab (link may not be stable)
[3/4] ARM: pbl: MMU: drop unnecessary barebox mapping
      https://git.pengutronix.de/cgit/barebox/commit/?id=ddb374ff808f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



