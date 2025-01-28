Delivery-date: Tue, 28 Jan 2025 11:30:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcird-005U24-11
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 11:30:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcird-0004uj-BF
	for lore@pengutronix.de; Tue, 28 Jan 2025 11:30:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EtdSZ4G5W/D2/dPCCOP/rXsfZPArVDMK4ciPfv7nYQQ=; b=j/7Mhm4Q2e+ls5InXbPxN3KKkL
	w0tE62Ucr3UL0PiRtfx2zVwqJQtCt6ikTPUcOsZqyZOELoxFVeOv1q52jY+bCq6Frfb1pTLV3BxoN
	2A0/ZMuZCLGXTHU3E7I+UtgvpUjH5NDjz5DCPVSIbnhOw1oFrJTt008dp42PLNQsaBra+weT9QaOq
	7s0W9nv3FmtKecIe3J5O/FfYJrRPUIVE5moA6/SwJbaQtnPtSXwuaDM/npI7urnaQ6LAQmGb6bHtN
	G6LNEKB9cjHgOVz77Zq5YnhAESeRhfc0sicqQE/4LyrsMiza4E0aZ2xjWP9XQzj6g8SYCnLHf/zfW
	RDm8dXUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcirC-00000004eFi-3nUw;
	Tue, 28 Jan 2025 10:30:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcirA-00000004eFG-220G
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 10:30:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tcir9-0004l8-BW; Tue, 28 Jan 2025 11:30:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tcir9-002HK6-0T;
	Tue, 28 Jan 2025 11:30:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tcir9-0029hj-0F;
	Tue, 28 Jan 2025 11:30:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250123131131.4038998-1-s.hauer@pengutronix.de>
References: <20250123131131.4038998-1-s.hauer@pengutronix.de>
Message-Id: <173806020707.513940.17360930923585457598.b4-ty@pengutronix.de>
Date: Tue, 28 Jan 2025 11:30:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_023008_525061_2576888F 
X-CRM114-Status: UNSURE (   6.57  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] console: print countdown aborted message only once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 23 Jan 2025 14:11:31 +0100, Sascha Hauer wrote:
> console_countdown_abort() can be called multiple times. Print the
> message only the first time it is called.
> 
> 

Applied, thanks!

[1/1] console: print countdown aborted message only once
      https://git.pengutronix.de/cgit/barebox/commit/?id=b2a15c383ddc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



