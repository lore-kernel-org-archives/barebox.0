Delivery-date: Fri, 10 Jan 2025 09:24:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWAJi-000ITc-2p
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 09:24:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWAJj-0001cN-3l
	for lore@pengutronix.de; Fri, 10 Jan 2025 09:24:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ujQO4mdHhMYhI7+2W+L9JfU4LE+Jb5J9ibEmzPQCerM=; b=fozf6ofRu5EwuEm+T80savjjHy
	or92iBzTy3j51QTtgHvfO6IvvqZyIjAOhlljelrNPOR23IPKCGTPQpX0q7zf7P+MZYs0BJIUxSiOS
	KQtFAtTIRUkXvkoucT0sRchPJggXzwYv2N+xwO1CIIRwUD/cMVDPQxGJ87I/AnEdYcowuB3/Kr3AS
	IDn/mh6iBNky7EVof82W3T37gQ6XY6/1Wh3JyXpNczmyCVZvFsVx6BgmF55xdeSIFrnPkqCYkYmGh
	wjv7onmXJ39rzsHsR6/9Jnd2XJSX5abhN3Nf4oVBu2IzQ9dygGfGSPDcgaNT2XzYDqyEGK63/j9SN
	8q+XmBJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWAJF-0000000EVOR-3Sky;
	Fri, 10 Jan 2025 08:24:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWAJD-0000000EVMl-0Lvm
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 08:24:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWAJA-0001TP-GB; Fri, 10 Jan 2025 09:23:56 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWAJA-0007vH-0x;
	Fri, 10 Jan 2025 09:23:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWAJA-001R2a-0k;
	Fri, 10 Jan 2025 09:23:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250109074433.3242953-1-s.hauer@pengutronix.de>
References: <20250109074433.3242953-1-s.hauer@pengutronix.de>
Message-Id: <173649743622.342227.6061666988665884669.b4-ty@pengutronix.de>
Date: Fri, 10 Jan 2025 09:23:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_002359_128625_AE9ED631 
X-CRM114-Status: UNSURE (   6.80  )
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
Subject: Re: [PATCH] commands: add config option for dfu command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 09 Jan 2025 08:44:33 +0100, Sascha Hauer wrote:
> Add an extra config option for the dfu command to avoid building it in
> non interactive builds which leads to linker errors.
> 
> 

Applied, thanks!

[1/1] commands: add config option for dfu command
      https://git.pengutronix.de/cgit/barebox/commit/?id=c23c6b20899c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



