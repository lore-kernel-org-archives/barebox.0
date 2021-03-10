Delivery-date: Wed, 10 Mar 2021 14:31:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyvX-0001Vh-EP
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:31:03 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyvV-0004nE-1T
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:31:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H+TCvJwkThe/hQHF298ihzYFKURS6VA9WaWeiho27SI=; b=bYqdpyuqNzZKNwuXDB11O+D/R
	yxaZVx12gqKKdlTF67ZV3h+h789LecZ9Bbl9meOM8J1Kx0zGXC0w6sGUJtk3UhFCHkhk2Mjc8AmpC
	uekxv1kvPstrhBHJv3SbY6A49fUQAN+0RlMPzBj5O6LDOLwYV2vNUNwM7cBNNusbFPDkEKR3IJCKh
	x4Vrse7bmCjwYx7+g3ouxLihWKtvzGSbMqeInZMtxiHNDJsJRkX4QvCY35HvrM6iY6mAnxJ72WXZS
	6lIP3KgBvKehAvURrpWOpA0VLuvri7UZmcp+W+HtrAypLFeF13snazfapAfLU0Rpw7jGK1X22pus6
	3FNfuwfmg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJyuH-006vQH-RA; Wed, 10 Mar 2021 13:29:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJytG-006usO-IU
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fx-Rc; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006cZ-O2; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:28 +0100
Message-Id: <20210310132829.7662-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132842_764200_1BF25685 
X-CRM114-Status: GOOD (  17.24  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
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

