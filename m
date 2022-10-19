Delivery-date: Wed, 19 Oct 2022 11:13:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol58T-000U8e-Cl
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 11:13:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol58Q-0001TB-RD
	for lore@pengutronix.de; Wed, 19 Oct 2022 11:13:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=U0Q8lzLYL4wxXXONZhEdAt1A0XZu6r6F6rIAtKe9DKA=; b=e7fAD4cVJCSTkCXy6sKJWbL3Zi
	TooskB34bvTeJUlKSK1pHVrLuejnunv6bnneNObU40X9qisUhzQat72aUDW9d3XIHsCSMYEudG6e3
	lVGXyFW2iQmMp0Y4493XG0EzEkx0Iu6kkByGqcOutGz2LPQvWk3JJFYXC0d/zd9RLSLwFCQvA83R3
	wzCCGvCWfFKABSxG/OMUolKYL3bYwrNptBe9UxXdK0Gcd5RkrffeEC21dyuAh9mHUqk4hEfBgI7wP
	+N59bZr4mkzNMYuTNL4Sorv7wMlvN7Sb4VfesVZN2PALWxToe/XOAFsIIhFDVMzZ062ObhXXCe3xI
	kwHcVGpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol56y-00HFRl-Ap; Wed, 19 Oct 2022 09:11:40 +0000
Received: from relay7-d.mail.gandi.net ([2001:4b98:dc4:8::227])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol56t-00HFOt-LH
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 09:11:37 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 164DF20002;
	Wed, 19 Oct 2022 09:11:27 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 19 Oct 2022 11:11:22 +0200
Message-Id: <20221019091122.1713784-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_021135_872418_997E7664 
X-CRM114-Status: UNSURE (   9.26  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] documentation: devicetree: mtd: partition: fix partuuid example
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Having flash@0 in the binding example is misleading, because lookup is
global. Point that out explicitly and modify the example.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/devicetree/bindings/mtd/partition.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/partition.rst b/Documentation/devicetree/bindings/mtd/partition.rst
index 6db54070a991..627b59eda04b 100644
--- a/Documentation/devicetree/bindings/mtd/partition.rst
+++ b/Documentation/devicetree/bindings/mtd/partition.rst
@@ -4,7 +4,7 @@ Representing flash partitions in devicetree
 In addition to the upstream binding, another property is added:
 
 Optional properties:
-- ``partuuid`` : The partition UUID for this partition.
+- ``partuuid`` : The global partition UUID for this partition.
 
 Additionally, barebox also supports partitioning the eMMC boot partitions if
 the partition table node is named appropriately:
@@ -16,7 +16,7 @@ Examples:
 
 .. code-block:: none
 
-  flash@0 {
+  / {
   	partitions {
   		compatible = "fixed-partitions";
   		#address-cells = <1>;
-- 
2.34.1



