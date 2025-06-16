Delivery-date: Mon, 16 Jun 2025 17:28:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRBlG-007xmz-2u
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 17:28:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRBlG-00020D-62
	for lore@pengutronix.de; Mon, 16 Jun 2025 17:28:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EKUBI/HPLLoCzSQGslFtYCiGkeCfKQUsiteYgvjUa68=; b=J5J8VvJMTs25Bb
	RwL2alh3AHTRUIwEneVChjJnJBNWnx4XbIQu5H3RyUenePp2BdqKnr0qWh548J0sNQXdkrGwMMnYl
	92pgV13/+RiWXPoASfGfDVx8UbN7x0Fswg+9L7yoooAIAxm/3rM1aJnPWtns+aLc7CILYoWT1W0G1
	JSsLKP+z87XWX0GWGc+rlecmk/CfOfR0KsLvMAP+Hn6ynlLwKMHj3USaceQ5/vYWc/qgzDJw6LUc+
	tbl9kLDUFw2KRHjxpb93z4UyQRGc9M+au2ldwY+fpSBE4ek6uvEGywhHpDwFbEVWR3qIIoGuGMTa4
	cIOtLt9ZC9L2Yz3BHXeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBkq-00000004s6f-12Hw;
	Mon, 16 Jun 2025 15:28:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBQY-00000004nYr-2xxh
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 15:07:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uRBQP-0007fK-HP; Mon, 16 Jun 2025 17:07:05 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uRBQP-003pFT-10;
	Mon, 16 Jun 2025 17:07:05 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uRBQP-00Gw36-2w;
	Mon, 16 Jun 2025 17:07:05 +0200
From: Lars Schmidt <l.schmidt@pengutronix.de>
Date: Mon, 16 Jun 2025 17:06:53 +0200
Message-Id: <20250616-bootchooser-lock-v2-0-df1f0d118635@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA0zUGgC/53OsQ6CMBSF4VchnS1prxTRyfcwDFgutBF6SVsJh
 vDuFiZnx384X87KAnqLgd2ylXmcbbDkUsApY9o0rkdu29QMBChRypI/iaI2RGnHB9IvrquiAaX
 KSyGBpdnksbPLQT7q1J2nkUfjsfmFzrIQlVC5BLgqUFzyIQ/ajLaN9wld/46enF3yFnfT2BDJf
 46Xs9zlP5x627YveqQLo/AAAAA=
X-Change-ID: 20250616-bootchooser-lock-c84a25567412
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_080714_757253_A4447198 
X-CRM114-Status: GOOD (  10.64  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/4] Add boot slot locking to bootchooser
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch series adds an option to lock attempts to bootchooser.
When slots are locked, the remaining_attempts counter will not
get counted down. It is optional, so when not set, it does not
have any effect on the counter. The choice of which slot to boot
is also not affected.

v1 -> v2:
  - rename slot locking to attempt locking (Ahmad)
  - drop else clauses when not needed (Ahmad)
  - write commit message bodies
  - change migration notes to 2025.08.0
  - add attempts_locked to bootstate.dtsi

---
Lars Schmidt (4):
      bootchooser: implement locking of attempts counter
      bootchooser: extend cmd tool by option to set attempts_locked
      Documentation: bootchooser: add information about attempts_locked
      Documentation: migration-2025.08.0: add information about attempts_locked

 .../migration-guides/migration-2025.08.0.rst       |  5 +++
 Documentation/user/bootchooser.rst                 | 26 +++++++++++
 arch/arm/dts/bootstate.dtsi                        |  5 +++
 commands/bootchooser.c                             | 16 ++++++-
 common/bootchooser.c                               | 51 +++++++++++++++++++---
 include/bootchooser.h                              |  1 +
 6 files changed, 98 insertions(+), 6 deletions(-)
---
base-commit: f2dc1e3b183ce2bcc05a6ab91801d7ce186d432c
change-id: 20250616-bootchooser-lock-c84a25567412

Best regards,
-- 
Lars Schmidt <l.schmidt@pengutronix.de>



