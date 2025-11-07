Delivery-date: Fri, 07 Nov 2025 15:45:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNi2-00GKRT-19
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 15:45:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNi1-0000kE-RK
	for lore@pengutronix.de; Fri, 07 Nov 2025 15:45:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RY9Zn3xLcUiogoQWXcVHr4YoGx4lp0nlCatsUZId6CQ=; b=zGdCOvymO6Bi0Q+3npwGOKrK21
	F+wH1j078d2Na4pRbdO7dG/QXp+ZT9gvCRG3SJ+4owrJTjVDU2z3DnZCkoTa3bsQSLmJt/q17V9l/
	mumtQ79dRhLOLpjtlf/VLRAu2kqzhi1is4LgB1jio+nC7Fq2kfhEjGxwF2aTB/hXRPMt7k87K+COZ
	z9mKOxYGS5lTDv1t9mO6JlAa9sbFh9tVLGMVXJ63wv8gQOQo/OP4QUcWV7qk2T+Ig2wCFvZ3H7MD6
	J0wKOOlai534r+B/OeErqBgTS+FqhPU3gjQJfCGmhf32tQBHmq210MMLTnX/UMSCoQSpKXzr5CU4X
	IPvGzHSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNhf-0000000HWgv-2pEx;
	Fri, 07 Nov 2025 14:44:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNhd-0000000HWgS-2mOZ
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 14:44:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNhb-0000dK-VN; Fri, 07 Nov 2025 15:44:35 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNhb-007XqP-2X;
	Fri, 07 Nov 2025 15:44:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNhc-0000000BnHp-0icx;
	Fri, 07 Nov 2025 15:44:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251106143640.224768-1-a.fatoum@pengutronix.de>
References: <20251106143640.224768-1-a.fatoum@pengutronix.de>
Message-Id: <176252667572.2811031.1450857948960819468.b4-ty@pengutronix.de>
Date: Fri, 07 Nov 2025 15:44:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_064437_701537_FB3EDF5C 
X-CRM114-Status: UNSURE (   7.47  )
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
Subject: Re: [PATCH] .clangd: remove -enable-trivial-auto-var-init-zero-...
 flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 06 Nov 2025 15:36:39 +0100, Ahmad Fatoum wrote:
> Debian 12 sill had clang-12, where specifying the option:
> -enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang
> was needed to avoid a warning when the build was configured for GCC with
> -ftrivial-auto-var-init=zero.
> 
> Since clang-16, this option has been removed and it now results in a warning
> instead of avoiding one.
> 
> [...]

Applied, thanks!

[1/1] .clangd: remove -enable-trivial-auto-var-init-zero-... flag
      https://git.pengutronix.de/cgit/barebox/commit/?id=935dcf64dbc3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



