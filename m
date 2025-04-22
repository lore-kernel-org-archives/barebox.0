Delivery-date: Tue, 22 Apr 2025 12:28:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Arn-0040vQ-2q
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 12:28:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Arn-0001xg-B2
	for lore@pengutronix.de; Tue, 22 Apr 2025 12:28:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6+q5gUQr/z98dW6S+ofTcy2PjxCInAo3IW4RpfscTRA=; b=BZVSrtjkRT4cbmrjLDl4BaqY0u
	BhhskyoRfqLLKwB0uGvDRXL6sgm6AW3mVB9UjcGgXZpP2BbvijKUegl0QrVCwJSHkZ3RLiy/iH88l
	tu+3LO+uWkf+piaI7U0gYI6RvEyAXzDnavKviETmF/SgXuxVUi/2M3UU5lHcxHlXVwCNgFOHR78sw
	nVKQzTwSP7SgTNcpFpz8IRllWuXU3cKpMQdIJ7wiTnfoTsbLRwa1wt5jEuUXrSjVN1uyhQFyJVueo
	1cAcbXJabyvZSo2O1Gpli2WDYSLsRd4ojxsw5gqrnbyNWcCFKqBn5KTrNpXYfs80UxQS8L5ts3FyL
	fBjFUmMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ArO-00000006l3K-3nRt;
	Tue, 22 Apr 2025 10:28:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u79qc-00000006Xp5-2d9q
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:23:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79qb-000581-2e; Tue, 22 Apr 2025 11:23:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79qa-001WnM-2s;
	Tue, 22 Apr 2025 11:23:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79qa-00CeI8-2e;
	Tue, 22 Apr 2025 11:23:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250422075531.219284-1-a.fatoum@pengutronix.de>
References: <20250422075531.219284-1-a.fatoum@pengutronix.de>
Message-Id: <174531380082.3014765.13217564421713204415.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 11:23:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_022322_671326_D8E45F77 
X-CRM114-Status: UNSURE (   6.52  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] mfd: syscon: make mfd/syscon.h header
 self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Apr 2025 09:55:30 +0200, Ahmad Fatoum wrote:
> Including the header in new files can currently break the build if
> suitable headers aren't included beforehand.
> 
> Make it self-contained and while at it, switch over to SPDX.
> 
> 

Applied, thanks!

[1/2] mfd: syscon: make mfd/syscon.h header self-contained
      https://git.pengutronix.de/cgit/barebox/commit/?id=abe01ccf7d3d (link may not be stable)
[2/2] dma: make header self-contained
      https://git.pengutronix.de/cgit/barebox/commit/?id=b46c4abccdf6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



