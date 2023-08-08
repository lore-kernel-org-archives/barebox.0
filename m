Delivery-date: Tue, 08 Aug 2023 11:27:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJ0J-00CDqB-4f
	for lore@lore.pengutronix.de; Tue, 08 Aug 2023 11:27:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJ0G-0002gQ-VF
	for lore@pengutronix.de; Tue, 08 Aug 2023 11:27:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hzk+IhC9TuZABmFnAKX3hgOgNw1z06446PxVy+zzNbM=; b=aYdBFMoF47tmTk2i9P4nQkAyS/
	6jI32N+ydah4vElwftQ66civ8hMTBAgNRyMtnGJakt925PRBKFQO4i3pB6t98uanBEH90s2HR/hiS
	nkxNGkxLE5s9mBWl3PJ2t+rMcA+8665DgfOaoL+ubbO6VrCowHjdagW4nDscBUQKugk2cEZD3CxxL
	BBhceIZ4VxLO+2+St+mp2AWK1NZ5LEbd3btz6Ml88lP2vxgemIhl2o7ZzmCzKJxpJoKWCOeJw8Cp2
	MbqcYFVO03CVlAjE0Au6ETlHOz0ELwZnp5msIw9DruKwmklw/Vi/+rmxCzNTXL7AN+qXLUSyb1RPm
	EmJxecXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTIz2-0028Ni-1D;
	Tue, 08 Aug 2023 09:26:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTIyw-0028LQ-2v
	for barebox@lists.infradead.org;
	Tue, 08 Aug 2023 09:26:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1qTIyp-0002V2-N2; Tue, 08 Aug 2023 11:26:19 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1qTIyp-001wyn-1r; Tue, 08 Aug 2023 11:26:19 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1qTIyo-008YLk-2L;
	Tue, 08 Aug 2023 11:26:18 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  8 Aug 2023 11:26:17 +0200
Message-Id: <20230808092617.2037996-4-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230808092617.2037996-1-rhi@pengutronix.de>
References: <20230808092617.2037996-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_022626_942845_01456080 
X-CRM114-Status: GOOD (  20.81  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	WEIRD_QUOTING autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] doc: user: state: document backend references using GPT/MBR partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Explain first how to define the state node and variable set, and then
go into detail about the different variations of backend definitions,
including the options of referring to a backend partition by its
partuuid or letting barebox auto-detect it by its Type GUID.

Fixes: 776714d9570253c46635 (2023-06-07, "state: allow lookup of barebox state partition by Type GUID")
Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 .../devicetree/bindings/mtd/partition.rst     |   2 +
 Documentation/user/state.rst                  | 110 ++++++++++++++----
 2 files changed, 90 insertions(+), 22 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/partition.rst b/Documentation/devicetree/bindings/mtd/partition.rst
index 0f64dee3c3b3..0ba117dffcd3 100644
--- a/Documentation/devicetree/bindings/mtd/partition.rst
+++ b/Documentation/devicetree/bindings/mtd/partition.rst
@@ -1,3 +1,5 @@
+.. _devicetree_binding_mtd_partition:
+
 Representing flash partitions in devicetree
 ===========================================
 
diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index 7f4547f75507..9054a3792337 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -540,27 +540,14 @@ content, its backend-type and *state* variable layout.
 SD/eMMC and ATA
 ###############
 
-The following devicetree node entry defines some kind of SD/eMMC memory and
-a partition at a specific offset inside it to be used as the backend for the
-*state* variable set.
-
-.. note::
+*state* node definition
+^^^^^^^^^^^^^^^^^^^^^^^
 
-   If the medium has an on-disk partition table, the device tree partition
-   must either be identical in start offset and size to the MBR/GPT partition
-   or it must reside in non-partitioned space. If this constraint is not
-   satisfied, barebox will emit an error message and refuse to register
-   the device tree partition.
-
-.. code-block:: text
-
-	backend_state_sd: part@100000 {
-		label = "state";
-		reg = <0x100000 0x20000>;
-	};
-
-With this 'backend' definition it's possible to define the *state* variable set
-content, its backend-type and *state* variable layout.
+These storage types have integrated wear-levelling and can be addressed on the
+byte level. The *raw* backend type is suitable for this situation.
+We will explain the possible variants of referring to a backend below,
+but an exemplary definition of the *state* layout and variable set will look
+as follows:
 
 .. code-block:: text
 
@@ -584,8 +571,87 @@ content, its backend-type and *state* variable layout.
 		};
 	};
 
-If the *state* variable set is set to be located in a GPT partition, use
-``4778ed65-bf42-45fa-9c5b-287a1dc4aab1`` as the partition type GUID.
+
+Backend definition
+^^^^^^^^^^^^^^^^^^
+
+SD/eMMC and ATA devices usually have an on-disk partition table (MBR or GPT),
+which Barebox will parse when a block device is probed.
+There are multiple options to refer to these partitions as the *state* backend
+(i.e. the ``&backend_state_sd`` reference in the example above).
+
+Referencing the partition by GUID
+"""""""""""""""""""""""""""""""""
+
+When using GPT, the backend reference may point directly to a block device's
+device tree node. In this case Barebox will search for a GPT partition with Type
+UUID ``4778ed65-bf42-45fa-9c5b-287a1dc4aab1``, and if that partition exists,
+Barebox will use it as the *state* backend.
+
+Here is an abridged example:
+
+.. code-block:: text
+
+	/ {
+		soc {
+			bus@2100000 {
+				mmc1: mmc@2190000 {
+					// … MMC device definition …
+				};
+		};
+
+		aliases {
+			state = &state_sd;
+		};
+
+		state_sd: state {
+			backend = <&mmc1>;
+			// … rest of definition as per above section
+		};
+	};
+
+This is the recommended approach for device tree enabled system with state
+located on SD or eMMC.
+
+Referencing the partition by *partuuid*
+"""""""""""""""""""""""""""""""""""""""
+
+For systems where block devices are not probed from device tree (e.g. with
+storage on ATA or PCI buses), the *state* partition can be looked up globally
+by specifying its *partuuid*. See the documentation for the :ref:`partuuid
+device tree binding <devicetree_binding_mtd_partition>` for more details.
+
+The *partuuid* is expected to be unique across all block devices.
+
+Referencing the partition by offset
+"""""""""""""""""""""""""""""""""""
+
+As a fallback it is still possible to refer to the *state* partition by
+specifying its offset and size, like in the examples for NAND and NOR flash
+above:
+
+.. code-block:: text
+
+	&mmc1 {
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			[…]
+			backend_state_sd: partition@100000 {
+				label = "state";
+				reg = <0x100000 0x20000>;
+			};
+		};
+	};
+
+.. note::
+
+   If the medium has an on-disk partition table, the device tree partition
+   must either be identical in start offset and size to the MBR/GPT partition
+   or it must reside in non-partitioned space. If this constraint is not
+   satisfied, barebox will emit an error message and refuse to register
+   the device tree partition.
 
 SRAM
 ####
-- 
2.39.2



