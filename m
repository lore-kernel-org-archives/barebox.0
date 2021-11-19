Delivery-date: Fri, 19 Nov 2021 10:56:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0dA-00012V-D1
	for lore@lore.pengutronix.de; Fri, 19 Nov 2021 10:56:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0d9-0006Sn-Fg
	for lore@pengutronix.de; Fri, 19 Nov 2021 10:56:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yu4YRFcOJLJdAIlSuRictv1xCBINGFtbAbU5rGL5fCY=; b=bHpQ694MAtFlE/
	XhYav8tvbk81MEgIVmqJqf5X+5l6Za44RPOTQ2lK9+nEZXva5PB+Z/VQxYxMLOEV5MURvKFsRtskc
	qHu8HvrRJd0+ZUx4RgEx6bc+erJkMtFU7pD08VRf1l91RQmf4qPP/rbHByEwAt+fAF3GpUPR3nie4
	vovbR3xkr/6EIPiw4Z2sA13/jl2oNqCCpOBz+pX+IlkQD22mcnBa1LjWEOH0zhbLiXlBv2P7P9HDN
	uQxhv9DnKq/zkCaq5N89S5rodOnHG32qLCwBbN7cqTFRfA2QtP6Hw0D2eEWho9L45Ynpr8lfhw2+x
	MBJpbpsg6HYL63zhHSxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo0bq-00A2e6-FV; Fri, 19 Nov 2021 09:55:06 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo0bd-00A2ZM-0Y
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 09:54:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GHG9N3qrhulwjB9AnjxyvY+hHZURIO8YpXRiZEBoDeA=; b=oMRzavGGeeqFHGy/j8InxAFL5h
 2yEqpLihB2MFOq5DsJnVxRvpVzaWoR4hv43F8b7g9vhj5I9V7zSFUVFVvHwseOmxAormSbbwP51gw
 rOGD2+LwBN9BazNVtcfYSRC1rJ3YZV6pGXLV+nVMT4fS1/FX8IqRh6RLxgt/38dXcL5wvEu0DLZbz
 8WgE9cfTll/cmI94tjL9J+JEiLcpAUZ0oY7dZ4jzCItGrbFUE/Csjg/ovwLyjhfjyl36QovMwknJW
 Ni/fVqRM9vrzILC52/TEFAb5qHub3hqUb/2fOq7dYDrKNOnqPuvu5H6fGOlxSkQVu9uWpmZ1ZOLGX
 4fT7PFnA==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:53856
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1mo0bM-00E4Y4-CB
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 10:54:44 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Fri, 19 Nov 2021 10:54:29 +0100
Message-Id: <20211119095429.1905473-7-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211119095429.1905473-1-andrej.picej@norik.com>
References: <20211119095429.1905473-1-andrej.picej@norik.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_015453_470011_BAEA1FE1 
X-CRM114-Status: UNSURE (   7.80  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/6] documentation: regulator: add allow-dummy-supply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add "barebox,allow-dummy-supply" property documentation.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
Changes in v2:
- adapt documentation to changed usage
---
 .../bindings/regulator/regulator.rst          | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/regulator.rst

diff --git a/Documentation/devicetree/bindings/regulator/regulator.rst b/Documentation/devicetree/bindings/regulator/regulator.rst
new file mode 100644
index 000000000..9afc020ac
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/regulator.rst
@@ -0,0 +1,35 @@
+Voltage/Current Regulators
+==========================
+
+In addition to the upstream bindings, another property is added:
+
+Optional properties:
+- ``barebox,allow-dummy-supply`` : A property to allow usage of dummy power
+  regulator. This can be added to regulator nodes, whose drivers are not yet
+  supported. It will rely on regulator reset defaults and use of dummy regulator
+  instead.
+
+Examples:
+
+.. code-block:: none
+
+  pmic@58 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pmic>;
+	compatible = "dlg,da9063";
+	reg = <0x58>;
+
+	regulators {
+		barebox,allow-dummy-supply;
+
+		vddcore_reg: bcore1 {
+			regulator-min-microvolt = <730000>;
+			regulator-max-microvolt = <1380000>;
+		};
+
+		vddsoc_reg: bcore2 {
+			regulator-min-microvolt = <730000>;
+			regulator-max-microvolt = <1380000>;
+		};
+	}
+  }
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

