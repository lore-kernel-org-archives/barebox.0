Delivery-date: Mon, 05 Sep 2022 19:39:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG4d-007ktu-TP
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 19:39:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG4d-0002aW-Qt
	for lore@pengutronix.de; Mon, 05 Sep 2022 19:39:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jojl7Gt+PoydFyy3MokpfIyP7cDmIEHRINo9fGcbDyg=; b=0i4Mt07UC8ru4+ZI3k/i4M469B
	FvdKmUgAEKH5DQSg8JlXEkDWSXI1ajYHiIBPn1Ac/aaCEP3k/9jEVy0jO95rAc7PnAQxi3ghgkZxW
	NMD8/s6ceoq3zeqqL5fXIcmCi7j9I5L9owN5PzxzW4umRyLIT8xVeucPJADfDvowNT2s6AexARMjk
	BA3aMH46YifbEX0K4KS94g3YP1+qUa0c/TpHXkuguXt9ZPDLPhyRjXh0+TCfTLDa1q1Mb9ter1Fju
	wlqeLg4nmCM+fBUKpTrWZOmb/SD51xJWJECCPyBAJ7PNOoZ9jrREoVG2B6gUBIRn1F0KAj2EqR18b
	SVuiP5gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVG33-007gLC-EO; Mon, 05 Sep 2022 17:38:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8pq-00H3fb-El
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8po-0008EL-G5; Mon, 05 Sep 2022 11:56:04 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pl-0042Fk-Mt; Mon, 05 Sep 2022 11:56:03 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pl-002Wdi-Tu; Mon, 05 Sep 2022 11:56:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:27 +0200
Message-Id: <20220905095557.596891-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_025606_669415_60A1A005 
X-CRM114-Status: GOOD (  10.62  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/32] clk: have SCMI and SiFive clock controllers depend on COMMON_CLK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Both drivers require CCF support, so move these into a new if
COMMON_CLK. As we already have COMMON_CLK_STM32 with the same
requirement, move it in there as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/Kconfig | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 5b5acf4e0656..0faea6488e59 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -20,10 +20,11 @@ config CLK_SOCFPGA
 	select COMMON_CLK_OF_PROVIDER
 	default y if ARCH_SOCFPGA && OFDEVICE
 
+if COMMON_CLK
 
 config COMMON_CLK_STM32F
 	bool "STM32F4 and STM32F7 clock driver" if COMPILE_TEST
-	depends on COMMON_CLK && ARCH_STM32
+	depends on ARCH_STM32
 	help
 	  Support for stm32f4 and stm32f7 SoC families clocks
 
@@ -38,3 +39,5 @@ config COMMON_CLK_SCMI
 	  firmware providing all the clock controls.
 
 source "drivers/clk/sifive/Kconfig"
+
+endif
-- 
2.30.2



