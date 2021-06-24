Delivery-date: Thu, 24 Jun 2021 10:54:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL7t-0007FK-2C
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:54:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL7q-0001Y1-L7
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:54:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30ks9vmZ4ynRLdgyNw8Kpw/29dBFL+XVqkcBMpBDUvA=; b=XTBlZpLJypbqEb
	qbAzwi219JAY18/Vo91zvpfoUrp2zhE3aTw13E1J84mORBku7HYpsW3IYhlSBsllJIbyb/x6htpwO
	tSD9eSfj5n5NaKF9KZFegYnAWX/ZtawFZmIdfC7SetUQ7nbdtY02ZQ5ErwTOqVP9FhwRitLL7jdmb
	E5EWfEg8oAb8yJ3cZoJJQNVipXOf2C8kcsK1lMLAiUP2rnJdjX+oJAGxGwgLc8W6ATwYct2mji3fv
	IAhJaUrOv1C0b3KOSqfhst2Ip60WTkdYzW8kU/eeh/Vvez7cyLM5+zAGRckxU//NVqygkowrYznW4
	qCF119Yda2tB1Dhbfybg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwL6Z-00DXY4-IO; Thu, 24 Jun 2021 08:52:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwL63-00DXFX-8d
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:52:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL61-0000sV-Hv; Thu, 24 Jun 2021 10:52:25 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000cT-E0; Thu, 24 Jun 2021 10:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 24 Jun 2021 10:52:22 +0200
Message-Id: <20210624085223.14616-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624085223.14616-1-s.hauer@pengutronix.de>
References: <20210624085223.14616-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_015227_472846_B97B34EE 
X-CRM114-Status: GOOD (  18.54  )
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
Subject: [PATCH 17/18] Documentation: Add documentation for device tree
 overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Document the recently gained device tree overlay features.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/devicetree.rst | 43 +++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
index 4be6a1e703..91afffdcda 100644
--- a/Documentation/user/devicetree.rst
+++ b/Documentation/user/devicetree.rst
@@ -75,3 +75,46 @@ It is important to know that these commands normally work on the internal
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
+``global.of.overlay.dir``
+  Overlays are read from this directory. barebox will try to apply all overlays
+  found here if not limited by one of the other variables below. When the path
+  given here is an absolute path it is used as is. A relative path is relative
+  to ``/`` or relative to the rootfs when using bootloader spec.
+``global.of.overlay.compatible``
+  This is a space separated list of compatibles. Only overlays matching one of
+  these compatibles will be applied. When this list is empty then all overlays
+  will be applied. Overlays that don't have a compatible are considered being
+  always compatible.
+``global.of.overlay.filepattern``
+  This is a space separated list of file patterns. An overlay is only applied
+  when its filename matches one of the patterns. The patterns can contain
+  ``*`` and ``?`` as wildcards. The default is ``*`` which means all files are
+  applied.
+``global.of.overlay.filter``
+  This is a space separated list of filters to apply. There are two generic filters:
+  ``filepattern`` matches ``global.of.overlay.filepattern`` above, ``compatible`` matches
+  ``global.of.overlay.compatible`` above. The default is ``filepattern compatible``
+  which means the two generic filters are active. This list may be replaced or
+  supplemented by board specific filters.
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

