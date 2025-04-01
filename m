Delivery-date: Tue, 01 Apr 2025 08:07:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzUmd-006sL4-10
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 08:07:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzUmc-00060Z-NW
	for lore@pengutronix.de; Tue, 01 Apr 2025 08:07:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OWneojD0wwpF4JJB2Q5mEi+v0MYtKe34mlJf+oqiWsM=; b=kxJRzHbZS8kH3zFvisF59GVj/j
	NkQ70pN0OE6rWFtwVzEr04jxLHIZtlDv1OtXbDsMUCJ/PClWh/L7Qot+XkzrENs3zGGrqk3MF++Zk
	ORILjof3PXFzQ0ZpuElN0SZ0KdDfRhjpLZczb+aUV7CjViK6zjg6AHUxw8lGyyxPYi5ra7u8sDOi1
	zfNBhF0il2ANANdk0Sw3pp5XIFud0GQ2jRw0WwiSnUqdaTkUET6zIFUZrCjKdHFdZRLjJ5ng0v8Es
	fUOgfZy2DqmceKUXTLlieRcytO4iESw4xh07kDAyzpC8WmKQppC39+cDLecr0aZkcboByow8DmTEk
	IKmn7Gug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzUmB-000000022iY-0YlE;
	Tue, 01 Apr 2025 06:07:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzUle-000000022cb-0YUm
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 06:06:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzUlc-0005sa-Rb; Tue, 01 Apr 2025 08:06:32 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzUlc-002iPF-2A;
	Tue, 01 Apr 2025 08:06:32 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzUlc-00Cz2e-1w;
	Tue, 01 Apr 2025 08:06:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Cc: =?utf-8?q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
In-Reply-To: <20250331124932.901033-1-bst@pengutronix.de>
References: <20250331124932.901033-1-bst@pengutronix.de>
Message-Id: <174348759260.3094509.2737839510608167007.b4-ty@pengutronix.de>
Date: Tue, 01 Apr 2025 08:06:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_230634_241938_EBFC000F 
X-CRM114-Status: UNSURE (   6.65  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/9] doc: bootchooser: drop article before bootchooser
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 31 Mar 2025 14:49:24 +0200, Bastian Krause wrote:
> "bootchooser" is the name of a framework, so drop the "the" before
> bootchooser. This aligns with standard naming conventions for technical
> terms and makes the section consistent with other parts already using
> bootchooser without article.
> 
> 

Applied, thanks!

[1/9] doc: bootchooser: drop article before bootchooser
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea16eddb822a (link may not be stable)
[2/9] doc: bootchooser: drop confusing description for "remaining_attempts"
      https://git.pengutronix.de/cgit/barebox/commit/?id=7948ecca9594 (link may not be stable)
[3/9] doc: bootchooser: clarify marking boot successful from barebox
      https://git.pengutronix.de/cgit/barebox/commit/?id=5d2efb1c316a (link may not be stable)
[4/9] doc: bootchooser: don't recommend NV backend
      https://git.pengutronix.de/cgit/barebox/commit/?id=a274fe119aae (link may not be stable)
[5/9] doc: bootchooser: move global.bootchooser.reset_attempts docs down to other variables
      https://git.pengutronix.de/cgit/barebox/commit/?id=a673a31f34d5 (link may not be stable)
[6/9] doc: bootchooser: rephrase global.bootchooser.reset_priorities description
      https://git.pengutronix.de/cgit/barebox/commit/?id=f20c1c831f46 (link may not be stable)
[7/9] doc: bootchooser: document defaults of global.bootchooser.*
      https://git.pengutronix.de/cgit/barebox/commit/?id=0f28047c9303 (link may not be stable)
[8/9] doc: bootchooser: rephrase scenarios
      https://git.pengutronix.de/cgit/barebox/commit/?id=0ad5295e2048 (link may not be stable)
[9/9] doc: bootchooser: document NV storage backend separately
      https://git.pengutronix.de/cgit/barebox/commit/?id=b4c0c4615ace (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



