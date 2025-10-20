Delivery-date: Mon, 20 Oct 2025 20:29:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAudK-009z0k-2S
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 20:29:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAudK-0002L6-82
	for lore@pengutronix.de; Mon, 20 Oct 2025 20:29:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=L+ldV4HYIsjOjdC1oR5CEWHIEw0voU64GE7yA/OrRM8=; b=ch+XLc9Z50opYdUnY0e7JzZWpe
	dI61883aXRGPBm1Q9SxlpfX1XgGLomCiygks4L4vfIQ6sf+z9KNPe1pWZALwE8XqeciIEZltRxGU1
	gcLQnjfor7r4myjnzU7/xIHOVmBeL94VPLeGl3L20uNOIx35YfzrfIGn1wjRF++juhYoy9EkJD3jm
	lKehZSJyFM9RiP5OxsxmHSc4Aw2++08vGb3azqwAB8hyWCtuMwF8WIq6Nv756jPNekHFwVhZbYVJX
	ajZOM2+45BjApxTJibjKnehC5Ti8V9j1OoH2VPN8LqFWCcrIqP6NbUq3jhReTYZA16ud2I8jm/pyF
	DfZC0y0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAuct-0000000EdCV-2WAw;
	Mon, 20 Oct 2025 18:28:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAucs-0000000EdC9-0gVj
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 18:28:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=L+ldV4HYIsjOjdC1oR5CEWHIEw0voU64GE7yA/OrRM8=; b=H75X60viaXFV1hGmt9VJzs/fxW
	uxyyFEv0Q4ITyhPWWrnAX7MMS5coxlnJ+l8i7G5FMCDoOSzuqcyLpzr6D19i1iZQ2TAHSx+GiYvGL
	7m2+PmnwQnUE+GQxk4uYF8auNVNoGbDMGbenu65rcA0wwtquZ2/bomMzsZTC2/EWi+CUH7hWTu3Se
	EAYO2W3vgiXZTgLyR4WtvAEHNeuFT+lhwjHoEq7l/6KC3RyP4Q9JAqZHdrmAKyL7ufBBwBnVrioku
	mggr3j54fbqTEcUtIMHNBmALpJNsF6KBrRHebbIW1rl8LYrMuV7X00J9k8izAAdgCnPWrO7QcPzpx
	bDqJmDxg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAtl8-000000005j1-2wuC
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 17:33:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vAucc-00025o-DP; Mon, 20 Oct 2025 20:28:42 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 20 Oct 2025 20:28:36 +0200
Message-ID: <20251020182841.590206-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_183326_934856_7E1BCDB9 
X-CRM114-Status: UNSURE (   8.03  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] test: py: dm: skip test if veritysetup command is disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The test depends on veritysetup being available, so skip it if this is
not the case.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/py/test_dm.py | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/test/py/test_dm.py b/test/py/test_dm.py
index adeb9cbe03c9..dc4e05cc77c8 100644
--- a/test/py/test_dm.py
+++ b/test/py/test_dm.py
@@ -2,7 +2,7 @@
 
 import re
 import pytest
-from .helper import of_get_property
+from .helper import skip_disabled
 
 import os, subprocess, shutil
 
@@ -59,7 +59,10 @@ def reset_pwd(barebox):
     yield
     barebox.run("cd")
 
-def test_dm_verity(barebox, dm_testdata):
+
+def test_dm_verity(barebox, barebox_config, dm_testdata):
+    skip_disabled(barebox_config, "CONFIG_CMD_VERITYSETUP")
+
     barebox.run_check("cd /mnt/9p/testfs/dm")
 
     # Since commands run in a subshell, export the root hash in a
-- 
2.47.3



