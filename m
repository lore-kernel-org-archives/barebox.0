Delivery-date: Mon, 12 Jun 2023 14:33:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gk0-003pFb-O5
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:33:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gjy-0002QI-9H
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:33:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D+5NBk6GEaYQPFlznAvC5WLif/jHtcTk5U1aL9T6Lf4=; b=ZlKJ8pXycoThyMO1DW5Hnufh+a
	W6+QIH8TC9bDxdESvA3Gy9/PfMA2Z45PnomjI+hhxLR/j+TKNHH8xeDucZ9O5bVJbn6Q4DDABHztA
	1rfsX6Mj0C9EPVxcXBY2ShZP4eYDVKUF0biFUT3E1nlofW+ciITg3/OeHtHs1s20+JqDsSEAVmZpV
	TeHxqoltGIVMOMYe3PoS2s/wFR3N2QLq6/+NPK+6fn6msD0OGHAYl6Tl3V+RHvItSfW6KbaNiwGqh
	jI4JWBngxI8JOh0aOiP7Q+OJJ7cGzIPyPjleFm0tjE0k2Vu++4GltYXAZZ+AJooK3Kdyn0iB/hOCk
	Ct7fxtyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8gis-0041de-0g;
	Mon, 12 Jun 2023 12:32:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8gip-0041bj-2N
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:32:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gio-0002BR-EX; Mon, 12 Jun 2023 14:32:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gin-006syG-Mw; Mon, 12 Jun 2023 14:32:33 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gin-00D1Bw-0C; Mon, 12 Jun 2023 14:32:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 12 Jun 2023 14:32:27 +0200
Message-Id: <20230612123232.3071957-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_053235_768947_14B490C4 
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/5] implement dmesg -n
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series implements dmesg -n to specify the console loglevel
via dmesg command as an alternative to setting global.loglevel
directly. While at it allow specifying loglevels as numbers and
not only as strings.

Sascha Hauer (5):
  dmesg: factor out str_to_loglevel()
  dmesg: error out on unknown loglevels
  dmesg: allow loglevels specified as numbers
  dmesg: implement dmesg -n
  dmesg: udpate help

 commands/dmesg.c       | 89 ++++++++++++++++++++++++++++++++----------
 include/linux/printk.h | 10 -----
 2 files changed, 68 insertions(+), 31 deletions(-)

-- 
2.39.2



