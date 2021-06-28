Delivery-date: Mon, 28 Jun 2021 08:46:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2Y-0001cd-RI
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 08:46:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2Y-0004Dr-1w
	for lore@pengutronix.de; Mon, 28 Jun 2021 08:46:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9u1bl9PHs0hdXhtz6PjJdVNRxt9vrH0tQzl1DL2WwoI=; b=4DenHZlnhGsTcU
	+h1q3I4/aKSDzZIAyuVc69+PiLqQeIm4F33mU6BDJFRCQPUwI0weAXovY88HhQD/y2mydlpTTkz3o
	fqbegJXbTr3C5H/1iRq7Zxn4Rt9r0VH/FM+UCY0EN15t4bP+7l/u6ZAbCZAX0I9zBrBLC05swo/fn
	KsOhPDXomdcX5CHThkkyCZC4kZ/gvwzX7VyoCy9mZDODaGpDOkUN6NjS1QJmEg1gajLUBKVRghLzO
	7GL+7wGMeKOKSNZ6EkuaErnCWl5S4lp0QhwPcuzjuPnNbISKykycJLnk/Q4qMXmqdznf4feGzn2YJ
	Cdid819W4+1ZL1L/Pdyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxl1P-0074ih-9x; Mon, 28 Jun 2021 06:45:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxl1F-0074fm-3X
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 06:45:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lxl1D-0003ib-II
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 08:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lxl1D-0007VC-59
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 08:45:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 28 Jun 2021 08:45:10 +0200
Message-Id: <20210628064517.28636-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_234521_301707_565C5045 
X-CRM114-Status: UNSURE (   6.07  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] sandbox: turn into deep probe platform
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ahmad Fatoum (7):
  sandbox: power: set $global.system.reset=POR on poweroff
  sandbox: fix probe order dependency between watchdog and power
  of: partition: implement of_partition_ensure_probed
  state: support deep probe
  nvmem: support deep probe
  sandbox: turn into deep probe platform
  Revert "sandbox: hostfile: move initcall to earlier postcore level"

 arch/sandbox/board/board.c    | 16 ++++++++++++++--
 arch/sandbox/board/hostfile.c |  2 +-
 arch/sandbox/board/power.c    | 14 +++++++++++---
 arch/sandbox/board/watchdog.c | 14 ++++++--------
 common/state/state.c          |  4 ++++
 drivers/nvmem/core.c          | 13 +++++++++++++
 drivers/of/partition.c        | 11 +++++++++++
 include/of.h                  |  6 ++++++
 8 files changed, 66 insertions(+), 14 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

