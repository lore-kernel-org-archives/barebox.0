Delivery-date: Mon, 11 Sep 2023 14:25:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffyZ-00BTxj-5i
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:25:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffyW-00035g-7g
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:25:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JNIlZ/onHBxNih46dj9vbFC+0NH5XZ/NO/eybMuIMSc=; b=j7zjACH3xg4PmE
	ncsHzc8aocjG+ZNdJvFabte0PiejvU9qB6lVfUOZBnr5HTu2U7NRYGe4jUV/YilsBW8SlDynbvLVo
	bVl0evFSlj4vcpu3AWcAg1AlDavs3wKQV3swcxcitf9QF8CY8qN/gjZbCIIyvLuH3FF4DQz84Ic8F
	IWD3pojJnkU7Wd//04Z55j0Q4t+vVf7dB9XNshspnAQI1C9BhnvsZp/J4v715dV75e5blYmRcykmh
	XmkqrpjNlOcUqtg/S/CzEollWygJEfCmJL7NW6yhfNHL67rYE01bkCTHGaIjfWr5LmA1fnp7wKsPE
	MmU0MLUNy5XP5Mo6sWlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qffxT-000Trw-0R;
	Mon, 11 Sep 2023 12:24:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qffxQ-000TrZ-0g
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:24:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qffxN-0002tO-VS; Mon, 11 Sep 2023 14:23:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qffxN-005Xub-J9; Mon, 11 Sep 2023 14:23:57 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qffxN-00BMqS-01;
	Mon, 11 Sep 2023 14:23:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 11 Sep 2023 14:23:56 +0200
Message-Id: <20230911122356.2709296-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_052400_266693_A8260C9D 
X-CRM114-Status: GOOD (  10.25  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, jzi@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: dt-bindings: ocotp: deprecate barebox,provide-mac-address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While we'll continue to support barebox,provide-mac-address, new boards
should prefer using the upstream NVMEM binding for describing the MAC address.

Add an example to the documentation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../bindings/misc/fsl,imx-ocotp.rst           | 25 ++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
index 202bb3aa07ef..1c45267b1b58 100644
--- a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
+++ b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
@@ -6,13 +6,14 @@ Required properties:
 * ``compatible``: ``fsl,imx6q-ocotp``
 * ``reg``: physical register base and size
 
-Optional properties:
+Deprecated properties:
 
 * ``barebox,provide-mac-address``: Provide MAC addresses for Ethernet devices. This
   can be multiple entries in the form <&phandle regofs> to assign a MAC
-  address to an Ethernet device.
+  address to an Ethernet device. This has been deprecated in favor or the upstream
+  nvmem cell binding.
 
-Example:
+Legacy example:
 
 .. code-block:: none
 
@@ -21,3 +22,21 @@ Example:
   	reg = <0x021bc000 0x4000>;
   	barebox,provide-mac-address = <&fec 0x620>;
   };
+
+Upstream alternative:
+
+.. code-block:: none
+
+  &ocotp1 {
+  	#address-cells = <1>;
+  	#size-cells = <1>;
+
+  	fec_mac_addr: mac-addr@88 {
+  		reg = <0x88 6>;
+  	};
+  };
+
+  &fec {
+  	nvmem-cells = <&fec_mac_addr>;
+  	nvmem-cell-names = "mac-address";
+  };
-- 
2.39.2



