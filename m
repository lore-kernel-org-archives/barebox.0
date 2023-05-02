Delivery-date: Tue, 02 May 2023 09:40:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkd8-0027jw-VE
	for lore@lore.pengutronix.de; Tue, 02 May 2023 09:40:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkd6-0002er-JG
	for lore@pengutronix.de; Tue, 02 May 2023 09:40:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rah1soecEbrCh7w/GuLmy9rX8nDOfjRu1aX8waEZQ28=; b=H6Kb/Eo2yHsHv5CnKOrvzgHiI2
	Ohl+qUtGix92NJCxcn4QbBaqI/jyX/4HvduADzMVFQh/T3Qd9QhULDGgxZzgu6eHyKBgg4hVdP/7v
	dW3B2VQsSMA6+kMkJISqsgWFo0/WifDUBKgWROuv1EkP+MJEpQxI/06pUaaWqbb5VdCZSFSnisbqL
	JvTTG+EJLACyDmHpgZPN8wAXhjfC9Xi7H5dNG0TRgDPUpNbqcBlE4StbyNo5IZgw6BGDB5BFCfWhs
	+VHVaP5WFduYr5ftbILq/ZPDoQboO+IgmRPjaJWCoCs4xk7rzYneI20jMm+gSasy8a8e3+hAvGwFV
	e7+I9U5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbv-000V15-0b;
	Tue, 02 May 2023 07:39:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbl-000Uty-0n
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 07:39:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbg-0001yB-Bp; Tue, 02 May 2023 09:39:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbf-000XQB-S4; Tue, 02 May 2023 09:39:27 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbe-001Mdb-Ab; Tue, 02 May 2023 09:39:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 09:39:15 +0200
Message-Id: <20230502073925.266116-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_003933_351401_6ABED3A1 
X-CRM114-Status: UNSURE (   7.41  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/10] MAKEALL updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series puts some love into the existing MAKEALL script. Some bugs
are fixes, pick the correct 32/64 ARM toolchain based on the config
file, support applying Kconfig fragments before compilation and some
output beautification.

Sascha

Sascha Hauer (10):
  MAKEALL: Configure before setting up CROSS_COMPILE
  MAKEALL: Select arm64 toolchain for 64bit ARM configs
  MAKEALL: order configs alphabetically
  MAKEALL: Do not print sizes
  MAKEALL: Do not trap
  MAKEALL: fix printing number of compiled configs
  MAKEALL: support Kconfig fragments
  MAKEALL: rename variables
  MAKEALL: separate errors and warnings
  MAKEALL: allow multiple defconfigs as arguments

 MAKEALL | 88 +++++++++++++++++++++++++++++++++++----------------------
 1 file changed, 54 insertions(+), 34 deletions(-)

-- 
2.39.2



