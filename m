Delivery-date: Mon, 12 Jun 2023 14:52:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h1z-003q4N-7a
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:52:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h1w-0005to-MD
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:52:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9Z2zEl2pgcZXws69Hftucd//tJPBrYAh6yhRIl6fyj0=; b=cocCyB9136inx6owRFtWgvI3vi
	G2VMVUkn316GM+eXinFb5MpUA8dFjoKKye4QSmRqhm1mnfkATM7nPu4vS3WilJiuyKW1YfvxEZ4+o
	my7N8rSf9vlKoFnJALTnQhhulaPsTZtjTOU6jYaWJv04nEx0RAitr0IrRF+ZnxPqrmnWGBHnjrdYN
	hbWILspYRd+UyqOBrRkBc/abINRJe3HOgcWQXJsxjrIymb/YevR9kBBvP2Y+almMZdo/kKRzJ/8dv
	3aCKCnSbySWUEzq06HvLvZUHD5RvPh/IkhGbkf5JdohBNsD8ywIyisQHc3SHbZxPYGXHvNTuhqJuj
	Yr1k6bdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h0s-0044Ki-33;
	Mon, 12 Jun 2023 12:51:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h0n-0044I0-0B
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:51:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0l-0005Rz-TA
	for barebox@lists.infradead.org; Mon, 12 Jun 2023 14:51:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0l-006tSk-8B
	for barebox@lists.infradead.org; Mon, 12 Jun 2023 14:51:07 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0j-004XjB-Qt
	for barebox@lists.infradead.org; Mon, 12 Jun 2023 14:51:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Jun 2023 14:50:58 +0200
Message-Id: <20230612125104.1082800-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055109_091264_5C09613A 
X-CRM114-Status: GOOD (  10.03  )
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
Subject: [PATCH v4 0/6] boards: qemu-virt: support passing in FIT public key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

FIT public key is usually passed in via board DT. Usual way to use
barebox with QEMU Virt however is to use DT supplied by Qemu and apply
overlay to it. mkimage doesn't generate overlay DTB though. To make
barbebox Qemu Virt behave like other boards, let's define a dummy DT
that includes CONFIG_BOOTM_FITIMAGE_PUBKEY, which is merged with the
barebox live device tree.

v3 -> v4:
  - early exit initcall if compatible doesn't match
  - evaluate DTC_CPP_FLAGS for device tree overlays
  - rename overlay to reference board name
  - Rename older QEMU's /soc/flash@X to /flash@X

v2 -> v3:
  - drop "support of_ensure_probed for top-level machine device"
  - switch from board driver back to initcall

v1 -> v2:
  - support of_ensure_probed for top-level machine device
  - ensure qemu board driver is probed at postcore

Ahmad Fatoum (6):
  boards: qemu-virt: apply overlay at postcore_initcall level
  kbuild: support DTC_CPP_FLAGS_file.dtbo
  boards: qemu-virt: compile overlay as such
  boards: qemu-virt: support passing in FIT public key
  of: implement of_move_node helper
  boards: qemu-virt: support older QEMU with /soc/flash

 common/boards/qemu-virt/Makefile              |  6 +-
 common/boards/qemu-virt/board.c               | 62 ++++++++++++-------
 common/boards/qemu-virt/fitimage-pubkey.dts   |  7 +++
 ...rlay-of-flash.dts => qemu-virt-flash.dtso} |  0
 drivers/of/base.c                             | 18 ++++++
 include/of.h                                  |  1 +
 scripts/Makefile.lib                          |  1 +
 7 files changed, 69 insertions(+), 26 deletions(-)
 create mode 100644 common/boards/qemu-virt/fitimage-pubkey.dts
 rename common/boards/qemu-virt/{overlay-of-flash.dts => qemu-virt-flash.dtso} (100%)

-- 
2.39.2



