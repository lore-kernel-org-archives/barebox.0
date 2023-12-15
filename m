Delivery-date: Fri, 15 Dec 2023 14:45:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE8V7-003e1z-02
	for lore@lore.pengutronix.de;
	Fri, 15 Dec 2023 14:45:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE8V7-0000Sk-8N
	for lore@pengutronix.de; Fri, 15 Dec 2023 14:45:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rJMNd0FA24nFAeDrJv6JsB7wGKOSpJ7Q+JMERmj16zc=; b=2BJp4uug/NgGdgWFarb+CpxmMg
	gzO9e8v3RTKz7U90IIrMWIIS36BxTYNKi+0++Xuerk2vmsPf8wuM82AlcqkZcvT5/4VpsbnwMini/
	N9k8kBUCs0E5WhA5Oyt4zwf0ifTVPrLmUOs6Tnmz7pE1zUkqIRTwk/MRxOQjOkTokiMuYtPwF3ZDu
	OgNbyacVkhTEx9jteIhgRmXA1dkvdCfcfe3IyY5A5kd+fDcldbUPnnEorAsWvWRViMPMwIUOpIhKB
	gXTFsX5p3Y08iott1pFYoq27yCRqEvg2U1GTHXYn/nrKMlHKGjVe9QWpCZy97X3a5bVYr9yC5R1LH
	GYQ00Zkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE8U2-003PVY-2E;
	Fri, 15 Dec 2023 13:44:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE8Tz-003PUa-2L
	for barebox@lists.infradead.org;
	Fri, 15 Dec 2023 13:44:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE8Tq-00009l-Is; Fri, 15 Dec 2023 14:43:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE8Tq-00G2Xu-64; Fri, 15 Dec 2023 14:43:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE8Tq-000Uur-0S;
	Fri, 15 Dec 2023 14:43:54 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Fri, 15 Dec 2023 14:43:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231215-doc-fit-images-for-chainloading-v2-2-2fa359eee535@pengutronix.de>
References: <20231215-doc-fit-images-for-chainloading-v2-0-2fa359eee535@pengutronix.de>
In-Reply-To: <20231215-doc-fit-images-for-chainloading-v2-0-2fa359eee535@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_054403_763130_C0BE01B8 
X-CRM114-Status: GOOD (  11.14  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] doc: user: barebox: add chainloading of fit images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This documents an alternate method for chainloading Barebox from U-Boot
by packing the Barebox image and matching device tree into an FIT image.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/barebox.rst | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index f4e600bde0..ea4db28d08 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -215,6 +215,32 @@ like a Linux kernel that is passed an external device tree. For example:
   U-Boot: bootz $kernel_addr - $fdt_addr # On 32-bit ARM
   U-Boot: booti $kernel_addr - $fdt_addr # for other platforms
 
+Another option is to generate a FIT image containing the generic DT image and a
+matching device tree with ``mkimage``:
+
+.. code-block:: console
+  sh: mkimage --architecture arm \
+      --os linux \
+      --type kernel \
+      --fit auto \
+      --load-address $kernel_addr_r \
+      --compression none \
+      --image images/barebox-dt-2nd.img \
+      --device-tree arch/${ARCH}/dts/my-board.dtb \
+      barebox-dt-2nd.fit
+
+This FIT image can then be loaded by U-Boot and executed just like a regular
+Linux kernel:
+
+.. code-block:: console
+  U-Boot: tftp $fit_addr barebox-dt-2nd.fit
+  U-Boot: bootm $fit_addr
+
+Make sure that the address in ``$fit_addr`` is different from the
+``$kernel_addr_r`` passed to ``mkimage`` as the load address of the Kernel
+image. Otherwise U-Boot may attempt to overwrite the FIT image with the barebox
+image contained within.
+
 For non-DT enabled-bootloaders or other architectures, often the normal barebox
 binaries can also be used as they are designed to be startable second stage
 from another bootloader, where possible. For example, if you have U-Boot running

-- 
2.39.2



