Delivery-date: Fri, 28 Feb 2025 08:18:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnudr-007xpT-2S
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 08:18:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnudo-0004DZ-KV
	for lore@pengutronix.de; Fri, 28 Feb 2025 08:18:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YfVPVOxvaRIgWPn/0HBZuz/gk8uBtly4sIotcvAfkJ8=; b=0hk99Ysox/fj9KgYZ+OAdEDWfR
	2TC+1gtVdwHmsI6rj8Y5W6qhevj4ZyrziGyyXqoaUqBdWocxdn8aXFWnbVxMczkygxNKB93dn/HT/
	1W49PI88o1MHWvR7DrUpkTXWxvt8SM5NjywJJkpvq5VVzeqqRKNss5g6+KwdDb856t9IxJqaJldsj
	qJ63v7aNmnpdlJVHypMCAhy0SzOrZbf+xeN+tt8eiwoc0NOpvTyWhkOljL4ItXS0w0QjcqIst+JdK
	nlkWeJ8gU4hb71P9eN8nN3E0D1VmOKA1ZhERVj49gc8NufoC6CevUonF4mQpe0jLlRI1oign7OpZn
	XQq4yOnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnudE-00000009xip-3zUZ;
	Fri, 28 Feb 2025 07:18:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnuc9-00000009xZf-3dga
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 07:16:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-0003kB-GB; Fri, 28 Feb 2025 08:16:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-003FtJ-0U;
	Fri, 28 Feb 2025 08:16:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-005CL4-0G;
	Fri, 28 Feb 2025 08:16:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2025 08:16:48 +0100
Message-Id: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOBiwWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDIyML3cRcMyNT3eLU5NKiVF0TS2MDwzQzE0NzYwsloJaCotS0zAqwcdG
 xtbUAv7A+DF4AAAA=
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740727009; l=2109;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=CtUIVKz2hbTHgI3f4meAcLkuGBofZ80uF+l2tfFsMCU=;
 b=fGVk12to+u2dPX4+AJtOviu6qYJuHN4nN9M53vphoLboFoK+QHrB71Z/qUwXX9Lu4zRncNYBI
 aPpxTu0KdXRDl2CZBZR/VJVdCw8eu9OinkQLgHI5FGv3e+WQptQVnxO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_231653_949737_1582843B 
X-CRM114-Status: GOOD (  10.31  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/13] am625: support secure loading of full barebox
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
Sascha Hauer (13):
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

 arch/arm/mach-k3/Kconfig  |  15 ++++
 arch/arm/mach-k3/common.c |  99 ++++++++++++++++++++++
 arch/arm/mach-k3/r5.c     | 206 +++++++++++++++++++++++++---------------------
 firmware/Kconfig          |  23 ++++++
 firmware/Makefile         |   8 +-
 include/fiptool.h         |   3 +
 include/firmware.h        |  28 +++++++
 include/mach/k3/common.h  |   1 +
 lib/fip.c                 | 101 ++++++++++++++---------
 scripts/k3img             |   9 +-
 scripts/k3sign            | 126 ++++++++++++++++++++++++++++
 11 files changed, 478 insertions(+), 141 deletions(-)
---
base-commit: 748ba0627681797b01a94be1b3f879ed2e52a361
change-id: 20250228-am625-secure-49301f641738

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



