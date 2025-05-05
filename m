Delivery-date: Mon, 05 May 2025 08:47:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBpcF-002NUK-24
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 08:47:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBpcF-0000D3-4j
	for lore@pengutronix.de; Mon, 05 May 2025 08:47:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EwPuH3NJ37h55dh+5fNpecNt0M+QYQvCPg5ldI5wGbU=; b=0q8l/GOyzHsjMgMln8kz92IBNd
	g9WOSRiVnyo/ajJqpiLwlhZPeeebFxcnX4n1WOfYBD+im1ZC2KrytUJzLV5hx2HRnaPqjv0EY1lXp
	CwpFQ7N7rv+V4R7ttYXhq9C8n525pDg7GCvxYxJSh2AAxQ4SzJ0anNuWSZzPVDSRsqx8Uk9vLPmh1
	00jq5qd/8Cz4tlVkp9CZpVg8not9pjdFLyMFAFDpUNUMXxubu2ZefIL+K0xKiIxtZ8L0/zzVeSOSK
	Muq32EX60Ii79yqDzhOCcfwK3Hl5QmjttCNfTDf0ss+fVK6h9M4HjGN9YJ0o5PTXh6vGvP39om4Gc
	VNTrUTEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBpbn-00000006YP7-19IT;
	Mon, 05 May 2025 06:47:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBpbk-00000006YOH-25Yd
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 06:47:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uBpbj-0008Ub-AO; Mon, 05 May 2025 08:47:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uBpbj-001BYe-0R;
	Mon, 05 May 2025 08:47:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uBpbj-002SZ5-0D;
	Mon, 05 May 2025 08:47:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20250430121112.2899908-1-m.tretter@pengutronix.de>
References: <20250430121112.2899908-1-m.tretter@pengutronix.de>
Message-Id: <174642763906.586442.1510824704121026574.b4-ty@pengutronix.de>
Date: Mon, 05 May 2025 08:47:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_234720_564652_EC1BF85A 
X-CRM114-Status: UNSURE (   6.00  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: fix NULL pointer dereference
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 30 Apr 2025 14:11:12 +0200, Michael Tretter wrote:
> Calling `devlookup -k` directly on an mmc device instead of an partition
> causes a NULL pointer dereference for cdevm.
> 
> Return a NULL pointer in this case to signal the error.
> 
> 

Applied, thanks!

[1/1] mci: fix NULL pointer dereference
      https://git.pengutronix.de/cgit/barebox/commit/?id=3692a2d4e323 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



