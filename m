Delivery-date: Mon, 29 Sep 2025 10:05:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38sh-002LZi-1Z
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 10:05:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38sg-0000fm-Sz
	for lore@pengutronix.de; Mon, 29 Sep 2025 10:05:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eIEwsW+0Vw3Kyc/V6spmryZNClUEzk4F5oMRFgu1Xes=; b=00O7Sa4SWuQZwMpQtKiRoI4bMr
	dCNgz+8Tkgc6E2o6IEI0I1qFql5wJdr14j7JyJoXPWBW2wUy1RBEyGguY4f5ymwBGhUKKheZbfSFA
	KJ5aJQCT+2KnQWXZMB2jXcj6I/QX9FlrZTBYe7WnS4Y+MWdeFsJAnpiWfdkz0VTo6TGrVGnvFK59A
	SvyXhcJCH8RZE+G4zGfnJcJuysKV4xmFo+AMeTTolkzL75mCPfvV4R/9VrZRhRHXqKCGD6lMlZsZ3
	eTWcwtijJkTEohLtqVPeqdDrQsCJP2QKOgw/s40x4fk7LAQPvhp4CRqDljpKx9pll/mxDL/AS68GU
	rE/Gu70A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38sE-00000001iMt-1XhQ;
	Mon, 29 Sep 2025 08:04:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38s9-00000001iGs-14KX
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 08:04:39 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v38s6-000070-Bz; Mon, 29 Sep 2025 10:04:34 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 29 Sep 2025 10:03:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250929-tlv-integration-v2-5-55f75da7e670@pengutronix.de>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
In-Reply-To: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=789; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=mQ0o2xVP+FLdD9puV4/EZELjC7j8+sSLuuAZJrDZ+jE=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4ZdsfqX5+8vrSvwIa8V97bP5l8h1bsPJsUfhCrWyds
 n/m978Yd5SyMIhxMciKKbLEqskpCBn7XzertIuFmcPKBDKEgYtTACaSv46R4dpevi0WyfueNH+d
 ZGWsI9F3atOTh9t4N0zNF3uz72yifyHDP4N81mmq1z9U9mcnfC7OlFDifSXm4u3gZcnuzJ778Sc
 nEwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_010437_342535_89F3F705 
X-CRM114-Status: UNSURE (   6.83  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/9] test: py: test_bootchooser: remove dead code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This seems to have landed here by accident.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 test/py/test_bootchooser.py | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/test/py/test_bootchooser.py b/test/py/test_bootchooser.py
index a5f2b25d65..bd8aee7399 100644
--- a/test/py/test_bootchooser.py
+++ b/test/py/test_bootchooser.py
@@ -5,10 +5,6 @@ from .helper import globalvars_set, devinfo, getparam_int, \
                     getstate_int, getenv_int
 
 
-def fit_name(suffix):
-    return f"/mnt/9p/testfs/barebox-{suffix}.fit"
-
-
 def generate_bootscript(barebox, command, name="test"):
     barebox.run_check(f"echo -o /env/boot/{name} '#!/bin/sh'")
     barebox.run_check(f"echo -a /env/boot/{name} '{command}'")

-- 
2.51.0.297.gca2559c1d6



