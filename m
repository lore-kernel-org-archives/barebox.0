Delivery-date: Mon, 24 Mar 2025 09:36:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdIF-003W2I-1Y
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 09:36:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdIE-0006Dm-BG
	for lore@pengutronix.de; Mon, 24 Mar 2025 09:36:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3iwlN13zGU3iRa4wKe2seMAH8PjZLRYjy4MA96tDS58=; b=pvXjn7aScN5QeAocujZ6nZBJO6
	1Tmt3uY89oynL0snT5WbjawsTok83t8oxu6xWrnSKsmXj89TiQYf4O6iuZ978RR1DgYWKGVEcJ13M
	w679NYt+4DG5kZ1N7GI2A8hCQR+poZzGrYfa8l/ZZo5gT54m3grldROUGjtN0uqthDGIikx4UZR3f
	AL9Xd82TGZ7q5EnIC8cvhW7EsJZ7UC/OTox7PT51AhBZQex53IGWCMXuTKt/wZl0f5t1kvQ8vgo5Q
	yRDn9J8w1IXJ25D33ZwbVgD6TOZF6/bwkJCF7V271nIy74GrXGkXU84uPGozzce0hgy6EgcaqRqz9
	ottowDVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twdHj-00000002bNs-49zb;
	Mon, 24 Mar 2025 08:35:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twdHi-00000002bMn-04bG
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 08:35:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdHg-00063C-OU; Mon, 24 Mar 2025 09:35:48 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdHg-001NbF-0T;
	Mon, 24 Mar 2025 09:35:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdHg-007BAb-1b;
	Mon, 24 Mar 2025 09:35:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
References: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
Message-Id: <174280534849.1711080.15685978528901483022.b4-ty@pengutronix.de>
Date: Mon, 24 Mar 2025 09:35:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_013550_059542_D91DAD43 
X-CRM114-Status: UNSURE (   7.81  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] fs: implement tree and truncate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Mar 2025 06:20:13 +0100, Ahmad Fatoum wrote:
> Turn opendir inside out, so it uses directory fds internally.
> This is an important change, because it means that the inode
> iterate operation will now operate on a real struct file.
> 
> This is a prerequisite for porting 9pfs from Linux as it expects
> directories to be openend before iteration.
> 
> [...]

Applied, thanks!

[1/6] fs: use filename_create/filename_lookup instead of open-coding
      https://git.pengutronix.de/cgit/barebox/commit/?id=83ffe89840e8 (link may not be stable)
[2/6] fs: implement O_DIRECTORY
      https://git.pengutronix.de/cgit/barebox/commit/?id=a1248198fa3a (link may not be stable)
[3/6] fs: implement opendir in terms of fdopendir
      https://git.pengutronix.de/cgit/barebox/commit/?id=a1da0079d162 (link may not be stable)
[4/6] commands: implement tree command
      https://git.pengutronix.de/cgit/barebox/commit/?id=4c8584c4dda5 (link may not be stable)
[5/6] commands: add new truncate command
      https://git.pengutronix.de/cgit/barebox/commit/?id=f59a9574c22c (link may not be stable)
[6/6] Documentation: devel: add short section on file systems
      https://git.pengutronix.de/cgit/barebox/commit/?id=eeb78d24f1b1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



