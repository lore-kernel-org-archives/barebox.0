Delivery-date: Thu, 27 Nov 2025 12:54:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaZu-005PsA-1g
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 12:54:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaZt-0004O2-Vz
	for lore@pengutronix.de; Thu, 27 Nov 2025 12:54:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=33WH6vimzpGVC5BwFPY1RjLNo7goh2sY8ss1ELPNY0s=; b=DovUXG8ewwY6W9VBLpvi+CAYiJ
	2VF9kEMxAbAJEKW4Bs/7yVjz5RO9bK26eOibjCwCjzXgs2wHtfIGvDg++GredHjiGsPduxBF70H2u
	E+vIuXC959KKEdlLFq1V7Km0IZaTorQL1bR/oZxTlFfxh0LVMMkHBFdEdM2VrUQ+30fh8mkRv3QbF
	P9y+K7FB896dXBiGTb7SJpWi4gCpjraOkEKV+tAMQKUaGYBhWJk3YRaT3Ov7MFSa05EnsNZRSQeDX
	RLMJc14MEjL13v/geoBT65EjDsKrlYxgYb+mdhpdsSQ74TjJued1ut1ElskM4lt7OFxODIBwtFVky
	QOR2npzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaZX-0000000GVKl-1rst;
	Thu, 27 Nov 2025 11:54:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaZU-0000000GVJW-1ew0
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 11:54:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaZT-0004Ed-0l; Thu, 27 Nov 2025 12:53:59 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaZS-002mWz-2h;
	Thu, 27 Nov 2025 12:53:58 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaZT-0000000BVm6-0vdl;
	Thu, 27 Nov 2025 12:53:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20251127034024.3381739-1-chalianis1@gmail.com>
References: <20251127034024.3381739-1-chalianis1@gmail.com>
Message-Id: <176424443877.2743741.4527407161461457506.b4-ty@pengutronix.de>
Date: Thu, 27 Nov 2025 12:53:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_035400_438379_9B4C37E9 
X-CRM114-Status: UNSURE (   5.88  )
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
Subject: Re: [PATCH] pci: pci-tegra: fix null pointer assignation.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 26 Nov 2025 22:40:24 -0500, chalianis1@gmail.com wrote:
> the dev might be null, to be sure we move the dev assignation before
> the pci parent assignation.
> 
> 

Applied, thanks!

[1/1] pci: pci-tegra: fix null pointer assignation.
      https://git.pengutronix.de/cgit/barebox/commit/?id=7d544d38174d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



