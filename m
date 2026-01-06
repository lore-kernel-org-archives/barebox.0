Delivery-date: Tue, 06 Jan 2026 14:18:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6xf-001uBz-1r
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:18:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6xf-0006hW-1z
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:18:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nj5xas7R4I6o0/VnK5iJOklO90KhjPXwgYQNgTRRoYE=; b=pJjFuOIPotkic+qM9AxHENDsty
	azAonMbWIR95EFIr5fTFwSxEFNuuXZhX3e7YduudIeGxHwtyDn/9TGfrcpS9+nzO+0vCOFREkOO0X
	HrEkQpkksYq1BrOB07P/TO2KbJtJwN/X2yBdJWOptNFzXziHETaGi3YEYSpwZTXnuQHqCwjL59w/M
	LCYzavGoeGpFDGhSm3otGuiAEUjJq+4kEjByW9cRlr2xy/KpipvKxABEbycUnR5iTgjLxjQnUmGbx
	K1qQSu3gSpYfowEla5buZ1ACdeCzq8kfABY0et0R1V429GTeiqUqfVofdpeIZ77icgTTVCUNhjx1J
	hbPvVA6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6xF-0000000D4zD-0Ka4;
	Tue, 06 Jan 2026 13:18:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6x9-0000000D4wl-2KkV
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:18:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6x7-0006XF-UC; Tue, 06 Jan 2026 14:18:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6x7-009LwP-2N;
	Tue, 06 Jan 2026 14:18:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6x7-00000009nt9-2qhT;
	Tue, 06 Jan 2026 14:18:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260106081659.3491945-1-a.fatoum@barebox.org>
References: <20260106081659.3491945-1-a.fatoum@barebox.org>
Message-Id: <176770550567.2336688.17520537419832301141.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 14:18:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_051827_600933_F9258959 
X-CRM114-Status: UNSURE (   7.07  )
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
Subject: Re: [PATCH 1/2] ARM: cpu: common: skip R_ARM_NONE relocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 Jan 2026 09:16:56 +0100, Ahmad Fatoum wrote:
> Relocations may be turned into no-op in place by strip running on an
> executable by having their type set to 0 (R_ARM_NONE).
> 
> This can happen with the incoming ELF loading in PBL support, so teach
> relocate_to_current_adr() to skip these no-op relocation entries.
> 
> 
> [...]

Applied, thanks!

[1/2] ARM: cpu: common: skip R_ARM_NONE relocations
      https://git.pengutronix.de/cgit/barebox/commit/?id=9ef816e176d9 (link may not be stable)
[2/2] ARM: cpu: common: define generic relocate_image
      https://git.pengutronix.de/cgit/barebox/commit/?id=d7ee5518c5cc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



