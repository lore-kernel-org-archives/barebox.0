Delivery-date: Mon, 01 Sep 2025 11:14:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut0cU-006rNA-1o
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 11:14:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut0cT-0000o1-Dy
	for lore@pengutronix.de; Mon, 01 Sep 2025 11:14:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RDpOYu9s5IP2sUjVSZZAN+EiadgqoViSjwyyOs+W5J4=; b=FfrV2bb60su2lo90h/GQoBHr/+
	EZF66sEsUKiYuHwsA8ub9Awux/Ors6OZ6mKEUyNaSImwiYEp9mWekLLyC18rHvsf4O0EhRDiY1u98
	lTsF+i3LSDiZYP2amE6L3jlX4eJ+2pggcvmMihGcCxjAahSCHjOt/TTj5AnwhVpiPtQ/DiQtnLQ3d
	c581Q0j3dn36p+YDOGlhy4AggKukFlkvABrlALWLFFiL/2U/NRF/C3dPbwxhIUoBMCiszE46w/uXi
	FNyAsfaiFi95bxEwEFzAknFgp76IkkigfgdXvSEOuD5cHMbsL9mFDxeeS6eU5qLs4KzI6tV9VZJPc
	7qm1L5Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut0bn-0000000BiEU-15zz;
	Mon, 01 Sep 2025 09:13:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut0It-0000000BeMk-2Nqw
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 08:54:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ut0Is-0001Lg-03; Mon, 01 Sep 2025 10:54:18 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ut0Ir-003Bu2-26;
	Mon, 01 Sep 2025 10:54:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ut0Ir-00000003h1o-2Tlc;
	Mon, 01 Sep 2025 10:54:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20250830182917.1378282-1-chalianis1@gmail.com>
References: <20250830182917.1378282-1-chalianis1@gmail.com>
Message-Id: <175671685758.880301.8721506056318530393.b4-ty@pengutronix.de>
Date: Mon, 01 Sep 2025 10:54:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_015419_611940_30706B6F 
X-CRM114-Status: UNSURE (   5.76  )
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
Subject: Re: [PATCH] clk: clkdev: fix format security.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 30 Aug 2025 14:29:17 -0400, chalianis1@gmail.com wrote:
> not a string literal and no format
> arguments [-Werror=format-security]
> 
> 

Applied, thanks!

[1/1] clk: clkdev: fix format security.
      https://git.pengutronix.de/cgit/barebox/commit/?id=85e8514df331 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



