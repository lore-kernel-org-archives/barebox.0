Delivery-date: Thu, 05 Mar 2026 11:06:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy5as-008IGk-2Y
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 11:06:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy5at-000863-3r
	for lore@pengutronix.de; Thu, 05 Mar 2026 11:06:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zPPintUCfKqUDeDyq70yeFCLgIZBlwRpebqksSpJUz4=; b=HSPo4RblEu/XKT
	prnEQxETaDIohWowtrMV+56A6ZUrR0B6KT0nx+O8mU0yIoPy+5tljHb/vSbbWgPDSMb3zO1ZTUm77
	jT7oEM5n2nQNCRleySQiSlb5TCoLRkmuUiOKve5W24ySXRwBS6qxktD2I+nHq1Clt5XlQ2Wxh4MD3
	oUdZv/NnqbPCbjocrrtN70A8yR90yHnAoq7uuBSkff9CjyoHWNY/defho2GH2yUxAtckTXkWshGuC
	tMlXnwxfutzSxk/icudecBtO0NfpoRUGoYLGS1mfihFI0jSu0LQoPG3YLUUFF7qbOQy+JN7dHoDkU
	x8/TaQC6EeFOaUGjRfRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5aO-00000001W4D-3tYJ;
	Thu, 05 Mar 2026 10:05:40 +0000
Received: from cczrelay04.in2p3.fr ([134.158.66.154])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5aM-00000001W34-0BAt
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 10:05:39 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay04.in2p3.fr (Postfix) with ESMTPSA id CEA2480080C;
	Thu,  5 Mar 2026 10:56:01 +0100 (CET)
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 05 Mar 2026 10:55:43 +0100
Message-Id: <20260305-b4-sa2-usb-v2-0-cf377c10efd5@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB9TqWkC/23MSQ6CQBCF4auQWlukJxlceQ/DokepRBvSjURDu
 Lsta5f/S963QfaJfIZLtUHyK2WaYglxqsCOOt49kisNgomGSabQKMxa4Csb7Jzi0rizbZsOymF
 OPtD7wG5D6ZHyMqXPYa/8t/5lVo4MO95Lx4LurWuv9uHTc4pLTVHMsg4Jhn3fv2SR276sAAAA
X-Change-ID: 20260304-b4-sa2-usb-8d413bd5c768
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772704561; l=874;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=g/tUHoFjjCt7cuFrhoq/DUM25YikWcJXd+wmI0ucWOo=;
 b=aE80sI+VmJVsAHFzRyGnJaHcGrDWo7os6s/MIDeQ4YfnSvbc8EsZ+hOJPgGMU8pectfQL+JSq
 J0z0z08ltNpCreTYiERcU1IqpoHNWhHTKwALwFqtLica5M7UKyFi5Fz
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_020538_219304_A8F1EE71 
X-CRM114-Status: UNSURE (   6.05  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/3] ARM: socfpga: Enclustra SA2: enable HS USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enable high-speed USB on Enclustra Mercury+ SA2 module:
- Enable options in the defconfig.
- Enable the high-speed USB 2.0 controller in the devicetree.
- Change 1st stage image compression method to keep it small enough.

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
David Picard (3):
      ARM: socfpga: Enclustra SA2: add defconfig options
      ARM: socfpga: Enclustra SA2: enable USB1 HS
      ARM: socfpga: xload: compress image with xz

 arch/arm/configs/socfpga-xload_defconfig       |  1 +
 arch/arm/configs/socfpga_defconfig             | 15 +++++++++++++++
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi |  7 +++++++
 3 files changed, 23 insertions(+)
---
base-commit: f6fe200a9862010fb5bc5cc5d55abe2350b5aa82
change-id: 20260304-b4-sa2-usb-8d413bd5c768

Best regards,
-- 
David Picard <david.picard@clermont.in2p3.fr>



