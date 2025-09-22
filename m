Delivery-date: Mon, 22 Sep 2025 08:32:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0a62-005rIK-2W
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 08:32:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0a62-000586-6g
	for lore@pengutronix.de; Mon, 22 Sep 2025 08:32:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZmLCeHDAxg/1PgOEch6pGKu4Q6IXP1W7Shgp7WBbskw=; b=ONZuuEvwnDnPR7kyAdofFUs8vn
	WPDsl6a+NJxjLvzJPqqJZ6KcPl4/bHO14HOX17HWff1noQDp4JSkuGNcEUGFAEVuYoA/M88YQvc2U
	ISDE3NAeYAPlAUEzv4eXZ7+kEWlQzoAmNyEW4pdKhsaR7i5E/kHKukl+lxtPf3wNN42bQizoY+KNf
	ut4CTujDkPhEu4yKpZrtvL/hcSSyPuXFSO+xe0J92gc/O4Z+uRkcsUg7kuWit9imRnXqKep+5Vi7O
	eNRI8QbGbZAOYpgXGlbgaNPvR7T7R6jKmax6ufpm49LKAWNTnUJW2dF0WPmVlJXMOlJfCfh3C1RRs
	mEcolCYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0a5G-00000008yy0-3WTq;
	Mon, 22 Sep 2025 06:31:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0a5E-00000008yvZ-1Hp7
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 06:31:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0a5A-00051X-F5; Mon, 22 Sep 2025 08:31:28 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0a5A-002XuM-0T;
	Mon, 22 Sep 2025 08:31:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0a5A-0000000HTta-0M7r;
	Mon, 22 Sep 2025 08:31:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
Cc: David Jander <david@protonic.nl>
In-Reply-To: <20250918-prt8ml-v1-0-3fd826e0807d@pengutronix.de>
References: <20250918-prt8ml-v1-0-3fd826e0807d@pengutronix.de>
Message-Id: <175852268807.4166485.10503175040306738236.b4-ty@pengutronix.de>
Date: Mon, 22 Sep 2025 08:31:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250921_233132_347637_EA024332 
X-CRM114-Status: UNSURE (   7.97  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] Extend protonic prt8m to support prt8ml
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 18 Sep 2025 17:03:33 +0200, Jonas Rebmann wrote:
> Update prt8m to use deep probe and add support for the prt8ml using the
> mainlining candidate devicetree from
> https://lore.kernel.org/lkml/20250918-imx8mp-prt8ml-v2-0-3d84b4fe53de@pengutronix.de/T
> 
> 

Applied, thanks!

[1/2] ARM: i.MX8M: protonic-imx8m: enable deep probe
      https://git.pengutronix.de/cgit/barebox/commit/?id=7352b1aea82a (link may not be stable)
[2/2] ARM: boards: Add support for PRT8ML
      https://git.pengutronix.de/cgit/barebox/commit/?id=3395c624cb37 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



