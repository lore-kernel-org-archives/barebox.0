Delivery-date: Fri, 14 Mar 2025 12:02:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2oX-00DyMy-12
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 12:02:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2oW-0002PA-2w
	for lore@pengutronix.de; Fri, 14 Mar 2025 12:02:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Unpfe8pIlORI0vbXcHer8iMHx+7VAbmOvhjWtXkjM80=; b=vql5H5ytEi1jsc1iOhvZvtuDk9
	CrfeEQphtPvBIJYRqTp+O9DpaQUDLI4kdIgxbV9KBx+W0eSSlLf+aS8OkStqsPIm7XWNH2MuOXPAb
	JGXDUtsFHl7t6Xv20LudqQk11U+DgUUeHe0ZIhz4/O3EWwWmuQ0e1cYtTn64ZG9uhBq5i8xXnkUo/
	ulLXljMYHtJDIflJ+4vOvxx10AyhDusHhArkMgMNCGAjFhmRPrCRiju9eF/wG5ZVIfQvScFvt+kIu
	ZznZ7z0NKC3DWbjhOc8wEgQUTWrGZCORUuZu+Q2GuXRPwwWrhf/s4WFqongLQSOId5phVVWiCXE27
	y59N02kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2nx-0000000Dvou-3Qcm;
	Fri, 14 Mar 2025 11:02:17 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2TH-0000000DsoR-3W0S
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 10:40:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741948849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Unpfe8pIlORI0vbXcHer8iMHx+7VAbmOvhjWtXkjM80=;
	b=Ya5GnhKmAmBWuVVBWnbz/7ursg/TQRRV/vb93UsKz8qeDD1Bw5MLq/HmjjnG2erlMFkqk1
	qNRyfp6ZczjCpat1uGgSe/3/Cti267iIdW5GEjmM45PZVFYnnt+s4V9MBrsMyjbFbhfKwu
	hjKQISoy4F2RA1kHhlhZoHhJOybVkJztGs2xnsGbbahUQb0sUF0OXExgHl+cBUBFlIazK4
	bB2xRJUd+AOqpt38sx1BXjIwTzP/K9Uc2Oj7+aSaaaIXVdymArwyDK3fQjEiKGMPAu1EtF
	UlLFIaW0Ex1HpJ14PR5deTDLVBL5PflDmikkjZYN0mc8TxsfypcFH2GPt52ILg==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 401eec1d (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 11:40:49 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 11:40:28 +0100
Message-ID: <20250314104034.13637-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_034056_329049_948100EE 
X-CRM114-Status: UNSURE (   6.69  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] compile test fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Small patches series of fixes discovered with a compile test on sandbox (x86_64)
The compile test has been against the next branch but all the patches applies on
commits that are already in the master branch.

Jules Maselbas (6):
  dma-devices: k3-udma: cleanup headers
  dma-devices: k3-udma: use snprintf instead of sprintf
  mfd: tps65219: add missing include
  pmdomain: ti-k3: add missing include
  pmdomain: ti-k3: remove trailing whitespace
  regulator: tps65219: add missing include

 drivers/dma/ti/k3-udma.c               | 5 ++---
 drivers/mfd/tps65219.c                 | 1 +
 drivers/pmdomain/ti/ti-k3.c            | 9 +++++----
 drivers/regulator/tps65219-regulator.c | 1 +
 4 files changed, 9 insertions(+), 7 deletions(-)

-- 
2.48.1



