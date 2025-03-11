Delivery-date: Tue, 11 Mar 2025 13:42:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tryw5-00Cfzq-3D
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 13:42:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tryw3-0006I7-9E
	for lore@pengutronix.de; Tue, 11 Mar 2025 13:42:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hGV+QxvXx2mvgwlc4AsSrfGBNnYprN4NLO/f+L1A5DE=; b=RLT7Vh7E9oXFLI9OZ6/xUcNghF
	fV6/h/7/+LXVOnhILrAE+qYFocabYPTu6Y9y8sWDmYnptIVRMhelHoNJ9n+ZWPKHfY5pJc6uNjDhO
	3nhdEUNaq1vrOIkFr6b8hRDzjA/RKUlETkOVLYqeJrCwJ00Nokwm6Ln9KSG0+h7vqezha1irteBJY
	bQPVrT92A7lvzFAVNZmcihrFf98UIN4OLVWBmgyFkZFB6QE1BSQUmmWQqJJAuSWpih0H3/Ms69u1p
	tou70pCN59waLEak977Q1SytZBdYvk38FaoE4qRvGRQmaGvcZ2eJSLHiE51Z4n5UYGKmVL5Ag+cRW
	TX49kjHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tryvW-00000005gvI-1dQG;
	Tue, 11 Mar 2025 12:41:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tryfd-00000005d1j-1Cw0
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 12:25:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfc-0003BC-28; Tue, 11 Mar 2025 13:25:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-005B6L-1a;
	Tue, 11 Mar 2025 13:25:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-000oVs-15;
	Tue, 11 Mar 2025 13:25:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Mar 2025 13:25:13 +0100
Message-Id: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKkr0GcC/3XMQQ6DIBCF4auYWZcGRrC0q96jcWF00FkUDCixM
 d691H2X/0vet0OiyJTgUe0QKXPi4EvgpYJ+6vxIgofSgBKNRLSiezdoRKJ+jST0vZbKNVrdagv
 lMkdyvJ3cqy09cVpC/Jx6Vr/1D5SVkEJLidpa5wwNz5n8uC4xeN6uA0F7HMcXedmOXa0AAAA=
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741695915; l=2546;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=n+H+Blf/Vf0kmbo2kvzcpOujcHNG++kf1I+Iam4EbEc=;
 b=Da9G9jApCboLncIHmkEHfT/c0//UuOgNo9r+21FozShQ2uJGqgcTDFyn3EUPrLufiBlgiBNlZ
 z2kwKM8q01CD6KpjvfCUFUYZQ8szuK7jn7W62+EQa4bhPFg6JOAEzsz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_052517_402850_D67FC15F 
X-CRM114-Status: GOOD (  12.58  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/14] am625: support secure loading of full barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On K3 SoCs only a small barebox is loaded by the ROM into SRAM. This
barebox then loads the full barebox from SD/eMMC or USB DFU. In a secure
boot environment the full barebox must be authenticated. This series
implements two ways for accomplishing this.

First way is to utilize the ROM API to authenticate images. The other
way is to compile a secure hash into the first stage binary and check
if the full barebox image matches the hash. Using the ROM API means
different first stage and second stage images can be combined whereas
hashing binds specific builds together avoiding mix and match attacks.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- select HAS_INSECURE_DEFAULTS when necessary
- use 'ret' as error value variable rather than mixing 'err' and 'ret'
  in a single file
- rename firmware_next_image_verify() to
  firmware_next_image_check_sha256() and drop unnecessary hash_size argument
- Link to v1: https://lore.kernel.org/r/20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de

---
Sascha Hauer (14):
      firmware: always generate sha256sum
      firmware: add function to verify next image
      ARM: k3: r5: drop loading of separate binaries
      ARM: k3: r5: add proper error handling
      fip: rework fip_image_open()
      fip: fix wrong function call
      fip: add function to calculate a sha256 over FIP image
      ARM: am625: support hash verification of full barebox
      ARM: k3: add support for authenticating images against the ROM API
      ARM: k3: r5: delete fip image when it can't be opened
      ARM: k3: r5: Allow to authenticate next image by ROM API
      scripts/k3img: remove temporary files
      scripts: add k3sign
      ARM: k3: r5: select HAS_INSECURE_DEFAULTS when necessary

 arch/arm/mach-k3/Kconfig  |  16 ++++
 arch/arm/mach-k3/common.c |  99 +++++++++++++++++++++
 arch/arm/mach-k3/r5.c     | 214 ++++++++++++++++++++++++----------------------
 firmware/Kconfig          |  23 +++++
 firmware/Makefile         |   8 +-
 include/fiptool.h         |   3 +
 include/firmware.h        |  26 ++++++
 include/mach/k3/common.h  |   1 +
 lib/fip.c                 | 101 ++++++++++++++--------
 scripts/k3img             |   9 +-
 scripts/k3sign            | 126 +++++++++++++++++++++++++++
 11 files changed, 481 insertions(+), 145 deletions(-)
---
base-commit: 66b293c915276c3926cfda068f3f7a4b39b19f4a
change-id: 20250228-am625-secure-49301f641738

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



