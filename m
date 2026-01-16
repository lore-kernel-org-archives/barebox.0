Delivery-date: Fri, 16 Jan 2026 17:07:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMY-00216d-0j
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 17:07:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMW-0005dz-L0
	for lore@pengutronix.de; Fri, 16 Jan 2026 17:07:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xeKrMs0HD4xf5P+htKs0zeadPe4d1qjMaC4rslMB074=; b=vRUoUjZPCUD1BTx0EYfi0GkEtp
	FUA4YNimy9JPTIQCGnYIW4jgC0SGoOZi3VfSQ3lhVioRmFvbWrEagROvjAqBxIy1dSlUJspLRiDbv
	e8k0RWClZD6i+ukSguEg6lnLCUgGU1m/1znrW2pbRuCPrpshftcw6kFtQLy/9wVAuib5TbKZEnUSE
	FPCogvuEKUB6olaPuHZMODdghxikjiRVXpFWreJWLSiShS5Fjv0KnM6b28Za7uLHRbQYL2T66yBro
	m8THrIO1+Ty7imLOx/92DAuQYKK3MoCGilVNXlsLPvBoYqJc+DqizsSp/FL9nvHV7e1sLaCn5QH3n
	yk3SEJtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLu-0000000EQ4i-0pGo;
	Fri, 16 Jan 2026 16:07:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLo-0000000EPx9-2r6e
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 16:07:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgmLm-0004sd-4Y; Fri, 16 Jan 2026 17:07:02 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Claude <noreply@claude.ai>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 16 Jan 2026 17:06:34 +0100
Message-ID: <20260116160654.3981425-12-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260116160654.3981425-1-a.fatoum@barebox.org>
References: <20260116160654.3981425-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_080704_731426_06BCC5BD 
X-CRM114-Status: UNSURE (   8.58  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/13] test: conftest: add support for describing FW_CFG environment in YAML
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We can inject new environment files via FW_CFG with pytest --env.
Add support for an env: key that allows manipulating the barebox
environment with only the YAML.

Co-developed-by: Claude <noreply@claude.ai>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 conftest.py | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/conftest.py b/conftest.py
index ef6ca221a5db..4241ebce7702 100644
--- a/conftest.py
+++ b/conftest.py
@@ -143,6 +143,12 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
     except KeyError:
         features = []
 
+    try:
+        main = target.env.config.data["targets"]["main"]
+        yaml_env = main["env"]
+    except KeyError:
+        yaml_env = {}
+
     try:
         main = target.env.config.data["targets"]["main"]
         qemu_bin = main["drivers"]["QEMUDriver"]["qemu_bin"]
@@ -218,6 +224,19 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
         else:
             pytest.exit("--env unsupported for target\n", 1)
 
+    for envpath, value in yaml_env.items():
+        if virtio:
+            if value.startswith('@'):
+                source = f"file='{value[1:]}'"
+            else:
+                source = f"string='{value}'"
+
+            strategy.append_qemu_args(
+                '-fw_cfg', f'name=opt/org.barebox.env/{envpath},{source}'
+            )
+        else:
+            pytest.exit("env unsupported for target\n", 1)
+
     if len(pytestconfig.option.bootarg) > 0:
         strategy.append_qemu_bootargs(pytestconfig.option.bootarg)
 
-- 
2.47.3



