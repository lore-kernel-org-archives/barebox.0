Delivery-date: Fri, 20 Dec 2024 09:54:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYm8-00ANra-0M
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 09:54:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYm8-0006NJ-2z
	for lore@pengutronix.de; Fri, 20 Dec 2024 09:54:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YU+AxrdUfvnimRSPV+21X7vHkkxLgvSz04UtAqqP71Q=; b=4E1Yi8M9GF1sqqXPU5moanOyLr
	GmH0XjmVvPIPY+FoUsnXBUz/VB/7HvOCVtvj83O2SB9Gdo55I4LpOBH8bYAIwdoNvJNeG5dsQELOi
	v6WcRwkfauNKFNBLxfN7bs6a22RmIsJ6k3qLsQMFktAAuelbp2TFSJxj2yzYHt+Rzi8yL3MTxy8bI
	e/n6VrC0KPVXotqAt1rTSc0pcIvKpn3uGLgWa58Uj9ecGxTpDY4cizCKnLM8XaHNizpUL0L+ZTemM
	1WFzmXSztG6bz8gm7yLfWUMzE3pxJH/Dno7Y3LVZrqtA11Wl+BXAJo/BFtAuKZZ1+6bb5w+aelze3
	F+2s9dVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYlk-00000004L8D-1jRe;
	Fri, 20 Dec 2024 08:54:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYlh-00000004L7G-0xJQ
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 08:53:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYlf-0006Gd-Ro; Fri, 20 Dec 2024 09:53:55 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYle-004LXV-2v;
	Fri, 20 Dec 2024 09:53:55 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYlf-00DE8O-1y;
	Fri, 20 Dec 2024 09:53:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241216113344.403540-1-a.fatoum@pengutronix.de>
References: <20241216113344.403540-1-a.fatoum@pengutronix.de>
Message-Id: <173468483560.3152575.4993867485609420106.b4-ty@pengutronix.de>
Date: Fri, 20 Dec 2024 09:53:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_005357_269938_91C9E5D8 
X-CRM114-Status: UNSURE (   6.98  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: devel: project-ideas: add SDL input
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Dec 2024 12:33:44 +0100, Ahmad Fatoum wrote:
> For developing barebox, it's often useful to run barebox directly as
> userspace program by compiling it for the sandbox architecture, but
> there is no input driver for sandbox yet although we have a virtio input
> drive.
> 
> Add SDL input as project idea.
> 
> [...]

Applied, thanks!

[1/1] Documentation: devel: project-ideas: add SDL input support
      https://git.pengutronix.de/cgit/barebox/commit/?id=4134c02f0599 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



