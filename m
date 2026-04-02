Delivery-date: Thu, 02 Apr 2026 09:00:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8C2W-007lCV-12
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 09:00:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8C2V-00040R-QE
	for lore@pengutronix.de; Thu, 02 Apr 2026 09:00:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+cDLB+RzyXYcnyi+bs+ouMb6oXWOoTCiu5d4WyTLg70=; b=VqaIngmySTlP74
	h815Ht2gI42v+V6HxTPy46+ZAMwOw6QcNw5Uvqhm/HvvxuC9uNJL9qvMW9Zfv6uwhUlyEIsiNqWBK
	aJixg6q/JCajSPUQqHgP03KCWC+yMu01VNdlcm/T7G2qrmeQP6hipaFbtvtJpBwO9+ra3q7HCeRoB
	fA5MpBIHTL1ktt9tuciXMERuk3faF6tucyFW9SQjKSvMzjFqPBYaxEXM34Q3NzsA2F8ipkx/dYw4G
	anSc7peoYS/WH23vGKRY04dXGd/W9KPio9z7/ebfXk9JPtoLr1pJutKt5+r+ZsbTiMEoSTma/pMz6
	TKdbeUptu7ioy3gaDZLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8C28-0000000Gy2u-09tx;
	Thu, 02 Apr 2026 07:00:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8C24-0000000Gy0I-16bQ
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 07:00:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C22-0003om-Oy; Thu, 02 Apr 2026 08:59:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C22-003Kec-1k;
	Thu, 02 Apr 2026 08:59:58 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C22-00000003O7L-1yIX;
	Thu, 02 Apr 2026 08:59:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:59:56 +0200
Message-Id: <20260402-net-dhcp-buffer-overflows-v2-0-fe4ca7c4b718@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOwTzmkC/42NQQ6CMBBFr0Jm7Zi2YCOuvIdhAe0UJjEtaaFiC
 He3egKX7yX//R0SRaYEt2qHSJkTB19AnSowU+9HQraFQQmlRSMUelrQTmbGYXWOIoZM0T3DK2H
 b9IKuota1kVD2cyTH26/96ApPnJYQ37+rLL/2n2qWKNBYLQZ9kb1W7X0mP65LDJ63syXojuP4A
 Pjc21jHAAAA
X-Change-ID: 20260402-net-dhcp-buffer-overflows-94a0e80363c1
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775113198; l=838;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=mNmBUQYkkqJ+oDwiMHkVraSN7fWgHBWsozDAbyFpu0o=;
 b=VRn+no42Cl1EoSNPJwpbLR440YfKtk1cHMZiAxp9qc3yaGVTux/IaPDjMv2+2ygXGe3CnMEMY
 hoL996hHFhuA9M0B+7sKDp3lkjCZoCCzW+KmcULYCrxW61twVbXu+2j
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_000000_323411_FB028703 
X-CRM114-Status: UNSURE (   6.59  )
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
Cc: "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
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
Subject: [PATCH v2 0/3] net: dhcp: fix buffer overflows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix buffer overflows on malicious incoming network packets or user data
in the dhcp code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- use first character != 0 check instead of strnlen
- Link to v1: https://lore.barebox.org/20260402-net-dhcp-buffer-overflows-v1-0-cd60b651a629@pengutronix.de

---
Sascha Hauer (3):
      net: dhcp: add bounds checking to DHCP option parsing
      net: dhcp: use xstrndup for bp_file to prevent read past field
      net: dhcp: cap DHCP option string length to 255 bytes

 net/dhcp.c | 36 +++++++++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 11 deletions(-)
---
base-commit: 0933e8f2ebf0d91dfcf177a4e4292b02921a53f1
change-id: 20260402-net-dhcp-buffer-overflows-94a0e80363c1

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



