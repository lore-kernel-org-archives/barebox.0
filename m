Delivery-date: Mon, 23 Feb 2026 12:01:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTh6-004nvX-2k
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:01:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTh7-0004VZ-5h
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:01:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N+8C7yg5n+1WMGltIsnhV4gzKZXD+o0uM7zIEOzz7XA=; b=pro8S9xglb/dIrm9V5Lau+RPs5
	WWJ3PPL4/cgaROwsbPnbrYh9Em81urqGWqFug2ya21sWXCdy1RirOOwxFCBHqX22t3g6/PeVHXkpj
	7pqttyVuju5ZD/d5QHcD/enhcZEtjeNNMZxnPRLr2zO5oYzdQ4TKdgVnO3HErUnJWq2VHGZeYNiZw
	CwZO2fPiRMJ4UrIhH3xYpFr/AaPJ2ZfjoFs5TDBom8zOK1t1PYRJMt87eL8s1mdLkOk+Bj97rFMrK
	o1ioq9KSdkfOiVfsWVrD0aT6hOvOBXK+JoZR6fBajWqZ5TJSXhaed5U987MTbP3XOT2CoyqJNcrCb
	wCbL/RQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTgc-000000007Oa-1mjS;
	Mon, 23 Feb 2026 11:01:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTga-000000007O9-0Fbn
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:01:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTgY-0004H3-CQ; Mon, 23 Feb 2026 12:01:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTgW-002DPz-2J;
	Mon, 23 Feb 2026 12:01:06 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTgY-00000000uMf-008W;
	Mon, 23 Feb 2026 12:01:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Johannes Schneider <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
References: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
Message-Id: <177184446599.216614.12628232268523631538.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 12:01:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_030108_107162_26AEB3C5 
X-CRM114-Status: UNSURE (   8.21  )
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
Subject: Re: [PATCH v2 0/7] Hexagon Geosystems GS05 Board Support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Feb 2026 23:02:02 +0100, Marco Felsch wrote:
> this series adds the support for the Hexagon Geosystems GS05 product
> [1]. The GS05 is part of a larger product family from SW pov, therefore
> most logic is implemented below 'common/boards/hgs'.
> 
> The board support was added before the new security-profiles made it
> into barebox mainline, therefore security-profiles aren't used yet but
> maybe in the future.
> 
> [...]

Applied, thanks!

[1/7] serdev: add proper error cleanup to serdev_device_open()
      https://git.pengutronix.de/cgit/barebox/commit/?id=8769fa393db6 (link may not be stable)
[2/7] serdev: add serdev_device_close
      https://git.pengutronix.de/cgit/barebox/commit/?id=082f11382801 (link may not be stable)
[3/7] mfd: Add Hexagon EFI driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=5d48981355aa (link may not be stable)
[4/7] watchdog: Add Hexagon EFI watchdog driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=0f0c9a91575f (link may not be stable)
[5/7] commands: make run_command variadic
      https://git.pengutronix.de/cgit/barebox/commit/?id=8cd0b64c742e (link may not be stable)
[6/7] treewide: make use of new run_command variadic
      https://git.pengutronix.de/cgit/barebox/commit/?id=a469e683b90a (link may not be stable)
[7/7] ARM: i.MX8MM: add Hexagon Geosystems GS05
      https://git.pengutronix.de/cgit/barebox/commit/?id=cbea59905fc3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



