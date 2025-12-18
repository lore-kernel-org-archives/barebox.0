Delivery-date: Thu, 18 Dec 2025 09:14:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW99P-00ClHm-2m
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 09:14:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW99P-0002uV-Bd
	for lore@pengutronix.de; Thu, 18 Dec 2025 09:14:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AZrWhKEc9pnGdmrjn6F+GX1LYqoJWGXfYP6Fmt4p2qQ=; b=VmlSFZzlVPIV5S/fugsKtcSA6j
	GufiofUWHPaimP64lyV+QnKUwWxcOBJNm7N4n+Qdnu/3H1K2WYnlTN8tRSpIRpeVyoQZ7r3lA5pOD
	xEvPZ6Ky+t87lv2vqhftnwqilpnf68MwmffTk6XEsn+3QwFgTvZSMvN6D/m92zgMFIW+o7tGcZzu6
	7XK3C33C9pktz3Hd2aVuEnwmPKaNAQvMKhZimqUZrpij634wqSWNeTGxUzAISkZyeaayEL6ym2do+
	Cr3kLxnL/Dna7QIDkinXEjaGbCp9Wy6J8TEpXYezxec4lzQUwotFeQskiKSyoEBd8sxnvWH4dqb9O
	x6EFPwfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW993-000000082EO-0tbb;
	Thu, 18 Dec 2025 08:13:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW990-000000082Da-1wbR
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 08:13:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW98y-0002p1-TK; Thu, 18 Dec 2025 09:13:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW98y-006FLy-2M;
	Thu, 18 Dec 2025 09:13:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW98y-00000007JP5-2okD;
	Thu, 18 Dec 2025 09:13:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251216105242.2722918-1-a.fatoum@pengutronix.de>
References: <20251216105242.2722918-1-a.fatoum@pengutronix.de>
Message-Id: <176604563266.1742864.13948804781110791760.b4-ty@pengutronix.de>
Date: Thu, 18 Dec 2025 09:13:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_001354_516050_7A7A77E6 
X-CRM114-Status: UNSURE (   7.33  )
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
Subject: Re: [PATCH v3] ARM64: mmu: implement mmu_disable completely in
 assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Dec 2025 11:52:40 +0100, Ahmad Fatoum wrote:
> Splitting mmu_disable into two noinline function on a RK3568 leads to a
> barebox crash, because the code has the implicit assumption that the
> compiler won't generate memory accesses including spilling to stack.
> 
> We can't guarantee this in C code, so implement the procedure in
> assembly.
> 
> [...]

Applied, thanks!

[1/1] ARM64: mmu: implement mmu_disable completely in assembly
      https://git.pengutronix.de/cgit/barebox/commit/?id=3d5c7a8e4afb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



