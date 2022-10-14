Delivery-date: Fri, 14 Oct 2022 18:37:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNh8-008i8I-0h
	for lore@lore.pengutronix.de; Fri, 14 Oct 2022 18:37:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNh5-0005ZI-Be
	for lore@pengutronix.de; Fri, 14 Oct 2022 18:37:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Fgcu0AgRhFVzfWP+O5lUuzwXLgjZ6SbInkMIacYhFys=; b=vb8tWo4HiZfm68VCJGploTQDK8
	4He7g/dr6y/jLInxGGhEj2k5mWiQNnHCijoJHCHIlEK+klO0XbadqxKAYOPkzkqsVx9QAXXEeCeSu
	D8kW0vwQL3v2xDJjOuzfLrsJC3mfeZ0a5fxnqrGuVYgRE1ER1XkvcLnLp/LQLIywEjJuRcyvRTaLJ
	fXZTuCP6NTA0l5hwaXxgVy9tF9odcL7NKs7YulsipbLDZfIWnaIf9lK478o+eEJ4B2BT6ift3DbrN
	aHqBvnVgPLwSzOs6cd0yBQ3MxW6WcPIoYdXdeivmtpyZGYHNgREJDUdsBbIu/BxFdIWI0LkScNYIS
	f44GFmGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNfj-00FNnW-Jg; Fri, 14 Oct 2022 16:36:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNew-00FNT3-18
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 16:35:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNet-0004y6-5m
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNes-001WSs-Hr
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:38 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNeq-00FzlN-CO
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 14 Oct 2022 18:35:26 +0200
Message-Id: <20221014163534.3812272-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_093542_084982_66597D8C 
X-CRM114-Status: UNSURE (   9.29  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/8] Barebox-State on-disk partition support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

this small series adds the support to store the barebox-state on a
on-disk partition like mbr/gpt. Note for testing you need a very recent
dt-utils package. I will send the patches soon as well and will add a
link to the patches here later.

Regards,
  Marco

Marco Felsch (8):
  of: of_node_name_eq: correct alignment
  state: select the STATE_DRV when STATE is selected
  state: rename partition_node to backend_node
  state: cosmetic fix reverse christmas tree order
  state: rename backend members
  state: factor out the backend property parsing
  of: partition: add a helper to determin if a node is a of-partition
  state: add support for new backend format

 .../bindings/barebox/barebox,state.rst        |  30 +++-
 Documentation/user/state.rst                  |  12 +-
 common/Kconfig                                |   1 +
 common/state/state.c                          | 170 +++++++++++++-----
 common/state/state.h                          |   6 +-
 drivers/of/base.c                             |   2 +-
 drivers/of/partition.c                        |  12 ++
 include/of.h                                  |   6 +
 8 files changed, 181 insertions(+), 58 deletions(-)

-- 
2.30.2



