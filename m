Delivery-date: Tue, 09 Sep 2025 18:42:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw1Qb-0018c8-0W
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 18:42:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw1Qa-0007cb-J6
	for lore@pengutronix.de; Tue, 09 Sep 2025 18:42:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jtLZnL2ee6SjyEXQ68aia7+t0YvU9EsKxIbmcRLO/c8=; b=dl36mP0SHGhlwFVnkqyDnkNegi
	Gleldii7hH/r9nEEwLBXE9SeyaLFVT/wrQvqjtJ14Gn4H+C5wRvflkeZDtkAJMehwGfuJLP6yd9oV
	6KqxT2zlJRSD/HYUPxMI4HhVBHgNF5nkIUvG6abzSvG9FQPVcs/OHVhfBYLmSed1h4bvCs4ECPTWZ
	lZkgASsBPtvSYHQHgJopI5iSC463MAbAsR7D5T9Su5z3p6dH0yi6kyk4xxccGoOiY9ZtwTG9xqbAn
	1KDkWcUGNwrxlFwGADyQCDq+WSgVYrtew7rJieuEztnG8uYLeYTOnwFhMD9ZdS72y7DBGVNphINUi
	2n1PYA9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw1Q5-00000008aak-2y9P;
	Tue, 09 Sep 2025 16:42:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvupE-000000062sI-37Q4
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 09:39:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvupD-0004I9-E7; Tue, 09 Sep 2025 11:39:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvupD-000Ojx-0m;
	Tue, 09 Sep 2025 11:39:43 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvupD-00000003vE0-0lJR;
	Tue, 09 Sep 2025 11:39:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250904081459.91984-1-a.fatoum@pengutronix.de>
References: <20250904081459.91984-1-a.fatoum@pengutronix.de>
Message-Id: <175741078317.934915.664881372293886891.b4-ty@pengutronix.de>
Date: Tue, 09 Sep 2025 11:39:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_023944_824853_4209400C 
X-CRM114-Status: UNSURE (   8.38  )
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
Subject: Re: [PATCH master] kbuild: do not descend into images/ twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 04 Sep 2025 10:14:58 +0200, Ahmad Fatoum wrote:
> By having a dependency on images/barebox-dt-2nd.img for the symlink we
> may hit a race where the rule for barebox-dt-2nd.img inside in
> images/Makefile is executed twice leading to build breakage.
> 
> Fix this by changing the dependency in the top-level Makefile to be on
> images/, so make doesn't attempt descending twice into images/Makefile
> in parallel.
> 
> [...]

Applied, thanks!

[1/1] kbuild: do not descend into images/ twice
      https://git.pengutronix.de/cgit/barebox/commit/?id=7f6310bf533c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



