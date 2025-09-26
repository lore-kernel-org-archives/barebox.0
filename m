Delivery-date: Fri, 26 Sep 2025 12:15:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25To-001IHx-00
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 12:15:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25Tm-0004nB-HD
	for lore@pengutronix.de; Fri, 26 Sep 2025 12:15:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eIEwsW+0Vw3Kyc/V6spmryZNClUEzk4F5oMRFgu1Xes=; b=OSbrU7Xh8KpBVuP6n2C2bdkDli
	Lct1cFbFLtb0XpKhOAv/2sYwIQbWJE3zVX/FJrdFOi5s22GNTmpIjh01kXEz7JeH4EsnqFbmZmBrd
	XXma7bAeYppvy2UzIotB8e+o1eJIBHvSoEuM+GdBXm6m/FWIPOn6KEVYoHvPPh7sEzEh5YUAEFHfo
	sRLDUwSK2WYFf2w0hLQQeLdAjNYnmgGKpahaR0Qurj/1VdHWVKkgPfktu+NV7lHWfi8e8YYfAlFmj
	O8b84jTifCZH8BII5Gn2mcB/j1rUU9IKIUOrB94XCuaTThBYVVwDkDlwsXNx3NAwHT8cgXoerw/id
	rAINB2Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TG-00000000IdJ-24wY;
	Fri, 26 Sep 2025 10:14:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TB-00000000IWn-1dFF
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 10:14:31 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v25T8-0004Ji-FO; Fri, 26 Sep 2025 12:14:26 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 26 Sep 2025 12:14:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-tlv-integration-v1-4-45dc68b9b602@pengutronix.de>
References: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
In-Reply-To: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=789; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=mQ0o2xVP+FLdD9puV4/EZELjC7j8+sSLuuAZJrDZ+jE=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4ll7/2M9S+pKb1RxGUb1/eb0vs1P2NCyYnWDiN2tv+
 j+VVLXJHaUsDGJcDLJiiiyxanIKQsb+180q7WJh5rAygQxh4OIUgIkE/2ZkuFh57+/8yPS52SpW
 GbtO1i7+L5Akxn9g2Tf9f1vP1Ef9cWb4n3kr1uXwhT1fudR4FvNwJth+OnO1xLF/4WYvvmPeciY
 t3AA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_031429_497990_B902B1BE 
X-CRM114-Status: UNSURE (   6.22  )
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
Subject: [PATCH 4/7] test: py: test_bootchooser: remove dead code
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



