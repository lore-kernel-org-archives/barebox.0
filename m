Delivery-date: Fri, 19 Dec 2025 11:15:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWW-00DAGL-36
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:15:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWV-0002Vd-TE
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:15:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRSXJEuYN4DiyFjuq88mcfD6iYCF0blhcaK7FlEOn/Q=; b=DofIcEqzEmXVMR
	R+dpL4vPGlwGzNAPOYoWYi3xz3ugjxF2gOKaZjNNYf38eEP1p+PYOS/6kilouartIDHEOvpfKR/Zm
	UuvI+8K3UiZmkp1zCWw50F8iNfNwATze2iRAuxXxctd7moEj5PDo7G+9hYHTB5G7AS/SK8VWmzBn+
	KV9XmcB5RWutJAkViIuFJPm25YkY2eukOa9dk/XI+njcgnGvRHobv19git1dRX5w7N8QOPaTro33o
	esaN6o7Ah18K3QuTmMbYzcfQDi8O1XRzZfD1uVulCIIe+H22q/NRX9lalAubV+Ps8bkleGIMVwt5+
	0UiAK2ZPKizcJGW1Ig6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVq-0000000A36O-4C3s;
	Fri, 19 Dec 2025 10:15:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVo-0000000A325-0DKC
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:15:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kRSXJEuYN4DiyFjuq88mcfD6iYCF0blhcaK7FlEOn/Q=; b=jm6wdYnnz0oWWTYjvdwqF9Ec76
	vMZx7V/xSS+oOnzzP5p8APsp4jzIC5FjmQk01bEPazR4pzTJukRXeGi1teOhgg9e78qFvPzKk32un
	gvzD7K7QMZM2M+nCkG/dwiQykPGxqeA7IpITNdl4t6cN8jwT0BZFeqHZc58C9VUoxY3ARISc8+NGB
	/dYs9c5Zc5jFBr/qvAJvXdAXtlRcRvLZFnbqYl3X0AJze1in/ydDAKoEs2VNIKUKr64PVhllIaWjR
	i9DqqbJv3tyXLO/c8J1wh3OYExeF9eZoqDEOznjgaPgpxqPb8V25y43KUGfZfFaAO6y6aA7ozIkPU
	qCW5sahQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWeG-0000000AYyc-26ML
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:19:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-000228-4n; Fri, 19 Dec 2025 11:14:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-006RNO-2z;
	Fri, 19 Dec 2025 11:14:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-0000000320L-3RXq;
	Fri, 19 Dec 2025 11:14:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Dec 2025 10:20:43 +0100
Message-ID: <20251219101453.2806980-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_091944_968194_5BC3E4C2 
X-CRM114-Status: GOOD (  12.32  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 07/49] ARM: dts: am62lx: fix secondary core startup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

Disable the rti1 watchdog which fixes startup of the secondary CPU core
under Linux.

Enabling the rti1 watchdog leads to enabling its power domain,
<&scmi_pds 61> in this case. With this starting the secondary core fails
under Linux:

[    5.095816] CPU1: failed to come online
[    5.095832] CPU1: failed in unknown state : 0x0
[    5.095892] smp: Brought up 1 node, 1 CPU
[    5.095898] SMP: Total of 1 processors activated.

I don't know what's exactly going on here, but it seems enabling the
power domain either indirectly starts the secondary core in barebox
already or it causes some weird power state for the secondary CPU from
which the Tf-A can't recover later.

The device node is the same as under Linux later, but in Linux the rti1
watchdog is configured after the secondary CPU has been started.

Link: https://lore.barebox.org/20251007085117.941408-1-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit bad67240e49fa1bf9b5ce6cc1338d3f16770759d)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/k3-am62l-barebox.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/k3-am62l-barebox.dtsi b/arch/arm/dts/k3-am62l-barebox.dtsi
index 34bf42c01f06..43cf039d013f 100644
--- a/arch/arm/dts/k3-am62l-barebox.dtsi
+++ b/arch/arm/dts/k3-am62l-barebox.dtsi
@@ -11,6 +11,10 @@ &gpio2 {
 	status = "okay";
 };
 
+&rti1 {
+	status = "disabled";
+};
+
 &wkup_gpio0 {
 	status = "okay";
 };
-- 
2.47.3



