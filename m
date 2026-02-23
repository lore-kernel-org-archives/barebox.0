Delivery-date: Mon, 23 Feb 2026 11:51:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTXg-004nnO-2f
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 11:51:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTXh-0002fX-6R
	for lore@pengutronix.de; Mon, 23 Feb 2026 11:51:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zU8wO7XlcdZoDqQorY9o+obV6v1REhedvZscSSfj4tw=; b=sD+PRPBph6W8TMeYx8OR/TuXUA
	qllyl00pDHinWxyIxHck9hApaqsiED2LlAnJmdP0jHvuqzqn6deLlvszDbDRpNO/RArn2ZMiPY6pI
	g9I35YpqpLQ1xuSmx35+156HLns/5djknajTuAc+YGFD21K4ImtG79w5nNMF11QOnAL1cA5IygL9j
	lNwAjr8yyVijmkBxzOGpEDJVAs6Y6XhajhmL5tdj+c6p05QvuDeTBAg/rRLFhqGWOU44/Rl300eyv
	l6anIlVM/2XtHJJ2is7RokbMJQrdKRWesPhP6Tch/hsvtOPipyFHL+aYREP0HVLoUbq7DkEonqQkD
	LjlXYN3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTXK-000000005jk-41Zl;
	Mon, 23 Feb 2026 10:51:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTXI-000000005jR-15xp
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 10:51:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTXG-0002bj-Ki; Mon, 23 Feb 2026 11:51:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTXF-002DM3-0I;
	Mon, 23 Feb 2026 11:51:30 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTXG-00000000tYY-1beQ;
	Mon, 23 Feb 2026 11:51:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260213103626.2807840-1-a.fatoum@pengutronix.de>
References: <20260213103626.2807840-1-a.fatoum@pengutronix.de>
Message-Id: <177184389038.213539.14534374187141444507.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 11:51:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_025132_490228_C9EF42A3 
X-CRM114-Status: UNSURE (   8.35  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] test: test boot with Debian netinstaller CDROM
 image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 13 Feb 2026 11:35:55 +0100, Ahmad Fatoum wrote:
> The nocloud image takes quite long to boot and now includes
> systemd-firstboot, which doesn't lend itself that well to automated
> testing.
> 
> Switch to the CDROM image instead. That one doesn't autoboot
> unfortunately and opens a screen, so we need a few workarounds for that,
> but the tests work again now.
> 
> [...]

Applied, thanks!

[1/3] test: py: linux: use utilities available in Debian netinstall images
      https://git.pengutronix.de/cgit/barebox/commit/?id=aded6e65e9fe (link may not be stable)
[2/3] test: test boot with Debian netinstaller CDROM image
      https://git.pengutronix.de/cgit/barebox/commit/?id=01de94387165 (link may not be stable)
[3/3] test: py: linux: remove test_ prefix for intermediate functions
      https://git.pengutronix.de/cgit/barebox/commit/?id=6ab1ca86147b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



