Delivery-date: Mon, 16 Feb 2026 11:37:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrvyS-002IAl-0y
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 11:37:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrvyS-0007OS-E1
	for lore@pengutronix.de; Mon, 16 Feb 2026 11:37:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uo48nJkoNFFq/eaAlUDy06Uh6KyQh+Bc7S4jqt9Lvbc=; b=qVxMSSl3kKgvp5
	YFKaZeJxbqaPXPa9OSoeArwtO2eX9sMuXixJQYhfa6GrrlYWcw71KaNPe2BjJM7QO/BmdK2RuUtVR
	ej8CYAA/F7m/KoEkVkla64vMA6eFdg9z+KikRe2bFwacqrli6ZkfMpRCqIC9wMFbupwrkXtEeQBPI
	iHLA/GUdSxaMBJgAYKWK9CPLfFagqOpiT2u0+X71AQg+kLSierR/caaET7yC6b9kPZfC+ClA35RJP
	K6Jfj4Cke70j4p/y6z64O1YQj11x4pgsqztftSrHOPq8JPEzxJkUL2sI0DpJ+ahfjbJgjtv54ZvCB
	OPDaaA/EE2NI1bOpepgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrvy2-00000006MPe-2nRc;
	Mon, 16 Feb 2026 10:36:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrvxz-00000006MOY-0uOg
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 10:36:36 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vrvxx-000794-LM; Mon, 16 Feb 2026 11:36:33 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Mon, 16 Feb 2026 11:36:22 +0100
Message-Id: <20260216-v2025-11-0-topic-optee-imx6-start-v4-0-b73279a8a971@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACjzkmkC/42P3U7EIBBGX6XhWgwDhdJe+R7Giy4MXRItlbKkZ
 tN3l3bXn6gxe8fHTM755kxmjB5n0lVnEjH72YexhPquIubYjwNSb0smnHEJnEmatxcFoIymMHl
 Dw5SwbL0sis6pj4ka1aORjYUeBCmcKaLzy+54fLrkiK+nokqXzy9TV+0eAHb1sPaHJzhalu2zH
 weKrZMgBZha1V0WZIMf/ZxCfNvvybDTr9X1DdXzNmMta4BrYw/aPUw4DqcUw+iXe4u7IvNv2M+
 m/2J5mUnBNePMNU6zP7HiA6sYB3ULVpRZb1sN5gAKFf7Cruv6Dq03UGLiAQAA
X-Change-ID: 20251205-v2025-11-0-topic-optee-imx6-start-c6aec57d1a13
To: BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_023635_333080_7393BC30 
X-CRM114-Status: UNSURE (   9.39  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 0/2] Add generic OP-TEE loading for i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a generic way to load OP-TEE from i.MX6 CPU's with config options
instead of board and lowlevel code.

If the generic i.MX6 OPTEE firmware gets enabled, it will be loaded
during boot, if the boardcode is using the imx6*_barebox_entry function
to start barebox instead of the generic barebox_arm_entry. These will
make sure, that OP-TEE is configured correctly and if the space for the
overlay is configured, they will also apply the devicetree overlay
provided by OP-TEE.

This is build upon the work of Marco for i.MX8M.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Changes in v4:
- replace IS_NULL(fdto) with fdto == NULL
- Link to v3: https://lore.barebox.org/barebox/20260216-v2025-11-0-topic-optee-imx6-start-v3-0-ad981cb16e6e@pengutronix.de

Changes in v3:
- Update to newest version of dependend series.
- Link to dependen series: https://lore.barebox.org/barebox/20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de/
- Link to v2: https://lore.barebox.org/barebox/20251210-v2025-11-0-topic-optee-imx6-start-v2-0-5328020f7f80@pengutronix.de

Changes in v2:
- Dropped double substraction of OPTEE_SIZE from memory layout
  - from barebox-arm.h
  - from esdctl.c
- Automagically -> automatically
- Link to v1: https://lore.barebox.org/barebox/20251208-v2025-11-0-topic-optee-imx6-start-v1-0-0907128cdb8f@pengutronix.de

---
Fabian Pflug (2):
      ARM: i.MX: scratch: add generic init for imx
      ARM: i.MX6: load optee in PBL before barebox proper

 arch/arm/mach-imx/Kconfig   |  2 +-
 arch/arm/mach-imx/esdctl.c  | 48 ++++++++++++++++++++++++++++++++++++++++++---
 arch/arm/mach-imx/scratch.c | 18 ++++++++---------
 firmware/Kconfig            |  8 ++++++++
 firmware/Makefile           |  1 +
 include/mach/imx/scratch.h  |  1 +
 include/tee/optee.h         |  9 ++++++++-
 7 files changed, 73 insertions(+), 14 deletions(-)
---
base-commit: 7ca10210121e51856cdb99f85eb7f9801b29ddb2
change-id: 20251205-v2025-11-0-topic-optee-imx6-start-c6aec57d1a13
prerequisite-change-id: 20251110-v2025-09-0-topic-optee-of-handling-e9f51531c464:v3
prerequisite-patch-id: ed054cfa1582d9b49e2be540106cd90107bde600
prerequisite-patch-id: f916f25d3fe0064ce6455fff58a7ba45494188cd
prerequisite-patch-id: e9d8948b45921666d931253bfed355de5ac54c0f
prerequisite-patch-id: f25764d9a13e9631e71f9eb1cef9740b240d80e1
prerequisite-patch-id: 432b1305e98b2b406eb676f9e67b91589a8c28d8
prerequisite-patch-id: 0f6d0d30b46e432859ab824b7aec3aa3b60af3c3
prerequisite-patch-id: 3e1fa756532433c41f45ab0faaf16d0930e4c060
prerequisite-patch-id: a6b464e45b729c5050b6a666708f956af926d086
prerequisite-patch-id: 6f39185bb4f3693d764b309cca4b2745ddb8435e
prerequisite-patch-id: 03c1dad70551c5994ef195b774edf3e9a99d5502
prerequisite-patch-id: 12ab30ee2ed7982d37ef1ca5f6080c10bafce92a
prerequisite-patch-id: cce3aa8abd3e87aa7536cbf70a1a9a847322d590
prerequisite-patch-id: 528bc53ad2f52a81c42f0da0a6f77e7cd22b1b6f
prerequisite-patch-id: a999583ab806be64268eb52f47fbd8d5f4610d19

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



