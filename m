Delivery-date: Mon, 07 Feb 2022 09:46:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzeq-0085Xk-Lb
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 09:46:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzeo-0001k3-B2
	for lore@pengutronix.de; Mon, 07 Feb 2022 09:46:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aQYed3AHlhtCzxFH6heEScKQq2adp5O/BrRpCyUfj64=; b=L/pJqjHJQjUrj5
	bIby6lVq+I8EcSZ8z8QCBpyejZwNQic5nDqDUQil0PpmFmcsdQ7ql8vkB2rjCDlWKu6errgI+cAPX
	37wVYbtMhSkGPad8/XwGo1XOK9wMuUSclfLztCupEQeMyytq44De1pyJheMYDm+4pnX/aLepXLbbw
	R/Rmrw599tbBhqvJvfIQSFQ6HRNSOmGshPL9wB5hE75bNgzVpJ1nvszYED+VQb7aKkrqnJ4HggaWs
	wMYFtIeeb8urqAtJpiABreCNQf7zmbqn4wtYlPy2DLMllJhUH4l3gH/f6tpVOm6VAnm3efalyzPBR
	kJp7ESvWKILe3d8XkEJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGzdc-009ObM-1R; Mon, 07 Feb 2022 08:44:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGzdW-009OZv-QK
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 08:44:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGzdV-0001SD-HJ; Mon, 07 Feb 2022 09:44:37 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nGzdV-00DoHl-0d; Mon, 07 Feb 2022 09:44:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Feb 2022 09:44:36 +0100
Message-Id: <20220207084436.3291193-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_004438_871276_BFD6F904 
X-CRM114-Status: GOOD (  14.74  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: Describe how to generate a uImage for use with
 bootm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

U-Boot's bootm command doesn't take raw barebox images. Describe how
to generate a uImage from them which then can be started with bootm.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/barebox.rst | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 4abcf79c6d..a890aa4dbe 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -217,7 +217,18 @@ like a Linux kernel that is passed an external device tree. For example:
 For non-DT enabled-bootloaders or other architectures, often the normal barebox
 binaries can also be used as they are designed to be startable second stage
 from another bootloader, where possible. For example, if you have U-Boot running
-on your board, you can start barebox with U-Boot's ``bootm`` command:
+on your board, you can start barebox with U-Boot's ``bootm`` command. The bootm
+command doesn't support the barebox binaries directly, they first have to be
+converted to uImage format using the mkimage tool provided with U-Boot:
+
+.. code-block:: console
+  sh: mkimage -n barebox -A arm -T kernel -C none -a 0x80000000 -d \
+      build/images/barebox-freescale-imx53-loco.img image
+
+U-Boot expects the start address of the binary to be given in the image using the
+``-a`` option. The address depends on the board and must be an address which isn't
+used by U-Boot. You can pick the same address you would use for generating a kernel
+image for that board. The image can then be started with ``bootm``:
 
 .. code-block:: console
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

