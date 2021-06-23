Delivery-date: Wed, 23 Jun 2021 07:19:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvI0-0005Ih-Bj
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 07:19:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvHy-0007l5-GR
	for lore@pengutronix.de; Wed, 23 Jun 2021 07:19:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+TCvJwkThe/hQHF298ihzYFKURS6VA9WaWeiho27SI=; b=ML8lm8gxd64VqX
	SerJFwlEc0lJlnedoYuVWJ7ysu/odSoRSMxvmcZS7++/p6x1uJ9pwYJNO/2WVJ2OQmdl27FMCXw0V
	sfpKp65MQYjJnJAd8O8jjzUkeMfN4r5k37iD060b3g2wMgLP0kvh3TbqiCHjXcUcgacZydzArWFH7
	LNmdgRvaRmnRDvmsWQKIcui2TfaicnngT0m/vowvMDdJY5Q6k6SiPPYm+oTsxdSAf8bW/zdAGCYty
	RuQIjXQY6/U10e5Mi7PBde+TvklwILTXnbwGgVzfkDjOkwHBB7bMfD+QLkAAPV6s7Ypva6Pa19PaP
	Euu3b6mTW+rZSz6zpB7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvvGh-009N5I-Mq; Wed, 23 Jun 2021 05:17:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvvFl-009MUM-EQ
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 05:16:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFc-0006rR-4j; Wed, 23 Jun 2021 07:16:36 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFb-0000VY-0V; Wed, 23 Jun 2021 07:16:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 07:16:31 +0200
Message-Id: <20210623051632.30253-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210623051632.30253-1-s.hauer@pengutronix.de>
References: <20210623051632.30253-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_221645_583886_98780648 
X-CRM114-Status: GOOD (  16.99  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 16/17] Documentation: Add documentation for device tree
 overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Document the recently gained device tree overlay features.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/devicetree.rst | 37 +++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
index 4be6a1e703..d78394b7aa 100644
--- a/Documentation/user/devicetree.rst
+++ b/Documentation/user/devicetree.rst
@@ -75,3 +75,40 @@ It is important to know that these commands normally work on the internal
 devicetree. If you want to modify the devicetree the kernel is started with
 see the -f options to of_property and of_node. This option will register the
 operation for later execution on the Kernel devicetree.
+
+Device tree overlays
+--------------------
+
+barebox has support for device tree overlays. barebox knows two different trees,
+the live tree and the device tree the kernel is started with. Both can be applied
+overlays to.
+
+Device tree overlays on the live tree
+.....................................
+
+While the live tree can be patched by board code, barebox does not
+detect any changes to the live tree. To let the overlays have any effect, board
+code must make sure the live tree is patched before the devices are instanciated
+from it.
+
+Device tree overlays on the kernel device tree
+..............................................
+
+Overlays can be applied to the kernel device tree before it is handed over to
+the kernel. The behaviour is controlled by different variables:
+
+``global.of_overlay_dir``
+  Overlays are read from this directory. barebox will try to apply all overlays
+  found here if not limited by one of the other variables below. When using
+  bootloader spec this variable will be temporarily overwritten with
+  ``$mountpoint/overlays`` where ``$mountpoint`` is the path where the filesystem
+  containing the bootloader spec entries are located.
+``global.of_overlay_compatible``
+  This is a space separated list of compatibles. Only overlays matching one of
+  these compatibles will be applied. When this list is empty then all overlays
+  will be applied. Overlays that don't have a compatible are considered being
+  always compatible.
+``global.of_overlay_filepattern``
+  This is a space separated list of file patterns. An overlay is only applied
+  when its filename matches one of the patterns. The patterns can contain
+  ``*`` and ``?`` as wildcards. When empty, all files are applied.
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

