Delivery-date: Thu, 19 Mar 2026 07:50:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37Cm-002XSW-0B
	for lore@lore.pengutronix.de;
	Thu, 19 Mar 2026 07:50:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37Cl-0003hS-H3
	for lore@pengutronix.de; Thu, 19 Mar 2026 07:50:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KT+eIyt66A0ggs4eNpyLJEVimXPjCKKEIMpzKKncYvA=; b=eVPFP2QJrljNb4shs3zqLgvflz
	NX1E1jQ/81ethms2ir/msiEozA3JuTV/NvvRzJwm6fJsg3kBBW6ilSPJMdVeVLW1wm1qLtPFmU7RZ
	blFo5LzqiJRRPhh+58PFMByahGD4xgUn8xHf2XuOomlzfljJlwO90qvrgeqTO+JPh2cYxARIAwkR9
	uh4+d9xlOHk2M9KvAA/Ijo2cVD+96+hZU7KFVsUGjiYLvJiPeehWlQwKoKc2VdhH9LA8g24FXuaQA
	CdWry9dU+VwspjaEuYKudvRmVOW8Y/1hvBJmIMSyqZunUobBY26SE3fcwevvVjDFjXx/QEwyxdZPC
	U/FqQ0ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37C6-0000000A4IM-18xW;
	Thu, 19 Mar 2026 06:49:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37C2-0000000A4I3-13Sc
	for barebox@lists.infradead.org;
	Thu, 19 Mar 2026 06:49:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37C0-0003Zx-0r; Thu, 19 Mar 2026 07:49:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37Bz-0011xa-2i;
	Thu, 19 Mar 2026 07:49:15 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37Bz-00000006hRS-3Hlk;
	Thu, 19 Mar 2026 07:49:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260318155341.3384253-1-a.fatoum@pengutronix.de>
References: <20260318155341.3384253-1-a.fatoum@pengutronix.de>
Message-Id: <177390295577.1595461.11949268908781113141.b4-ty@pengutronix.de>
Date: Thu, 19 Mar 2026 07:49:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_234918_996854_1895142C 
X-CRM114-Status: UNSURE (   8.00  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! defaultenv: base: add new devboot script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 18 Mar 2026 16:53:41 +0100, Ahmad Fatoum wrote:
> defaultenv: base: devel: drop incomplete boot target
> 
> If boot.default is set to devel, what's the boot.default the boot
> command uses...?
> 
> This boot target doesn't make sense and the alternative is for users to
> write their own boot script, so drop the target and references to it.
> 
> [...]

Applied, thanks!

[1/1] fixup! defaultenv: base: add new devboot script
      https://git.pengutronix.de/cgit/barebox/commit/?id=f28cc2fbca0c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



