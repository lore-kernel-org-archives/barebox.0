Delivery-date: Mon, 15 Apr 2024 11:15:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwIQy-001lDO-1v
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 11:15:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwIQw-0001yx-0Q
	for lore@pengutronix.de; Mon, 15 Apr 2024 11:15:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=T80/0xlyk1QtnnFlJaQj2/Q31/q51m3OO/rCQQxxG+c=; b=W34jqsO/qqO/9zHDlhal1bhNNJ
	KqgRYBw7hpF/3kONUsnfWNRbQzhDFoaAzr/FkJgjAN1gdnMMMCindZtZDmjQ6MKbioM0THRXsa4ll
	+Xz8YrrDfY1Z3ZH5+VUcXMEcBWrywSZR/8uATAMrJTfY9fPkDlwoLwkWORPU0oUhcmib/XNXGn5x4
	gZAZ7kmPCgGG2eUV1P3SHepGt0Yp9xy6Mqz3ZAX/zh6tif7VEVmZgjgzgbSFQWu0RN+GIKGeZAhDn
	1IpmXgpNu4VwqywivdddPq7nh0JgWQHCr4KwUM0d1ODFxBDnCwSEsBZYJQqJD+waB9qUG0fjF7EHo
	kFPWYgkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwIQQ-00000007fbI-3Ws1;
	Mon, 15 Apr 2024 09:14:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwIQN-00000007fas-4B2d
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 09:14:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwIQM-0001GZ-B9; Mon, 15 Apr 2024 11:14:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwIQL-00COix-Ut; Mon, 15 Apr 2024 11:14:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwIQL-00G2rI-2o;
	Mon, 15 Apr 2024 11:14:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 11:14:48 +0200
Message-Id: <20240415091448.3824223-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_021452_155267_3909CCFA 
X-CRM114-Status: UNSURE (   8.70  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] Documentation: aarch64-qemu-virt: add name of defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit d00b07dd14bc ("ARM: Remove qemu_virt64_defconfig") dropped the
defconfig in favor of multi_v8_defconfig, but missed updating the
documentation. Remedy this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/aarch64-qemu-virt.rst | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/aarch64-qemu-virt.rst b/Documentation/boards/aarch64-qemu-virt.rst
index 42e7d00bfef6..8bf590a7a831 100644
--- a/Documentation/boards/aarch64-qemu-virt.rst
+++ b/Documentation/boards/aarch64-qemu-virt.rst
@@ -1,8 +1,11 @@
 Aarch64 Qemu virt
 =================
 
-Besides a number of physical ARM64 targets, barebox also supports a
-``qemu-virt64`` board.
+Besides a number of physical ARM64 targets, barebox also supports the
+``qemu-virt64`` board in the generic ``multi_v8_defconfig``::
+
+ make multi_v8_defconfig
+ make
 
 Running barebox on QEMU aarch64 virt machine
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- 
2.39.2



