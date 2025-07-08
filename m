Delivery-date: Tue, 08 Jul 2025 22:09:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZEcf-00FTJS-32
	for lore@lore.pengutronix.de;
	Tue, 08 Jul 2025 22:09:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZEcf-0002Ff-4k
	for lore@pengutronix.de; Tue, 08 Jul 2025 22:09:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KodSqhjTOTf4P18ypd67EqTSH1Hkcy5yYoAvw3Z2u48=; b=eNjDAOg+vRxdXBDaJu0Up9dN+a
	rS0fHDk4FjdyulzfzN+tlsnSDyIR67ssnfmuGcUU2tXkuT4fi8Vsb9+zPiAMHCzXOBS/1RMOLrNai
	oy08XyXDVxHq/iaV3cEIQ3dDSFTj2o0OD1+RqDwBCLJb1F7ze6EIJCfss52ImtQXqBtpA2/tL1HbD
	ffN15B9yGXAFyBNTv3wXVAlUxwe60RQILDip29FyFbU60iwfQdx025s4cC0WRIKy5MsEL9NdWk26s
	L2YujN9014iLkNFjGHJ5FqkXvyFKaiMxgPvu1BTm7t5B+fz9xiHKebv+7RdmHd4paAIo8eC2TrFnF
	kd2bSIzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEc7-00000006SnG-0rOO;
	Tue, 08 Jul 2025 20:08:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZE6o-00000006M31-33At
	for barebox@lists.infradead.org;
	Tue, 08 Jul 2025 19:36:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uZE6k-0008Qx-So; Tue, 08 Jul 2025 21:36:02 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Dang Huynh <danct12@riseup.net>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  8 Jul 2025 21:35:57 +0200
Message-Id: <20250708193600.758772-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250708193600.758772-1-a.fatoum@barebox.org>
References: <20250708193600.758772-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_123606_769484_7EFFAC43 
X-CRM114-Status: GOOD (  10.79  )
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
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] test: update requirement to Labgrid v25.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This gives us better error messages when QEMU startup fails, allows us
to drop the extra_args key and allows suppressing Labgrid
-display/-nographic option fixups.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/boards/emulated.rst | 6 ++++++
 test/Containerfile                | 2 +-
 test/strategy.py                  | 4 ++--
 3 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/emulated.rst b/Documentation/boards/emulated.rst
index 99c55d2051c2..44e78eef7fe1 100644
--- a/Documentation/boards/emulated.rst
+++ b/Documentation/boards/emulated.rst
@@ -27,6 +27,12 @@ Labgrid is used to run the barebox test suite, both on real and emulated
 hardware. A number of YAML files located in ``test/$ARCH`` describe some
 of the virtualized targets that barebox is known to run on.
 
+barebox makes use of recent labgrid features, so you may need to install
+it directly from PyPI instead of your distro's package repositories::
+
+  pipx install pytest
+  pipx inject pytest labgrid
+
 Example usage::
 
   # Run x86 VM runnig the EFI payload from efi_defconfig
diff --git a/test/Containerfile b/test/Containerfile
index 644dc63ad292..fb9bb25bbfc5 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -92,7 +92,7 @@ RUN echo barebox ALL=NOPASSWD: ALL > /etc/sudoers.d/barebox
 
 # install labgrid
 RUN pip3 install -q --no-cache-dir --break-system-packages \
-    git+https://github.com/labgrid-project/labgrid.git@v24.0 && \
+    git+https://github.com/labgrid-project/labgrid.git@v25.0 && \
     ln -s $(which pytest) /usr/local/bin/labgrid-pytest
 
 ENV CROSS_COMPILE_arm=/opt/gcc-${GCC_VERSION}-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
diff --git a/test/strategy.py b/test/strategy.py
index 9c91720646b5..11406b97f5f1 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -13,9 +13,9 @@ from labgrid.strategy import Strategy, StrategyError
 from labgrid.util import labgrid_version
 
 match = re.match(r'^(\d+?)\.', labgrid_version())
-if match is None or int(match.group(1)) < 24:
+if match is None or int(match.group(1)) < 25:
     pytest.exit(f"Labgrid has version v{labgrid_version()}, "
-                f"but barebox test suite requires at least v24.")
+                f"but barebox test suite requires at least v25.")
 
 class Status(enum.Enum):
     unknown = 0
-- 
2.39.5



