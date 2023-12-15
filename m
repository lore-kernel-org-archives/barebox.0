Delivery-date: Fri, 15 Dec 2023 13:13:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE743-003bUn-0R
	for lore@lore.pengutronix.de;
	Fri, 15 Dec 2023 13:13:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE743-0002Tw-Dc
	for lore@pengutronix.de; Fri, 15 Dec 2023 13:13:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=khsk8RPefD49Ol+3MtPFoJsmqu2GiOfQwOaNPHDBiGY=; b=xkATmiSRGiZujCBwGcPRGkVAlS
	mp6MW/A9UmAvxrdFJirv3rhKZ9twJvxW32kdxIrNQ5VXfEaPN3n+7juo6cokHVPQXP0CHPXEDdHs6
	SVvlditKDROX9fM7C5bnB6FRWWHz9Wu1p/rb259sDDUrmfHfIDzKWAT4xR4tFI0lw+PiB+Nw8qbpl
	SKolNIAyFzui2flEuIb4cMXDCUM+XLAmhNzUtEtkFtufd89evXOkgvhxdFL+8w7TQgEKa8Uf6LWEL
	vt7XAP9cFtG2Hxvu3+PwY3OxCv0CjQZuCiLFLqX8xwei+OkQShF4Bp0IzBL/NcgR7VoWrzfwMjuaP
	QVmyobVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE72u-003BCJ-0Z;
	Fri, 15 Dec 2023 12:12:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE72o-003BAL-0d
	for barebox@lists.infradead.org;
	Fri, 15 Dec 2023 12:11:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE72m-000287-WE; Fri, 15 Dec 2023 13:11:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE72m-00G18n-JV; Fri, 15 Dec 2023 13:11:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE72m-000EPO-1k;
	Fri, 15 Dec 2023 13:11:52 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Fri, 15 Dec 2023 13:11:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231215-doc-fit-images-for-chainloading-v1-2-9b704facdc3b@pengutronix.de>
References: <20231215-doc-fit-images-for-chainloading-v1-0-9b704facdc3b@pengutronix.de>
In-Reply-To: <20231215-doc-fit-images-for-chainloading-v1-0-9b704facdc3b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_041154_232569_AC7B83E4 
X-CRM114-Status: GOOD (  10.92  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] doc: user: barebox: add chainloading of fit images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This documents an alternate method for chainloading Barebox from U-Boot
by packing the Barebox image and matching device tree into an FIT image.
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



