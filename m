Delivery-date: Mon, 28 Jun 2021 08:42:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxkyC-0001Tx-Rl
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 08:42:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxkyB-00039x-S0
	for lore@pengutronix.de; Mon, 28 Jun 2021 08:42:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpZp1t1ZiNbnS8PaBoL9oENaQ/GL5q17Q5k3P4gKzAo=; b=esowNKH7ImRORl
	2jv2FsSqWYWHxW1NvxIWDt0A9cr4elGq7iAqHwwN9+cRLQDhoIpyD+kMYyGRVKqn11L4hxYHOSzBb
	SMyn31zJmaqDr9jgnBHr6g7FY8ca8yydl29OQQWYTBRtRr2Rhc4wBtoEsDsDu78DYUPnE01TY7im9
	r46zaihlg4wMvFp+lbPmU1bLjA4bd4VOzp6ph0o7v/HRVYw9sXcTEpy7CJocUadYg5p7yWLGqj1dl
	MaS24rmbUG79Wqc9zaCi1YLI/tZKb0uQPwH++XYVi8PSAtlzhUdmH3kuMQ3DAYgrjzq7WfKKXWhFD
	UQX11ru1e/IFZV2qOixA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxkx3-0073JP-By; Mon, 28 Jun 2021 06:41:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxkwr-0073Dz-Ab
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 06:40:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxkwi-0002ia-3P; Mon, 28 Jun 2021 08:40:40 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxkwh-00070D-RW; Mon, 28 Jun 2021 08:40:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 08:40:35 +0200
Message-Id: <20210628064036.25991-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628064036.25991-1-a.fatoum@pengutronix.de>
References: <20210628064036.25991-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_234049_398592_3981EC78 
X-CRM114-Status: GOOD (  10.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] sandbox: dts: populate $global.machine_id
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

/etc/machine-id is 0444 by default, so it makes sense to use it for
sandbox machine ID. Do so.

Note that the machine ID will be constant, but not equal as barebox
will hash the ASCII representation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/dts/sandbox.dts | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index 5b2cab219e2a..cd0022f777ed 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -13,6 +13,7 @@
 	};
 
 	chosen {
+		barebox,machine-id-path = &machine_id;
 		environment {
 			compatible = "barebox,environment";
 			device-path = &part_env;
@@ -101,6 +102,33 @@
 		};
 	};
 
+	machine-id {
+		compatible = "barebox,hostfile";
+		barebox,filename = "/etc/machine-id";
+		barebox,read-only;
+		reg = <0 0 0 0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				compatible = "nvmem-cells";
+				reg = <0x0 0x20>;
+				label = "nvmem";
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				machine_id: machine-id@0 {
+					reg = <0x0 0x20>;
+				};
+			};
+		};
+	};
+
 	power {
 		compatible = "barebox,sandbox-power";
 		nvmem-cell-names = "reset-source";
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

