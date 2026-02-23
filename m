Delivery-date: Mon, 23 Feb 2026 12:11:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTqf-004oG6-1x
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:11:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTqf-0005lQ-UB
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:11:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PQsq0YAfb4lBdeMB2QpTFxJBTkVDlx0QhCTjKArntxo=; b=YkpPcL0RU6cxyXXlv87bTJ8asV
	f0uVcs+Y7k3eG0q821bhlzNroGc1cuWBL39+uTsTZcvbmNnkToOK2eN4VgT5upLU7ox9LYzHU34th
	qqhyflM7ol3HIYEwGPWcQicLxRy2F2Y7D8P+Fa6GtVFlhUgdCPDgHmCPHT3yDGGwxDaL2YB7AiTwv
	zH3EY5b2aEMcl2ACT8C0RBTxj1BxLob8sN5v54EhcWX/ktpDiNBDomX6Cb52OUaeLUupxbQB3FMM4
	nGupVz7Yk2dBF9RYbjWaeKQTtxTr4skuk3+lYQ9pZoFTDWpemzHBN7reKJeXFOqT1rhK2a4/Bf5iS
	J9Bs8I7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTqI-000000008AV-3rHI;
	Mon, 23 Feb 2026 11:11:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTqF-000000008AA-3TNV
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:11:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTqE-0005hy-3B; Mon, 23 Feb 2026 12:11:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTqC-002DiA-1m;
	Mon, 23 Feb 2026 12:11:05 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTqD-00000000vW5-3WX8;
	Mon, 23 Feb 2026 12:11:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260209090911.3561875-1-a.fatoum@barebox.org>
References: <20260209090911.3561875-1-a.fatoum@barebox.org>
Message-Id: <177184506583.220970.9818438793267958904.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 12:11:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_031107_930270_AB98E675 
X-CRM114-Status: UNSURE (   9.89  )
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
Subject: Re: [PATCH 0/5] blspec: sort entries according to specification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 09 Feb 2026 10:08:50 +0100, Ahmad Fatoum wrote:
> Boot entries generated from bootloader spec are currently sorted by the
> order the files are read from the file system.
> 
> This is inadequate if we have multiple entries with different kernels
> and we want to sort the newer kernels higher.
> 
> The UAPI.1 Boot Loader Specification defines an algorithm[1] to order the
> entries that takes care of this, so implement it into barebox.
> 
> [...]

Applied, thanks!

[1/5] boot: aggregate bootentry provider entries one by one
      https://git.pengutronix.de/cgit/barebox/commit/?id=6f0f9a44ea2b (link may not be stable)
[2/5] blspec: sort entries according to specification
      https://git.pengutronix.de/cgit/barebox/commit/?id=6bf9cd6f5347 (link may not be stable)
[3/5] boot: give struct bootentry a path member
      https://git.pengutronix.de/cgit/barebox/commit/?id=2c4d3f594dc4 (link may not be stable)
[4/5] commands: boot: support file path in boot -M for default entry
      https://git.pengutronix.de/cgit/barebox/commit/?id=c5ce2a86e1ad (link may not be stable)
[5/5] test: self: add bootloader spec files test
      https://git.pengutronix.de/cgit/barebox/commit/?id=989dac4d649e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



