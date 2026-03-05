Delivery-date: Thu, 05 Mar 2026 13:47:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy86v-008KVD-27
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 13:47:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy86w-0006qp-0f
	for lore@pengutronix.de; Thu, 05 Mar 2026 13:47:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mMzUmf+lj4u29JS070hSHp6V/bfrP42kF6SUdoEdgOo=; b=HLisY3ETR5jquz
	NM4VucQLz4U+mTED0Y999/IP89+ccay86XQG146rd8gAM4bzuAat9ZaDOkt1ypP12W1bYQazvBHrl
	Uz7VwF1LZ32GR7M18ecsICzMaBi5k3uqZoCTB8ccfQe1A9lV1DhdMcRni4bvQejj38CLN8TNrj4jv
	xVHpicuhj393zUQZKOiXjpkrGdOenrA7fldaCtkzgS+/mZ09KhqtfGcEEaDIMB1yq4wnS9ARNN9MD
	XDUx3JI1nVP4yzGcE7hUL5MmZBT2b9tFZ+i+4WtOdGkjORk8HkWIvKaVQOlFFnTZF2ZSPaVOqRg4q
	cs8YLmSNZqemEEqDEJQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy86S-00000001oKm-2dUh;
	Thu, 05 Mar 2026 12:46:56 +0000
Received: from cczrelay05.in2p3.fr ([134.158.66.155] helo=cczrelay03.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy86P-00000001oJ1-0Mcs
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 12:46:55 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay03.in2p3.fr (Postfix) with ESMTPSA id DC2FF180078B;
	Thu,  5 Mar 2026 13:46:49 +0100 (CET)
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 05 Mar 2026 13:46:21 +0100
Message-Id: <20260305-b4-sa2-usb-v3-0-802f52d308ab@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB17qWkC/23MSw6CMBSF4a2Qjr2kD6DgyH0YB9DeShNtSYuNh
 rB3CyNNGP4nOd9CIgaLkZyLhQRMNlrvcohTQdTYuzuC1bkJp7yhglYwVBB7Dq84QKsrJgZdK9m
 0JB+mgMa+d+x6yz3aOPvw2e3EtvWQSQwotKwTmpq+U1pe1APD07u5tI5PojSBbFziv0T9R/BMK
 COkVIyi0fURsa7rF40adtjvAAAA
X-Change-ID: 20260304-b4-sa2-usb-8d413bd5c768
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772714809; l=1020;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=elDLYpr9tgvfOG823mBZ91cYOU8f8J84ZqrQ5UXoyt8=;
 b=QynqAvY7KvZ14rBIJb0A3Jdj7en1jLSYaY79/tPtDwDnIfMj0pdWoioSutSYcG/KJM4Xwc7e6
 nR/uu0DoTXUBpOzJvrtut2eteWPC4CQnOGqubbaMAyTxNn3NcWklKMf
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_044653_267588_CDF906E1 
X-CRM114-Status: UNSURE (   6.37  )
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
Subject: [PATCH v3 0/3] ARM: socfpga: Enclustra SA2: enable HS USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enable high-speed USB on Enclustra Mercury+ SA2 module:
- Enable options in the defconfig.
- Enable the high-speed USB 2.0 controller in the devicetree.
- Change 1st stage image compression method to keep it small enough.

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
Changes in v3:
- Add Reviewed-by field.
- Link to v2: https://lore.kernel.org/r/20260305-b4-sa2-usb-v2-0-cf377c10efd5@clermont.in2p3.fr

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



