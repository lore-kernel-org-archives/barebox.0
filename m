Delivery-date: Mon, 03 Nov 2025 09:42:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFq8l-00EnIA-2B
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 09:42:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFq8l-0000JO-5F
	for lore@pengutronix.de; Mon, 03 Nov 2025 09:42:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RCPXN6zin0oq9yJMeYLSEETl7MvmfhxLJMO7vQWOKTI=; b=jeJ0Dkev5yvpUw0F4EFshMcwHq
	1+kFfEqwzWJzmTCPPcS61YDb3AjmYw4xnlDM4LWpBgPqbM8LKxiimu/M5lEcQLyAZklWj4z1ofrEG
	Zs5F5TRYYnRdjnjPeSSy7jkuVB9mcTKL9JqllHmrX83P7lc1V8sfwVf4YW2l1EvjNXV9/JgV6O4bz
	AQGY0C2QC0L7yAtEhDv5jWJP9R4JcNpL/tCgiWfZOank3H5IoHnKpIb/90YAIs94Tlkjt3N5/I0/C
	8xIAlM1zMlOZpjH7QBkKIcAckBsrCFI/MvG6X5pMnNC7NKrkY/Ne3BEAau6IXm9hgECxhL8g6SdfQ
	efdT8joA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFq8L-00000009S0H-0Q6u;
	Mon, 03 Nov 2025 08:41:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFq8I-00000009RzT-24Z1
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 08:41:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq8G-0000CQ-VY; Mon, 03 Nov 2025 09:41:44 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq8G-006pT3-2X;
	Mon, 03 Nov 2025 09:41:44 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq8H-0000000HLiD-0hNV;
	Mon, 03 Nov 2025 09:41:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251103074241.299831-1-a.fatoum@barebox.org>
References: <20251103074241.299831-1-a.fatoum@barebox.org>
Message-Id: <176215930471.4134978.914301392576094525.b4-ty@pengutronix.de>
Date: Mon, 03 Nov 2025 09:41:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_004146_535126_E3BFE542 
X-CRM114-Status: UNSURE (   7.76  )
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
Subject: Re: [PATCH] imd: drop .barebox_imd section from arm/riscv non-PBL
 lds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 03 Nov 2025 08:42:40 +0100, Ahmad Fatoum wrote:
> Both ARM and RISC-V are platforms that always have a PBL in front of
> barebox proper.
> 
> As this means any IMD tags in barebox proper would be usually compressed
> and thus not visible to software outside, we can just drop these
> sections from the barebox.lds.S, knowing that pbl.lds.S includes them.
> 
> [...]

Applied, thanks!

[1/1] imd: drop .barebox_imd section from arm/riscv non-PBL lds
      https://git.pengutronix.de/cgit/barebox/commit/?id=84663877b5de (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



