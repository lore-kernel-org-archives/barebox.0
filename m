Delivery-date: Fri, 06 Jun 2025 10:59:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSuq-004K5t-2m
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 10:59:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSun-0003fh-6f
	for lore@pengutronix.de; Fri, 06 Jun 2025 10:59:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2oTOAZFqn4P51654YoWSvo+z9mfi8/Kns9iq/d/1qA0=; b=BXQQbdQYZzjD56D5afAGWtlCFX
	sGuwOof1pMt4alPrB+NxIWEu/14qxRQV49TosI/VYPhkImUBpXiJqGJ28ekUjCfbJs78KVHUneGHS
	k0Yzd4mFJG0zrB55Jpufv7Moh3OxWREn+dMdQE3uzR05shte4tEYvnyYP+/x8COi4BGkztJiwRRKe
	Mi6KW5QzY55hz4HOwh+DEhiEonA+N+K1eKAaP5gIyfN3PY60NA8xhWnTN/TTXpJuHCufQbsnLDn4r
	xMWSadmVxgrPrS0zaLE2ipeN/5wIPC4TXcW2S9yBCWKjStd5LsonSu098/uTn04lmlO0qOWGeOEmO
	qK2m/nXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu9-0000000HSRM-3fsO;
	Fri, 06 Jun 2025 08:58:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu2-0000000HSLp-3kSQ
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 08:58:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNSu1-0002si-L6; Fri, 06 Jun 2025 10:58:17 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 10:58:13 +0200
Message-Id: <20250606085813.2183260-11-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606085813.2183260-1-a.fatoum@barebox.org>
References: <20250606085813.2183260-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_015818_936508_55E0B495 
X-CRM114-Status: UNSURE (   8.54  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/10] test: add support for --fs option in QEMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a convenient way to pass files from and to barebox running
in QEMU.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 conftest.py | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/conftest.py b/conftest.py
index 5dfefef24638..feccbcfbf52e 100644
--- a/conftest.py
+++ b/conftest.py
@@ -58,6 +58,9 @@ def pytest_addoption(parser):
     parser.addoption('--blk', action='append', dest='qemu_block',
         default=[], metavar="FILE",
         help=('Pass block device to emulated barebox. Can be specified more than once'))
+    parser.addoption('--fs', action='append', dest='qemu_fs',
+        default=[], metavar="[tag=]DIR", type=assignment,
+        help=('Pass directory trees to emulated barebox. Can be specified more than once'))
     parser.addoption('--env', action='append', dest='qemu_fw_cfg',
         default=[], metavar="[envpath=]content | [envpath=]@filepath", type=assignment,
         help=('Pass barebox environment files to barebox. Can be specified more than once'))
@@ -115,6 +118,18 @@ def strategy(request, target, pytestconfig):
         else:
             pytest.exit("--blk unsupported for target\n", 1)
 
+    for i, fs in enumerate(pytestconfig.option.qemu_fs):
+        if virtio:
+            path = fs.pop()
+            tag = fs.pop() if fs else f"fs{i}"
+
+            strategy.append_qemu_args(
+                "-fsdev", f"local,security_model=mapped,id=fs{i},path={path}",
+                "-device", f"virtio-9p-{virtio},id=fs{i},fsdev=fs{i},mount_tag={tag}"
+            )
+        else:
+            pytest.exit("--fs unsupported for target\n", 1)
+
     for i, fw_cfg in enumerate(pytestconfig.option.qemu_fw_cfg):
         if virtio:
             value = fw_cfg.pop()
-- 
2.39.5



