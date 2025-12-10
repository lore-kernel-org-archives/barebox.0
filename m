Delivery-date: Wed, 10 Dec 2025 14:17:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTK4A-009vQO-29
	for lore@lore.pengutronix.de;
	Wed, 10 Dec 2025 14:17:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTK49-0003xY-UK
	for lore@pengutronix.de; Wed, 10 Dec 2025 14:17:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9CWeBQENt1GBCecn5E9lXBzw6Xz58pnKKanFnGHEB3s=; b=VR42LzPluslHtw
	HZ0l8EX26gsfZ5nSDEFiipOLYxfe3JgTOCN7qrdkUCHuO/sgcWzINNXdXRlf7sSyLgpapZ0tiObg/
	rm9UZR+hFRz9ABmuwDbaXcm6oAgsxDVTLj5Xo+UglnfWAskNCq3wL0EUhC7dyDaSd8aUBlYvY+Azq
	f0oKMo9nNHb/ZawuAXMes8U+7uRa96u8hxH0CY9AVvm1aGfsSKqzuAjyJJ/q3oe7y0lc3K899oLta
	7cV0vPG1DV77P+1Sz9Z3tQYLkX7q1ZPx+uhpohL49agcOry6UwEnXOIPb2phi4tH2PC8NzZklOi+Y
	4rGp2qr3YPe9BPoyPDDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTK3a-0000000FTMd-1Wi2;
	Wed, 10 Dec 2025 13:16:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTK3X-0000000FTLS-01cN
	for barebox@lists.infradead.org;
	Wed, 10 Dec 2025 13:16:36 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vTK3U-0003mZ-Ny; Wed, 10 Dec 2025 14:16:32 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 10 Dec 2025 14:16:13 +0100
Message-Id: <20251210-v2025-11-0-topic-optee-imx6-start-v2-0-5328020f7f80@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ1yOWkC/42PwW7CMBBEfwX53K28Bockp/5HlUOwN2ElagfbR
 EFR/r02IFXqidvO7mje7CoiBaYo2t0qAs0c2bss1MdOmHPvRgK2WQsllUYlNcxlAkSQkPzEBvy
 UKLt+lgpi6kMCU/Vk9NFij3uRc6ZAAy8Pxnf31IGut4xKz+UfKYMLB1G+OLL5x/EDZLO9sBuBm
 kGj3qM5VId2RlHCzxyTD/fHP3lV0l/V6zeqz+UmG3lEVRt7qoevidx4S8E7Xj4tiW7btl9hIh8
 iNAEAAA==
X-Change-ID: 20251205-v2025-11-0-topic-optee-imx6-start-c6aec57d1a13
To: BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_051635_045990_548BE9E0 
X-CRM114-Status: UNSURE (   6.73  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/2] Add generic OP-TEE loading for i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a generic way to load OP-TEE from i.MX6 CPU's with config options
instead of board and lowlevel code.

This is build upon the work of Marco for i.MX8M.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Changes in v2:
- Dropped double substraction of OPTEE_SIZE from memory layout
  - from barebox-arm.h
  - from esdctl.c
- Automagically -> automatically
- Link to v1: https://lore.kernel.org/r/20251208-v2025-11-0-topic-optee-imx6-start-v1-0-0907128cdb8f@pengutronix.de

---
Fabian Pflug (2):
      ARM: i.MX: scratch: add generic init for imx
      ARM: i.MX6: load optee in PBL before barebox proper

 arch/arm/mach-imx/Kconfig   |  2 +-
 arch/arm/mach-imx/esdctl.c  | 48 ++++++++++++++++++++++++++++++++++++++++++---
 arch/arm/mach-imx/scratch.c | 18 ++++++++---------
 common/Kconfig              |  1 +
 firmware/Kconfig            |  8 ++++++++
 firmware/Makefile           |  1 +
 include/mach/imx/scratch.h  |  1 +
 include/tee/optee.h         |  9 ++++++++-
 8 files changed, 74 insertions(+), 14 deletions(-)
---
base-commit: adf5ebc913ae657d29faa2eff4d91e4230da8290
change-id: 20251205-v2025-11-0-topic-optee-imx6-start-c6aec57d1a13
prerequisite-change-id: 20251110-v2025-09-0-topic-optee-of-handling-e9f51531c464:v1
prerequisite-patch-id: a9d242490e6b89fad3f7479575b66a5a2dbc2529
prerequisite-patch-id: a1436008413ee47f88ca724b5624935fa14b0e0b
prerequisite-patch-id: 8b59da44ed6ff90982f13979feac4a0e036a8c0e
prerequisite-patch-id: 4b1f8dd05b5a6974b728e457646d41f5f20023e7
prerequisite-patch-id: f426a6784461579368b2cd0142a357664038705c
prerequisite-patch-id: 35e792c79c983d2b21fce6d423aca326f9667a6d
prerequisite-patch-id: e9d8948b45921666d931253bfed355de5ac54c0f
prerequisite-patch-id: 810625536dd1a8c92c393384950c16a5f7590d6d
prerequisite-patch-id: 5e40ae531579bdaea7a9a30f3da5dc24855166c8
prerequisite-patch-id: d1881ceddf54a2ba8227afd366493dd582be56da
prerequisite-patch-id: 3e1fa756532433c41f45ab0faaf16d0930e4c060
prerequisite-patch-id: a6b464e45b729c5050b6a666708f956af926d086
prerequisite-patch-id: a688b082e9dc5ec1d3dc57e34f0aa615349dc661
prerequisite-patch-id: 93a2db629bee13ae25c6c3e75e53652826eb1ad0
prerequisite-patch-id: 794b3b4488859497b5aadc8b6df27beecbf69f6d
prerequisite-patch-id: 8ded8fd093a4f2bbcfc8a09b028c8ce6ee6f48ae
prerequisite-patch-id: ce9866af93b0bccbe707531397eb949956f936f4
prerequisite-patch-id: fd487c8e4e41c105a5ea928c484f3a819eb25101
prerequisite-patch-id: ec605c8fffc2c54e4ec9989aa50d4761d5eebc95
prerequisite-patch-id: 9142d258abe17c510cc2e608939cdc08880ec54a
prerequisite-patch-id: d7489c3dd4dabbf0988a16bd7cbcd8a7d872713e
prerequisite-patch-id: f852d62d4fae1cab4a86157d797429ccefd18f5a
prerequisite-patch-id: 05f9029826c5329c88ce39d45c725718cda4c93a

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



