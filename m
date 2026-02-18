Delivery-date: Wed, 18 Feb 2026 13:15:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsgSb-0032lu-0A
	for lore@lore.pengutronix.de;
	Wed, 18 Feb 2026 13:15:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsgSb-0002Rc-C1
	for lore@pengutronix.de; Wed, 18 Feb 2026 13:15:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wGPtc6PNQE0Lzpt82spmxsM12vK58my6kLpF7W+DX1A=; b=vCi4DdR74HDpJJ
	HqcG/7g9/aDBTi/UlmRsMn14NXfg2VoGNZKdNps4URpZt/1MEKKpygQpcCboK8J1GMS7C0/c+wegj
	ZXaL4QAes6euK6bP+7jn4Qgij0xVWtH/VX6WFNAvh4AgtxH0Tq2E4Al6iOL5Qw2kIUrAIvYaF+K6x
	UWZSGuKzlvex0ZxrTGzGr/lpTI7ZfZ5YIppY8rf6JIzLkMLi6Rp4WCIy/Hkfn+GUHzUjUt7m0CFDO
	jn6YzHNtkG3lqaNsQkfex3ACmdTMEVNjFzaOLU7TAMff+flqG56+KyHRt8xDe0GC/1C4zbqQK+9Pl
	fh4DyYpkkXiLHPgC1cTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsgRz-00000009l83-2Cnv;
	Wed, 18 Feb 2026 12:14:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsgRw-00000009l6s-0AV0
	for barebox@lists.infradead.org;
	Wed, 18 Feb 2026 12:14:37 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vsgRs-0002FH-9v; Wed, 18 Feb 2026 13:14:32 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Wed, 18 Feb 2026 13:14:24 +0100
Message-Id: <20260218-keytoc-multi-env-v2-0-3ea146c95d18@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACCtlWkC/32NTQ6CMBBGr2Jm7ZgyJY268h6GBT8DTNSWtKWBE
 O5u5QAu30u+920Q2AsHuJ828JwkiLMZ6HyCdqztwChdZiBFRpEy+OI1uhY/8zsKsk1Y1lorRTf
 isoY8mzz3shzJZ5V5lBCdX4+HVPzsn1gqsECjr33TU6ONLh8T22GO3llZLh1Dte/7F6xyLGG1A
 AAA
X-Change-ID: 20260206-keytoc-multi-env-4a3300292e4a
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1278; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=StTaBpMAmJJ3av5uC0gGedGwaYW3++LjirJCKfM6m2Q=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsiculYt+Vzv+cc1t6c9FbF4cVvmpuuVOzxm7+bYZIQKq
 7JvkTV521HKwiDGxSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZhIRDUjw8PH7ippgd+MlYJd
 JVb+4j9QZNT7PefR9Yudtr7L967uN2P4Kxr6+c9ilgR2XqPNH/vWB7h+15ll4dFYZjw185LpRps
 wXgA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260218_041436_094490_915C7196 
X-CRM114-Status: UNSURE (   6.50  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
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
Subject: [PATCH v2 0/2] Allow multiple keyspecs in one environment variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This contains the actual change to keytoc as well a migration Note.

Allowing any number of public keys to be provided via a single
environment variable eases integration in more complex setups where
multiple public keys per keyring are managed externally.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Changes in v2:
- Split up the keyspec environment variables when multiple are provided
  too.
- Use strsep_unescape instead of manual split/unescape
- Remove RFC tag
- Link to v1: https://lore.barebox.org/barebox/20260206-keytoc-multi-env-v1-1-638fbf2b3634@pengutronix.de

---
Jonas Rebmann (2):
      crypto: keytoc: Split env-provided full keyspec on spaces
      Documentation: migration-guides: Document change in keyspec env vars

 .../migration-guides/migration-master.rst          | 17 ++++++
 scripts/include/linux/string.h                     |  2 +-
 scripts/include/string_util.h                      | 65 ++++++++++++++++++++
 scripts/keytoc.c                                   | 71 +++++++++++++++-------
 4 files changed, 132 insertions(+), 23 deletions(-)
---
base-commit: 74393178faf08f8102c7c370ac310c29112e1137
change-id: 20260206-keytoc-multi-env-4a3300292e4a

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



