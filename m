Delivery-date: Fri, 17 Feb 2023 18:32:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4b3-00AI4L-Vo
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:32:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4b2-0004sA-Sg
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:32:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RfyC7vwdk0zA65J+cReDhG4ekO9SzgkV75U/+sMN3aU=; b=PnBhlQOtS3Ui9jVA8/f3Uk93xj
	B/C7+Q3Z7nbOE/dMUC7VylI6Hbu4FMBLpaqUiDnPLEcWScW2hK7dVunYgQdPaKGVcSlF1g5BPJCWF
	ssEXhSiJkXt3sEB5e3T3lXHXHxXIPFHhjmuzccgFpXr00yuyt+MqBsh1pC28Oc9Re3aN2DnH6nHeV
	dZMhnH4j7LZRFjgJkbG2t+nOWLrlA1BQnKxNezyuo8JvYqHhkAwy5T7hr/pjcVZooq+WHJMPIrZmk
	rL/pbh8fiyIoyABAL0XfsalGSvx0lGf4nz1fWr1jZ1vmjiZNdzSJnK9531NJaXdybZVLgqn0yDD8r
	8eGZRfAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4aD-00FFbN-QN; Fri, 17 Feb 2023 17:31:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zb-00FFGW-TL
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Za-0004Dc-Mt; Fri, 17 Feb 2023 18:31:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZY-005dTp-Rp; Fri, 17 Feb 2023 18:31:02 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZW-007iyB-3f; Fri, 17 Feb 2023 18:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:54 +0100
Message-Id: <20230217173057.1839835-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_093103_978458_ED4B940B 
X-CRM114-Status: GOOD (  10.92  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 17/20] ARM: dts: i.MX: delete now renamed memory nodes as well.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Upstream DTs that list memory size would probably use the new style of
having unit addresses behind the memory bank. Thus remove that as well,
if specified.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx7d-ddrc.dtsi  | 6 ++++--
 arch/arm/dts/vf610-ddrmc.dtsi | 4 +++-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx7d-ddrc.dtsi b/arch/arm/dts/imx7d-ddrc.dtsi
index b4cd597be900..875fff690b4d 100644
--- a/arch/arm/dts/imx7d-ddrc.dtsi
+++ b/arch/arm/dts/imx7d-ddrc.dtsi
@@ -1,10 +1,12 @@
 /*
  * Include file to switch board DTS form using hardcoded memory node
- * to dynamic memory size detection based on DDR controller settings
+ * (if specified) to dynamic memory size detection based on DDR
+ * controller settings
  */
 
 / {
 	/delete-node/ memory;
+	/delete-node/ memory@80000000;
 };
 
 &aips2 {
@@ -12,4 +14,4 @@
 		compatible = "fsl,imx7d-ddrc";
 		reg = <0x307a0000 0x10000>;
 	};
-};
\ No newline at end of file
+};
diff --git a/arch/arm/dts/vf610-ddrmc.dtsi b/arch/arm/dts/vf610-ddrmc.dtsi
index 772131ec28a1..44d933b3e97e 100644
--- a/arch/arm/dts/vf610-ddrmc.dtsi
+++ b/arch/arm/dts/vf610-ddrmc.dtsi
@@ -1,10 +1,12 @@
 /*
  * Include file to switch board DTS form using hardcoded memory node
- * to dynamic memory size detection based on DDR controller settings
+ * (if specified) to dynamic memory size detection based on DDR
+ * controller settings
  */
 
 / {
 	/delete-node/ memory;
+	/delete-node/ memory@80000000;
 };
 
 &aips1 {
-- 
2.30.2



