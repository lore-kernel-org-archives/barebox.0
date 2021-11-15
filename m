Delivery-date: Mon, 15 Nov 2021 14:04:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbef-0000Bv-GC
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 14:04:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbee-00076L-HG
	for lore@pengutronix.de; Mon, 15 Nov 2021 14:04:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0qlSZFvO0kRl18QEoOS9twYwHN+3fEeYkVUGAYcmyg=; b=pHrN4wzu1Ezpuq
	LU6Fe84qmBrYsZ9CQkEx9qqDzojQFXCG3IT9WKkise4/MwLe5M5Il/cr66Vk7etCzFlc52QykHzuP
	WhkQjhirUsgYTd29Bo9h+GEv78cKbl1gzdY0r0reU3/HQNzk/ozQbPzW9iQjRTGVue30ptV9eYABg
	BjehZtp2vsGYcOuDrBuKDNH6FStPxuDb0oRKifmNq8NgQ3r3V+XKMEMG2fdy5CTG6hA0DE1y9qwpo
	qtW0HVOSv4A4wneQbEaLuve2len5IHq5+MjihAncPBR6P4B6kd7Za2g4L/pYa9ZZLoWYf8XOvAONh
	lwLr4nJsth9WqL4cmePg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmbd3-00FZDj-Va; Mon, 15 Nov 2021 13:02:34 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmbct-00FZAA-Ag
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 13:02:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sHRRXdZY9qLrfbqZ5U+CtTT3bLcT+4wVe2GODs9ey40=; b=MDO7bV1eGMo3CxrCC6Mqi1Ihew
 cZTvfLOJgtBia59lf82tXpQP3cOMRnRAKz1zDj83nNAxyCl3cNB+Tksa9NO0eay+f1Pmz12nmuZ2K
 TkO0EFf/Pt0gBUtWTUz3+DwjymYPF7vn/w/7oUQ+XMaRVi/qWyir9V4ei6RDfvjNPdfZjoJ7ZRfwR
 8dePZU3dzDh08chBpMjGhCrH0Wxqjs7eJpNSFmNSN+lTA2emwpU3QGPi8iEWun30xnNoZVb+OTda+
 8NA1CAGae0GN6cjlORKK/e+KBvFH1khmUsuRl+sL7UBsbu6TOzes+VKuqOfcXDR+FsW73l2pU2l8g
 InWCcMyA==;
Received: from [89.212.21.243] (port=42168 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1mmbci-00B8Ey-R0; Mon, 15 Nov 2021 14:02:12 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Cc: Y.Bas@phytec.de,
	s.riedmueller@phytec.de
Date: Mon, 15 Nov 2021 14:02:08 +0100
Message-Id: <20211115130208.619443-6-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211115130208.619443-1-andrej.picej@norik.com>
References: <20211115130208.619443-1-andrej.picej@norik.com>
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
X-CRM114-CacheID: sfid-20211115_050223_723016_458AA947 
X-CRM114-Status: UNSURE (   6.48  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] documentation: regulator: add dummy-supply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add "barebox,allow-dummy-supply" documentation.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 .../bindings/regulator/regulator.rst          | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/regulator.rst

diff --git a/Documentation/devicetree/bindings/regulator/regulator.rst b/Documentation/devicetree/bindings/regulator/regulator.rst
new file mode 100644
index 000000000..4c7f70295
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/regulator.rst
@@ -0,0 +1,31 @@
+Voltage/Current Regulators
+==========================
+
+In addition to the upstream bindings, another property is added:
+
+Optional properties:
+- ``barebox,allow-dummy-supply`` : A property to allow usage of dummy power
+  regulator. This can be added to nodes, whose power is supplied by regulators,
+  which drivers are not yet supported. It will rely on regulator reset default
+  and use dummy regulator instead.
+
+Examples:
+
+.. code-block:: none
+
+  &usdhc3 {
+  	#address-cells = <1>;
+  	#size-cells = <1>;
+  
+  	barebox,allow-dummy-supply;
+  
+  	partition@0 {
+  		label = "barebox";
+  		reg = <0x0 0xe0000>;
+  	};
+  
+  	partition@e0000 {
+  		label = "barebox-environment";
+  		reg = <0xe0000 0x20000>;
+  	};
+  };
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

