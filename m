Delivery-date: Thu, 24 Jun 2021 12:27:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwMa3-0000Kf-Sj
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 12:27:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwMa2-0006j4-29
	for lore@pengutronix.de; Thu, 24 Jun 2021 12:27:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUS/h0C9hzpTLiU7F+yJScmjFDnXG4TMrluX1rbUO1A=; b=DUJlVMXy3C67A2
	2+9UozC6OJzzo1s8wBKFFAR07KdRWpzxe/iz7Wx8bQ6rs/UqHB20aA/ULw4GCvYz4mPO7tjyJc4/N
	hMYFYVlqCi1MkcQ+Xcb28l7xU/6hJN+2LAPLAc6PIZPeyPodLttsKhOC7o1tjX6vQCuZLGAJYijx7
	uuE5ld7f8GNbhdRpS+xjVi0LVcCbnawxwNG0hHld88lGWQkKwb71b/3QAAd8du5SiVJwEEORhXfrr
	2TzUnQt2SszsIrkJckZS8iEHpQ0CDkWNezazY5HfA+H3aoPSyv5XVmN9axVRRb3RjGF8Yb3jh1X5J
	xud/kSXeKCyqOdTP/Wiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwMYI-00E4N6-PE; Thu, 24 Jun 2021 10:25:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwMWR-00E3cn-In
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 10:23:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwMWQ-0005qI-46
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 12:23:46 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwMWP-0001jV-Jc
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 12:23:45 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwMWM-00185h-Hc
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 12:23:42 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 24 Jun 2021 12:23:42 +0200
Message-Id: <20210624102342.269363-8-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624102342.269363-1-m.tretter@pengutronix.de>
References: <20210624102342.269363-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_032347_734729_E8B00B2D 
X-CRM114-Status: GOOD (  15.04  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] Documentation: zynqmp: add some documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add at least some information how Barebox can be used on the ZynqMP and
what is required to create a bootable image.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 Documentation/boards/zynqmp.rst | 40 +++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 Documentation/boards/zynqmp.rst

diff --git a/Documentation/boards/zynqmp.rst b/Documentation/boards/zynqmp.rst
new file mode 100644
index 000000000000..05d41c401dc2
--- /dev/null
+++ b/Documentation/boards/zynqmp.rst
@@ -0,0 +1,40 @@
+Xilinx ZynqMP Ultrascale+
+=========================
+
+Barebox has support as a second stage boot loader for the Xilinx ZynqMP
+Ultrascale+.
+
+Image creation
+--------------
+
+Currently, Barebox only supports booting as a second stage boot loader from an
+SD-card. It relies on the FSBL_ to initialize the base system including sdram
+setup and pin muxing.
+
+The ZynqMP defconfig supports the ZCU104 reference board. Use it to build the
+Barebox image::
+
+   make ARCH=arm64 zynqmp_defconfig
+   make ARCH=arm64
+
+.. note:: The resulting image ``images/barebox-zynqmp-zcu104.img`` is **not** an image
+  that can directly be booted on the ZynqMP.
+
+For a bootable BOOT.BIN image, you also need to build the FSBL_ and a ZynqMP
+TF-A. Prepare these separately using the respective instructions.
+
+Use bootgen_ or ``mkimage -T zynqmpbif`` from the U-boot tools to build the
+final BOOT.BIN image that can be loaded by the ROM code. Check the
+instructions for these tools how to prepare the BOOT.BIN image.
+
+Create a FAT partition as the first partition of the SD card and copy the
+produced BOOT.BIN into this partition.
+
+.. _FSBL: `https://github.com/Xilinx/embeddedsw/`
+.. _bootgen: `https://github.com/Xilinx/bootgen`
+
+Booting Barebox
+---------------
+
+The FSBL loads the TF-A and Barebox, jumps to the TF-A, which will then return
+to Barebox. Afterwards, you can use Barebox as usual.
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

