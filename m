Delivery-date: Mon, 13 Apr 2026 09:46:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzi-00BdsA-2W
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:46:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzi-0007DP-0D
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:46:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iVNXg2nR9L2yI+MZYn1bAYeElOLu10m8iItLKq3THOI=; b=WjYEClDhlKRIsee3QfceqRqs8B
	eoPjTGW6XmMpPFXTsfWMIefPEuldb7BOAHbGap/teWepf4i3jGwhXR/0EK8xNblHpO91Rn8m9yGGQ
	XWWREv6Xt/U92M7HD5wm+4YQwzJMAnYsbWknCXdIykDV04fXSBg4Kjwy7tSsYHii03H6jCCniZ3fH
	wkhDoeCmEJMYNOKziBUp4R/8UXYJXKa2vKEJzj0MufTQ9NnRZZ7Me5HLV5Os6Nm0WHneMjVhQkwfR
	6LICOzdbVfOWyYAfB17whqEKN4Q0U5fyaqZqwwdL/ucOsLeQFaSRAnGnYqp3syIQhRAZu1Wy75U2b
	y+QcE1Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBzB-0000000FB5Z-42ts;
	Mon, 13 Apr 2026 07:45:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBzA-0000000FB3t-0uE4
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 07:45:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=iVNXg2nR9L2yI+MZYn1bAYeElOLu10m8iItLKq3THOI=; b=PfTFVDKe6f5uwrjBN3g5oDwZNH
	Zes8vu7M8+V6XhIUvsdLNBBKKZQlK3dx4l5p0QgGEsipp4leVqJpNDT5gWt5o9D7+EiK0Xk5xT95+
	FoA2sURmRlEtrsJX+PiS8Hyg7CFJMgSgV95uCT9DM0ZWxjAQQx8NSjNBm5/UMf9LluRGq9oNJkSgj
	ekq4VxMkIJgSEMmhtnnKKR7ge/O+Ujb6JNzey6UcNnZqrOOK3//XSH+XnCwPld15AzpvsbeVGAjMF
	5rBQSuXyvUuQOjAnMnK1Gv/GFjAUhk/Yi12Fh6pEU16odvavKe2zrhP2U9tYL0Gu1VPDI8b7/0Arn
	W+e/10pA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBz6-0000000DVnj-3FlE
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:45:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCBz4-0006tX-3L; Mon, 13 Apr 2026 09:45:26 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 09:44:47 +0200
Message-ID: <20260413074522.1410710-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413074522.1410710-1-a.fatoum@barebox.org>
References: <20260413074522.1410710-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_084528_863411_6518D8D4 
X-CRM114-Status: UNSURE (   8.93  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] test: conftest: don't call .startswith on int
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The returned YAML value may be an integer if quotes are missing, which
will lead to an error when .startswith() is called on it.

Check that the value is a string first and while at it, combine the two
loops to reduce the duplicate code.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 conftest.py | 26 +++++++++-----------------
 1 file changed, 9 insertions(+), 17 deletions(-)

diff --git a/conftest.py b/conftest.py
index c27e7a9546a1..6bf92f3afed7 100644
--- a/conftest.py
+++ b/conftest.py
@@ -226,25 +226,17 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
         else:
             pytest.exit("--blk unsupported for target\n", 1)
 
+    envopts = {}
+
     for i, fw_cfg in enumerate(pytestconfig.option.qemu_fw_cfg):
+        value = fw_cfg.pop()
+        envpath = fw_cfg.pop() if fw_cfg else f"data/fw_cfg{i}"
+
+        envopts[envpath] = value
+
+    for envpath, value in (yaml_env | envopts).items():
         if virtio:
-            value = fw_cfg.pop()
-            envpath = fw_cfg.pop() if fw_cfg else f"data/fw_cfg{i}"
-
-            if value.startswith('@'):
-                source = f"file='{value[1:]}'"
-            else:
-                source = f"string='{value}'"
-
-            strategy.append_qemu_args(
-                '-fw_cfg', f'name=opt/org.barebox.env/{envpath},{source}'
-            )
-        else:
-            pytest.exit("--env unsupported for target\n", 1)
-
-    for envpath, value in yaml_env.items():
-        if virtio:
-            if value.startswith('@'):
+            if isinstance(value, str) and value.startswith('@'):
                 source = f"file='{value[1:]}'"
             else:
                 source = f"string='{value}'"
-- 
2.47.3



