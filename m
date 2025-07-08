Delivery-date: Tue, 08 Jul 2025 22:09:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZEcf-00FTJ6-1c
	for lore@lore.pengutronix.de;
	Tue, 08 Jul 2025 22:09:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZEce-0002FK-Rd
	for lore@pengutronix.de; Tue, 08 Jul 2025 22:09:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=emtfT5PIffEH5zA559t/qdNfhzs4hwz7H+tt50RFnM0=; b=VUYHX99jGglJxOr7yKKakzkKBK
	/1e0+qzgF/zUvXl2hjMIPMog7LxU+WXpIDVXdPBlXJt+EXf4uVgJ7IqL0v3z7xMi3oq5cn/Fpd/YG
	WA3XiQkIJAWhotmDeRNzsaHeTplwcMgwdLLfgvNvoOoHWoLhvTogeEVbz9pYptGuAdlZovXR6/oxw
	4agEmGAH0SrIAhdDGSO5b6uFH2JXcmXU/45cng8iQjB/h6banRoaX0md/LBf33TsJUeHvC9ql5xsy
	V9QdVgv8yJTHVQ/lSmeSAbP550FgSLSU/dwYwWTmTrc4/jnQXgxl3hnETFBpOdCw5VcmuHCMdjgbf
	8mtOeICA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEc4-00000006SlY-3b0C;
	Tue, 08 Jul 2025 20:08:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZE6o-00000006M33-30OS
	for barebox@lists.infradead.org;
	Tue, 08 Jul 2025 19:36:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uZE6l-0008Qx-D1; Tue, 08 Jul 2025 21:36:03 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Dang Huynh <danct12@riseup.net>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  8 Jul 2025 21:35:59 +0200
Message-Id: <20250708193600.758772-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250708193600.758772-1-a.fatoum@barebox.org>
References: <20250708193600.758772-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_123606_757369_7838C1A8 
X-CRM114-Status: UNSURE (   9.31  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] test: document pytest --env and --fs options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These two options are really useful to avoid needless typing in QEMU by
making files and environment variables available to barebox from outside.

Document them outside of the pytest --help text as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/boards/emulated.rst | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/boards/emulated.rst b/Documentation/boards/emulated.rst
index 44e78eef7fe1..602def560120 100644
--- a/Documentation/boards/emulated.rst
+++ b/Documentation/boards/emulated.rst
@@ -59,6 +59,18 @@ more easily::
   # Run tests and pass a block device (here /dev/virtioblk0)
   pytest --lg-env test/arm/virt@multi_v8_defconfig.yaml --blk=rootfs.ext4
 
+For testing, the QEMU fw_cfg and virtfs support is particularly useful::
+
+  # inject boot.sh file in working directory into barebox environment
+  # at /env/boot/fit and set /env/nv/boot.default to fit
+  pytest --lg-env test/arm/virt@multi_v8_defconfig.yaml \
+     --env nv/boot.default=fit --env boot/fit=@boot.sh
+
+  # make available the host's local working directory in barebox as
+  # /mnt/9p/host
+  pytest --lg-env test/arm/virt@multi_v8_defconfig.yaml \
+     --fs host=.
+
 For a complete listing of possible options run ``pytest --help``.
 
 MAKEALL
-- 
2.39.5



