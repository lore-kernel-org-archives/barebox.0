Delivery-date: Thu, 02 Apr 2026 09:21:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CNJ-007lhx-1z
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 09:21:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CNJ-0008TC-2L
	for lore@pengutronix.de; Thu, 02 Apr 2026 09:21:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mEq9Yrt6nVXwL6zBVyWAmEiB4ToNhwDUDj4bAZVRfP0=; b=nIQWXuz2ITRXkE
	rLS5oMGcxaF3BSYyUfcks6E29OtWheKy0eo0/4N8qgchvkxgS2BRnp1eGeX6tWk0em7aOtBf+1oIv
	3PrAKZGgrgVw18LvFMJwAaD+DKVgHkgBP+FmxPkLPF29U7NOD/hVjimV8U9fWCxc5tDvp4ksPD2yg
	/BcPhDvWOARLBIvj6nxXV7EVMrgPHvDF/TlnqasFv46j0nDBQ3fv2+Yq9JziKzN8jdSZWjczIR6ZO
	2sE2cLI2PY+s+0kb5Va8IK8lPkIibVTjJ21wxCc1JasDhmxbMBklgFggV9DsUQRrqlizS4KZGUugV
	jFUgu2GtUkmrK1vUqoZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8CMp-0000000H2HW-1LPZ;
	Thu, 02 Apr 2026 07:21:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8CMl-0000000H2FT-1kr1
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 07:21:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-0008Da-Oi; Thu, 02 Apr 2026 09:21:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-003Kwd-1b;
	Thu, 02 Apr 2026 09:21:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-00000003PEH-1mR4;
	Thu, 02 Apr 2026 09:21:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 09:21:18 +0200
Message-Id: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO4YzmkC/x3Myw6CMBBG4Vchs3aSUqVeXoWwEP0HJzEtmRY0I
 by7jctvcc5GGabIdGs2MqyaNcWK9tDQ43WPE1if1eSdD+7kPEcULlJmHhcRGKcVJu/0yRzGy/E
 K6c4+tFT72SD6/b/7Yd9/DeWmTGsAAAA=
X-Change-ID: 20260402-net-tftp-buffer-overflows-6b839ef57261
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775114481; l=701;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lv/FnnCE4SpJjimed7q+joO0JuntKcnnbGBdxr2dlzc=;
 b=8Sm/25P2gVnz84XtHKYg4I2MSib0WHvD4NfRLJzAVOAaIP5mp1pkLKur0c+qblRa59ZXuMYCT
 kS0OohysCTnAB2WJre0g8AXQN+f/kPDJvqiJG/X9MayI2/hhjVHHtvj
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_002123_600095_985F47F5 
X-CRM114-Status: UNSURE (   4.83  )
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
Subject: [PATCH 0/4] tftp: fix buffer overflows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds more checks on incoming network data to prevent buffer
overflows.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      fs: tftp: prevent packet buffer overflow from long filenames
      fs: tftp: fix OACK option parsing bounds check
      fs: tftp: reject OACK with blocksize of zero
      fs: tftp: use bounded format for TFTP error message debug print

 fs/tftp.c | 45 +++++++++++++++++++++++++++++++++++----------
 1 file changed, 35 insertions(+), 10 deletions(-)
---
base-commit: 0933e8f2ebf0d91dfcf177a4e4292b02921a53f1
change-id: 20260402-net-tftp-buffer-overflows-6b839ef57261

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



