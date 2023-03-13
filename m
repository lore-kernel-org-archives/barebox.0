Delivery-date: Mon, 13 Mar 2023 15:44:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjPD-006M4t-Br
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 15:44:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjPC-0006jh-2A
	for lore@pengutronix.de; Mon, 13 Mar 2023 15:44:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Iw6iz8mTfPrCfHC72mWxrUZBnjoiUEOrsodEymKxeY=; b=U41JB4hUBM2gVo
	liF1zzz7vuB9FFEpEKoCZapGGiubQpesX6WYEknApi3jebq5GFsYlTSr97oW/73gHYTV+N66ZSbgh
	RQAt40+N58byXYJfUM1exHAFSjvOAWcYPVnhOcdXNRigoK8OwC79pk3gYEr4FtmskTKzyrGkqOhjY
	O3SJ0vAvIKE6kJXqc65fj0mkeagasBo7iyDJ1KgsrGwAV+GrhGiI/3B0c43rYNtDGVAVJWOtvX3/d
	EJUDk0q1br7uHkCXMhAhxYsy6S7v9DL7f3ui9dBd4/ozakZwLWHUB519HE2rbWJwD46X708EKMO8L
	MVEEuE4CcP0MLjHLqybg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjNi-006ARs-FK; Mon, 13 Mar 2023 14:42:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjNa-006AQ1-Kc
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:42:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pbjNW-0006Me-Ae; Mon, 13 Mar 2023 15:42:22 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pbjNV-003s8N-Io; Mon, 13 Mar 2023 15:42:21 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pbjNV-0076kb-0B; Mon, 13 Mar 2023 15:42:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 13 Mar 2023 15:42:17 +0100
Message-Id: <20230313144220.1689252-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_074226_701372_C756263A 
X-CRM114-Status: UNSURE (   9.87  )
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
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/3] boards: qemu-virt: support passing in FIT public key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

FIT public key is usually passed in via board DT. Usual way to use
barebox with QEMU Virt however is to use DT supplied by Qemu and apply
overlay to it. mkimage doesn't generate overlay DTB though. To make
barbebox Qemu Virt behave like other boards, let's define a dummy DT
that includes CONFIG_BOOTM_FITIMAGE_PUBKEY, which is merged with the
barebox live device tree.

This replaces v2 of the series available in next and fixes the
regressions I introduced for deep-probe systems that ensure probe in
other devices.

I dropped Jan's Tested-by, because the differences warrant it, but
I tested locally that a RSA key was registered as before.

v2 was here:
https://lore.barebox.org/barebox/20230210165353.3601175-1-a.fatoum@pengutronix.de/

v2 -> v3:
  - drop "support of_ensure_probed for top-level machine device"
  - switch from board driver back to initcall

v1 -> v2:
  - support of_ensure_probed for top-level machine device
  - ensure qemu board driver is probed at postcore

Ahmad Fatoum (3):
  boards: qemu-virt: apply overlay at postcore_initcall level
  boards: qemu-virt: compile overlay as such
  boards: qemu-virt: support passing in FIT public key

 common/boards/qemu-virt/Makefile              |  2 +-
 common/boards/qemu-virt/board.c               | 52 +++++++++++--------
 common/boards/qemu-virt/fitimage-pubkey.dts   |  7 +++
 .../{overlay-of-flash.dts => flash.dtso}      |  0
 4 files changed, 38 insertions(+), 23 deletions(-)
 create mode 100644 common/boards/qemu-virt/fitimage-pubkey.dts
 rename common/boards/qemu-virt/{overlay-of-flash.dts => flash.dtso} (100%)

-- 
2.30.2



