Delivery-date: Mon, 05 Jun 2023 08:37:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qX-00BSHP-1L
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:37:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qT-0004Cu-HN
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:37:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h+ogSuQOXC5hm1bKXUZAXXNg3kwTF/QHW/9Drg1blP4=; b=vpnFAI0SKqYDC4r2DX3+G42gVy
	4Pypqh+14fcy6qPO+QZ1VV9Q/Puf/HMwCrI2lnLxhwAYishqH+DBSKQ/7rcfKn4A4MbXRyGscSGDH
	tEVjnp0kukm+Gkm/b5LlcycK2CYO48Ql6HN289Y23ojbqGGbl17BQMDJrY271C0vluFPyrDtL2cFq
	yH2Hfv8AJNJXvdkibnXeXmB0+4P2FAYJkuBkVhVk41Ewf0jHsvAZ82nrZ1NsHZBHgMBlX1Ll0EZ5d
	bEybXFTFQov8xNVq7yN7vcH1SsXwI3uoFqdfZwVDKMp14xW5L7EXHzMzio3PVKS/z9Q7NAdYzmEtD
	w7U0aQug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pU-00ENDe-2W;
	Mon, 05 Jun 2023 06:36:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pO-00EN7h-04
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:36:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pM-0003Vk-Qu; Mon, 05 Jun 2023 08:36:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pM-005CtG-3r; Mon, 05 Jun 2023 08:36:28 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pK-005pRS-HF; Mon, 05 Jun 2023 08:36:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:36:23 +0200
Message-Id: <20230605063623.1254764-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
References: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_233630_055295_72CCC502 
X-CRM114-Status: GOOD (  10.19  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 14/14] ci: pytest: test RISCV 64-bit as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have labgrid environments for two Qemu rv64i machines:

  - RISC-V Virt 64-bit
  - SiFive HiFive Unleashed

The first one is readily testable, but the second hangs during cat
/env/data/config. This isn't reproducible interactively and needs
further looking into, so we just enable a single config for now.

emulate.pl also supports a TinyEMUDriver, which is not supported by
labgrid. To avoid passing it to labgrid when globbing in the future, we
add a grep with an early continue.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 6647237284d9..5b17c701a7bb 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -35,6 +35,10 @@ jobs:
             lgenv: test/riscv/qemu@virt32_defconfig.yaml
             defconfig: virt32_defconfig
 
+          - ARCH: riscv
+            lgenv: 'test/riscv/qemu-virt64@rv64i_defconfig.yaml'
+            defconfig: rv64i_defconfig
+
     steps:
     - name: Checkout code
       uses: actions/checkout@v3
@@ -60,6 +64,8 @@ jobs:
         export KBUILD_OUTPUT=build-${{matrix.arch}}
 
         for i in ${{matrix.lgenv}}; do
+          grep -wqe QEMUDriver: "$i" || continue
+
           cfg=$(basename $i .yaml)
           echo "Testing $cfg"
           labgrid-pytest --lg-env $i test/py --verbosity=1 \
-- 
2.39.2



