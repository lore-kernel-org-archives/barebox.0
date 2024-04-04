Delivery-date: Thu, 04 Apr 2024 12:27:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsKJT-009OKz-1F
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 12:27:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsKJS-0001nM-RA
	for lore@pengutronix.de; Thu, 04 Apr 2024 12:27:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=H3CGJETrorSENNUzT4W5ookxD4Dv7u/ryr0phm7Nsh8=; b=FsVCZiGNJjywHgF6UCYrt4Syjn
	atEBwapDuHf3Z0IXzLQinAr2nfL3IK72lbV+g2fW+PoGpG5e4djHKibjqa7/8vj5bKNEDdg+MKhU7
	DYFFSHcQFtedxavUQmQgGUrgGpii3tqAuzBsgdVsNISv/JGaWvv+65HNfAIXSTu1ZEto9ezXZ9mNk
	2SKMQULJKCcS5Fig9Bq9ZZ2jWPiquSfz7GS9HnkrYrqKDU2KFT3vnpwYodI0srOefHp3y+HcAXPdY
	w7CSHEzDgEgoM23ZgI3og5u/g1noTB9JMEjkW4RLwdIMGYZ0CYvlQnwuXp/VtTK/rYt4WDVMcOB+i
	c/xiKoAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsKIn-00000002Ahi-0aPR;
	Thu, 04 Apr 2024 10:26:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsKIj-00000002AgN-1uee
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 10:26:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsKIg-0000zh-Vm; Thu, 04 Apr 2024 12:26:30 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsKIg-00ALlv-JR; Thu, 04 Apr 2024 12:26:30 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsKIg-004EV3-1f;
	Thu, 04 Apr 2024 12:26:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  4 Apr 2024 12:26:22 +0200
Message-Id: <20240404102623.1008974-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_032633_706805_82B50969 
X-CRM114-Status: GOOD (  12.59  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: dts: add common bootstate.dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by at least the LXA MC-1, add a bootstate definition with the
minimal set of variables needed for bootchooser.

We add this to a generic location, so it may be used by other boards as
well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/bootstate.dtsi | 45 +++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 arch/arm/dts/bootstate.dtsi

diff --git a/arch/arm/dts/bootstate.dtsi b/arch/arm/dts/bootstate.dtsi
new file mode 100644
index 000000000000..aa767d4e3b96
--- /dev/null
+++ b/arch/arm/dts/bootstate.dtsi
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+
+bootstate {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	system0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		remaining_attempts@0 {
+			reg = <0x0 0x4>;
+			type = "uint32";
+			default = <3>;
+		};
+
+		priority@4 {
+			reg = <0x4 0x4>;
+			type = "uint32";
+			default = <20>;
+		};
+	};
+
+	system1 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		remaining_attempts@8 {
+			reg = <0x8 0x4>;
+			type = "uint32";
+			default = <3>;
+		};
+
+		priority@c {
+			reg = <0xc 0x4>;
+			type = "uint32";
+			default = <10>;
+		};
+	};
+
+	last_chosen@10 {
+		reg = <0x10 0x4>;
+		type = "uint32";
+	};
+};
-- 
2.39.2



