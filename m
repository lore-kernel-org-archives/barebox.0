Delivery-date: Fri, 17 Feb 2023 18:32:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4b2-00AI3i-ET
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:32:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4b0-0004pb-G8
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:32:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eMK/c1b40AleR9mcqwIV+pxo8I/qTEcjmMgEaNZe3N8=; b=f5731c/MH85lsldxxdlGqAKpgx
	eXSlhgktP65plR6OyqSypk29M+M4IZaDu7uXYA1s0vBU6Pm1+/T48xVYHNBQAurqiB+3ODWXgUqaU
	KJdrTLyqkjb6qrlGDvHaOKCpfrmLqOjeGeAdEyUHro3TEMtg5yxRkQPXcL+imFEtxjkO313DSZKC3
	grsqLAVFubKLdIbWA3axWPxew1PYUYyHXVeey4nl5lvJBPbK3lgHSWQ5e6cK/3bNQLwXNyJyLn8Ci
	V22mRzo1AfeoJufUXM72wpNC/uAtjcSoJKZSdkpkyWenEkty2yXnYRpsM+J22qvmtThWakTl8pwT3
	iOMEWOrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4a9-00FFYN-Qw; Fri, 17 Feb 2023 17:31:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zb-00FFG2-Hv
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Za-0004Cx-By; Fri, 17 Feb 2023 18:31:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZY-005dTf-Ft; Fri, 17 Feb 2023 18:31:01 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZW-007ixn-1U; Fri, 17 Feb 2023 18:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:46 +0100
Message-Id: <20230217173057.1839835-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_093103_726547_785AF1FE 
X-CRM114-Status: GOOD (  11.84  )
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
Subject: [PATCH v1 09/20] ARM: i.MX6: karo-tx6x: fix now renamed DT nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

gpmi-nand@00112000 is now called nand-controller@112000 and
usdhc@0219c000 now goes by mmc@219c000. Instead of adopting the new
names, let's use the aliases, which are supposed to be mores stable.

While at it, use an absolute path reference in the board DT.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/karo-tx6x/board.c | 4 ++--
 arch/arm/dts/imx6qdl-tx6x.dtsi    | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/karo-tx6x/board.c b/arch/arm/boards/karo-tx6x/board.c
index 2a141be61af6..ec66749558b9 100644
--- a/arch/arm/boards/karo-tx6x/board.c
+++ b/arch/arm/boards/karo-tx6x/board.c
@@ -112,12 +112,12 @@ static int tx6x_devices_init(void)
 	if (sbmr1 & (1 << 7)) {
 		imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
 		of_device_enable_and_register_by_name("environment-nand");
-		of_device_enable_and_register_by_name("gpmi-nand@00112000");
+		of_device_enable_and_register_by_alias("nand");
 	} else {
 		imx6_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc3.boot0",
 						       BBU_HANDLER_FLAG_DEFAULT);
 		of_device_enable_and_register_by_name("environment-emmc");
-		of_device_enable_and_register_by_name("usdhc@0219c000");
+		of_device_enable_and_register_by_alias("mmc3");
 	}
 
 
diff --git a/arch/arm/dts/imx6qdl-tx6x.dtsi b/arch/arm/dts/imx6qdl-tx6x.dtsi
index 2d7a4f833039..139b735b6d4c 100644
--- a/arch/arm/dts/imx6qdl-tx6x.dtsi
+++ b/arch/arm/dts/imx6qdl-tx6x.dtsi
@@ -14,10 +14,10 @@
 			device-path = &usdhc4, "partname:boot1";
 		};
 	};
+};
 
-	gpio-keys {
-		status = "disabled";
-	};
+&{/gpio-keys} {
+	status = "disabled";
 };
 
 &fec {
-- 
2.30.2



