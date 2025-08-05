Delivery-date: Tue, 05 Aug 2025 07:20:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujA66-007BZ4-0L
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 07:20:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujA65-0002OD-FR
	for lore@pengutronix.de; Tue, 05 Aug 2025 07:20:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b0QAWuqY9oL0gPogjWx9vhoS2txB6NU1rHzBnSY6ZUw=; b=mELOlN3fSZ4xDlsl5CXOgYigG+
	JWsv5DsoxzSALYT/8bqGGZ5gE88jKGH3SUPZ09Rq/0eMmZStTpeTBC5YP/Xo0Bow+4IPtEqNKQKgq
	XIm2x/+GGrA7FAI4LWUMe36pzAsM/giVB82s1J/ssP3F6Xva/lE1oizNibZeue+W260aqfzz0Miyf
	LOTjak9n4SBPbCXdKztW52AtvCxemf5l+mP4E+A4j6WNZsCgX2yzrSYI4Outu45v4v0/DX9kOtYFu
	cjiEUgC6FDK5E0dL0AEUAjT6i5zdYZgSRUTvr4kcySBmhf5+aXLIAYNNa4J/04r6zJcizLO37ArVO
	QHEZNsHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujA5f-0000000BoEO-30Sq;
	Tue, 05 Aug 2025 05:19:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujA5c-0000000BoE0-07rQ
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 05:19:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujA5a-0002HX-CG; Tue, 05 Aug 2025 07:19:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujA5a-00BzNq-0O;
	Tue, 05 Aug 2025 07:19:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujA5a-00Doch-0C;
	Tue, 05 Aug 2025 07:19:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20250730123126.1062875-1-a.fatoum@pengutronix.de>
References: <20250730123126.1062875-1-a.fatoum@pengutronix.de>
Message-Id: <175437119405.3292846.3657739817760003248.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 07:19:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_221956_139516_EC619980 
X-CRM114-Status: UNSURE (   8.20  )
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
Subject: Re: [PATCH 1/2] mmu: define MAP_WRITECOMBINE for all architectures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 30 Jul 2025 14:31:25 +0200, Ahmad Fatoum wrote:
> Write Combine (WC) memory is an optimization over uncached memory,
> especially suitable for framebuffers. We allocate WC memory using
> dma_alloc_writecombine(), but it can be useful to remap existing memory
> not allocated within barebox as WC.
> 
> To allow this, let's define MAP_WRITECOMBINE globally with a fallback to
> MAP_UNCACHED if not available.
> 
> [...]

Applied, thanks!

[1/2] mmu: define MAP_WRITECOMBINE for all architectures
      https://git.pengutronix.de/cgit/barebox/commit/?id=b87902baeb53 (link may not be stable)
[2/2] video: remap framebuffer as writecombine if possible
      https://git.pengutronix.de/cgit/barebox/commit/?id=16d0cfa203cb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



