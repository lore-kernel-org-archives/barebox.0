Delivery-date: Mon, 13 Mar 2023 14:46:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiVN-0062Vo-N3
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:46:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiVM-0006Z9-W9
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:46:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nR9TSk0RUv+nd3jYUVicJA1X88ccUGDCZL4CWwvtcZI=; b=gjOgMhQppkycN8X7ZMzIXavIo3
	Cld3ba3g+19agJenBo1MrrpuED4vsW9h0TsE6PgxByIo236r67zAaIQCtMdMDbfc+4SgZvHNdB9xT
	RGZle98v4rqWmCL+0eFVn0BrVYFwB5LwEqLMZg/2fQFs8s4MAhhFmyY2mHQiuJdC2svI6OEiUs8lm
	cY6EOMKwNgKWVynUoENMemkrUA0RnWX/fO+3D3xXU70LJjQ6CtQkMYwcWHt/ZqMwkyQkiA7mv6WF7
	PPAZkDQDSBz2qdPr6CwwkgSsQFHTGHwIjJEqgqKkX9Y4ro46vnK5VXS9tbkoCWelbMSU2pTqgSNFb
	/eondoDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiU4-005xyo-Oi; Mon, 13 Mar 2023 13:45:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiR2-005vsJ-EI
	for barebox@bombadil.infradead.org; Mon, 13 Mar 2023 13:41:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=nR9TSk0RUv+nd3jYUVicJA1X88ccUGDCZL4CWwvtcZI=; b=Mef0zdRUtgPU7fdNQr4rmbw3C9
	EZLQ9EonA1yhg7IkxwRBX2eLEExjwO9Mr8Jd2xZQhrE/444YGOmXa4T18BOUmSazCHlmG/dcYvqYf
	xFvtF3bqGItPgR4nMisWV6bIsZj9JqeF7a6XCJRRsGefoeNH95ICInLSIm18iUnkUUfHxmGBpvWkL
	/pBFLLlkrwkMRZNbCEyYbEMjaPdL7QJNbhSNuybiHo/C7qfpaWazfNZVxUXnNnwMxqKWUTwBwm3Ta
	9y9sdeLlR1oSLdgOF3RZgMYlQKLOY5TnVSCK/JNiZbbgE7OO3nHhf25bvdSmS6OAMd2S3W6SaZdca
	uSFiZgLA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pbiQw-001NSs-2z
	for barebox@lists.infradead.org;
	Mon, 13 Mar 2023 13:41:55 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQr-0004N9-To
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:42:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-23-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_134151_145189_5F0C1B37 
X-CRM114-Status: GOOD (  10.86  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 23/23] Documentation: i.MX8M: add EVK QSPI NOR barebox
 installation documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Document the steps required to flash the barebox image to a QSPI NOR
flash. This can be helpful if the user-space wants to update the QSPI
NOR barebox image. These steps can be skipped if barebox is updated by
the qspi bbu-handler.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/boards/imx/nxp-imx8mm-evk.rst | 11 +++++++++++
 Documentation/boards/imx/nxp-imx8mn-evk.rst | 12 ++++++++++++
 Documentation/boards/imx/nxp-imx8mp-evk.rst | 12 ++++++++++++
 3 files changed, 35 insertions(+)

diff --git a/Documentation/boards/imx/nxp-imx8mm-evk.rst b/Documentation/boards/imx/nxp-imx8mm-evk.rst
index f0dfc53ed0..aa70419139 100644
--- a/Documentation/boards/imx/nxp-imx8mm-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mm-evk.rst
@@ -85,5 +85,16 @@ installation to the eMMC boot partition requires special handling:
     then afterwards, the newly written boot partition is activated
     (This is controlled by the barebox ``mmcX.boot`` variable).
 
+The following steps are required to write the image to the QSPI NOR flash:
+
+  - The 32KiB preamble MMC preamble must be stripped.
+
+  - The QSPI NOR partition ``barebox`` must be erased before the stripped
+    image is written. The erase size depends on the stripped image size but
+    always start at offset 0.
+
+  - Write the stripped barebox image to the QSPI NOR partition ``barebox``
+    at offset 0.
+
 The ``barebox_update`` command takes care of this and need just be
 supplied a barebox image as argument.
diff --git a/Documentation/boards/imx/nxp-imx8mn-evk.rst b/Documentation/boards/imx/nxp-imx8mn-evk.rst
index 177fc59c10..597db57eaf 100644
--- a/Documentation/boards/imx/nxp-imx8mn-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mn-evk.rst
@@ -80,5 +80,17 @@ installation to the eMMC boot partition requires special handling:
     start at an offset when booting from eMMC boot partitions, thus the first
     32KiB must be stripped.
 
+The following steps are required to write the image to the QSPI NOR flash:
+
+  - Strip the 32KiB preamble, like it is done for the eMMC boot partition case
+    (see above).
+
+  - The QSPI NOR partition ``barebox`` must be erased before the stripped
+    image is written. The erase size depends on the stripped image size but
+    always start at offset 0.
+
+  - Write the stripped barebox image to the QSPI NOR partition ``barebox``
+    at offset 0.
+
 The ``barebox_update`` command takes care of this and need just be
 supplied a barebox image as argument.
diff --git a/Documentation/boards/imx/nxp-imx8mp-evk.rst b/Documentation/boards/imx/nxp-imx8mp-evk.rst
index 53cdd904ab..cfd1153e15 100644
--- a/Documentation/boards/imx/nxp-imx8mp-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mp-evk.rst
@@ -88,5 +88,17 @@ installation to the eMMC boot partition requires special handling:
     start at an offset when booting from eMMC boot partitions, thus the first
     32KiB must be stripped.
 
+The following steps are required to write the image to the QSPI NOR flash:
+
+  - Strip the 32KiB preamble, like it is done for the eMMC boot partition case
+    (see above).
+
+  - The QSPI NOR partition ``barebox`` must be erased before the stripped
+    image is written. The erase size depends on the stripped image size but
+    always start at offset 0.
+
+  - Write the stripped barebox image to the QSPI NOR partition ``barebox``
+    at offset 0.
+
 The ``barebox_update`` command takes care of this and need just be
 supplied a barebox image as argument.

-- 
2.30.2



