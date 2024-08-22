Delivery-date: Thu, 22 Aug 2024 18:57:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shB8D-00CJFF-2F
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 18:57:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shB8D-0003tD-37
	for lore@pengutronix.de; Thu, 22 Aug 2024 18:57:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oVjKEIdLYE9sQ9ylFu7PHuRmmIffQfkXHdbHdIiEWFs=; b=qFpDarbtKbyHNGZvARGz7xyci1
	wOyTA/XZ+cwF9lqLKnH98eLTSTnaWGXmTGUo2hufO5DwClzMsfYFPFg2XLT4zpEUPZhId2C+quBF3
	Ltouo370kt1nSJgJII7TmQoZopKWMVB2N+ALrQcZuouDmekRlfQ4MKKBidIvlFAVyRfk6UIrSNP+C
	J5HnfLzHeqCcBdwYRWDyaIfkTo0jg260C85jlxiDrEstFB7BzXAoyXIqUZBdwNb0jhD+ez9VJ/Eai
	htyVUnFXJBIP1FCmyYhw50VJIhfUz2ePthjIqK0u5rFqfyvXkMJ71M8fVRpI9vtin6kmd869JcZ/E
	ocme1KtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shB7i-0000000Dgrd-2zJD;
	Thu, 22 Aug 2024 16:57:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shB73-0000000DgjH-06Ug
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 16:56:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shB71-0003lf-FX; Thu, 22 Aug 2024 18:56:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shB70-002IDM-TN; Thu, 22 Aug 2024 18:56:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shB70-00FdXx-2e;
	Thu, 22 Aug 2024 18:56:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Stafford Horne <shorne@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2024 18:56:34 +0200
Message-Id: <20240822165633.3726922-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_095641_099440_0FCDA422 
X-CRM114-Status: GOOD (  12.42  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] openrisc: dts: describe all 4 UARTs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Starting with QEMU v7.1.0, the openrisc_sim machine features 4 serial
ports. This was introduced with QEMU commit 777784bda468 ("hw/openrisc:
support 4 serial ports in or1ksim"), which also made the last console
(serial@90000300) the default.

This is still the case as of v9.1.0-rc3, but I submitted a patch to
restore serial@90000000 as default. Until that's merged, let's just
activate all consoles after describing them in the device tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Optimally, we would start consuming the device tree supplied by QEMU,
but this should be good enough to fix the test suite breakage.
---
 arch/openrisc/configs/generic_defconfig |  1 +
 arch/openrisc/dts/or1ksim.dts           | 21 +++++++++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/arch/openrisc/configs/generic_defconfig b/arch/openrisc/configs/generic_defconfig
index 1f2d40eae9f7..417ae4db3650 100644
--- a/arch/openrisc/configs/generic_defconfig
+++ b/arch/openrisc/configs/generic_defconfig
@@ -3,6 +3,7 @@ CONFIG_BUILTIN_DTB_NAME="or1ksim"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_LONGHELP=y
diff --git a/arch/openrisc/dts/or1ksim.dts b/arch/openrisc/dts/or1ksim.dts
index 7316cc677046..ac938be9ee31 100644
--- a/arch/openrisc/dts/or1ksim.dts
+++ b/arch/openrisc/dts/or1ksim.dts
@@ -43,6 +43,27 @@ serial0: serial@90000000 {
 		clock-frequency = <50000000>;
 	};
 
+	serial1: serial@90000100 {
+		compatible = "ns16550a";
+		reg = <0x90000100 0x100>;
+		interrupts = <2>;
+		clock-frequency = <50000000>;
+	};
+
+	serial2: serial@90000200 {
+		compatible = "ns16550a";
+		reg = <0x90000200 0x100>;
+		interrupts = <2>;
+		clock-frequency = <50000000>;
+	};
+
+	serial3: serial@90000300 {
+		compatible = "ns16550a";
+		reg = <0x90000300 0x100>;
+		interrupts = <2>;
+		clock-frequency = <50000000>;
+	};
+
 	enet0: ethoc@92000000 {
 		compatible = "opencores,ethoc";
 		reg = <0x92000000 0x100>;
-- 
2.39.2



