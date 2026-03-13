Delivery-date: Fri, 13 Mar 2026 14:27:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YJ-000D9y-2x
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:27:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YH-0005f0-LQ
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:27:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EpNNAd2KPJFjYmOa7gMVB7KJiInRCcm9WDVFFXai4xo=; b=KZuze3fmmVMKi3Bf2OQEbkY1DM
	k0dOkL+kSJ7ZZxd9xcixh1JuIoO8vFPh90BDveIPnXaMGAwIy+FkEBpyVBzU5D7CVzdgQCTAPvzkL
	xpnEnywqOwf6uML3PPSD79Gv+EKxSAqOpp0+oCnlCD2d6lvwT4XB2dcjPb0TErQsIhU+doPsRH0lB
	IKj0222O8slAlMI3WbjPkMXEo4JXyVTfDVEiqEFk9qdHg6vjtJepvLOdhjrjpWuw82hVLt4uVqTXS
	CxbFKFpPdO5Z6J3cRcCeEcP5BqR1TqwJGsTXPxBNPhpW/EU0tIPPVKNDkR/PiIq/LvyRdbv519LML
	69YzBtcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XP-00000000EAm-2kGY;
	Fri, 13 Mar 2026 13:26:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XN-00000000E8V-1rx5
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:26:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00058e-4R; Fri, 13 Mar 2026 14:26:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-0005Rd-20;
	Fri, 13 Mar 2026 14:26:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-29wC;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Tobias Waldekranz <tobias@waldekranz.com>
Date: Fri, 13 Mar 2026 14:24:50 +0100
Message-ID: <20260313132631.2257573-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_062645_486422_2F740F82 
X-CRM114-Status: UNSURE (   8.31  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 06/58] MIPS: qemu-malta_defconfig: Use largest possible relocation table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Tobias Waldekranz <tobias@waldekranz.com>

With the upcoming device-mapper selftest, enabling CONFIG_DISK and
CONFIG_DM_BLK pushed the resulting relocation table over the 0x8000
default.

Given that the target hardware is QEMU, RAM is unlikely to be a scarce
resource. Therefore, go for the maximum allowed to avoid being back
here again when the next thing is added.

(cherry picked from commit 42226e38383a35b2e56fc9ad548c29da3ca497ff)

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
Link: https://lore.barebox.org/20250909131843.2260573-6-tobias@waldekranz.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/configs/qemu-malta_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 5f2b4470b817..e5bc8ff8cbc5 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -1,3 +1,4 @@
+CONFIG_MIPS_RELOCATION_TABLE_SIZE=0x10000
 CONFIG_BOARD_QEMU_MALTA=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_NAME="qemu-malta_defconfig"
-- 
2.47.3



