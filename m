Delivery-date: Mon, 13 Mar 2023 14:45:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiUY-0062Ac-Lq
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:45:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiUW-0006Ec-LJ
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:45:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZaWAM+toGNCmNBo4NpKDEV2jMK+Eh+at6lGz/i92nkc=; b=I/SrZUPiv/NL6cSRnja2QSKVvo
	GkuLQQkHzaiRhg+aV8T4a6iUGhrfH1MQRjrhJpI8dA/buCSEi45mn/y32GCmpS3fcjbT4br4TUiZP
	n1dbjKlSwoa5kEZwMfTPlAt0VwyidbHjxGHxHn9xkEpeG7fyvr1KbABeE65MboZgiNX1gj9RkCHWh
	l5ZYKPGE3rMRj3zx9MBjTcF2Yp9tj+LDgYNbYGoyXrgTF8xdEOVsBgSw77RBfp13CPNdZ+ZZEdh+x
	RStnQUsLs7IPxWiVtlWF/gG93A3tyfVzxgveqMXB9ljXSYflhSodIxlDrl1bGKukEsPZtWKl+6/Jn
	gQ1xrBoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiT4-005xGl-4O; Mon, 13 Mar 2023 13:44:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiR2-005vs3-Ax
	for barebox@bombadil.infradead.org; Mon, 13 Mar 2023 13:41:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ZaWAM+toGNCmNBo4NpKDEV2jMK+Eh+at6lGz/i92nkc=; b=hiK0JIuikp9a9BtZ2Pl551H8I7
	UBZefliisxIks+WfuDn/eoDLZxGO/yXMsbrWSk5kMMdfxPplq0tgzPN006PIUctB2sg9dP6BooO8z
	ab2pxsEU7b/Uj+ISJ574V18YBAU6tvX6f3MhTkMVqjnDHRXlvuWch9ynty3GAvxE693WUbUS0p14p
	YMZlU9u+mvDbC6yh2YpYxovqWeTP08AlzkIhq6ZLT1tahrrDqaWp+3Q+fRgy5w7StzjRQPBgf9qDm
	lppUhDoH+IyTG6obhiZJQjfVXM4KBvZOkWRqusw7HOpaFt93PqlbyxBUf6Cbf9bD4ompwsYtkNIa8
	cn7fIIZg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pbiQw-001NSl-2r
	for barebox@lists.infradead.org;
	Mon, 13 Mar 2023 13:41:55 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQr-0004N9-HA
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:41:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-20-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_134151_129211_13826830 
X-CRM114-Status: UNSURE (   7.89  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 20/23] ARM: i.MX8M: enable FlexSPI image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add the required flexspi_ image configuration options to build mmc and
flexspi compatible images.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg | 3 +++
 arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg | 3 +++
 arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg b/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
index 10606ce29c..d6a536053e 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
@@ -5,3 +5,6 @@ soc imx8mm
 loadaddr 0x007e1000
 max_load_size 0x3f000
 ivtofs 0x400
+
+flexspi_ivtofs 0x1000
+flexspi_fcfbofs 0x0
diff --git a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
index 27a2138e43..a9b592e624 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
@@ -5,3 +5,6 @@ soc imx8mn
 loadaddr 0x912000
 max_load_size 0x3f000
 ivtofs 0x0
+
+flexspi_ivtofs 0x0
+flexspi_fcfbofs 0x400
diff --git a/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg b/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
index 663bd102e9..3bb44d199c 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
@@ -5,3 +5,6 @@ soc imx8mp
 loadaddr 0x920000
 max_load_size 0x3f000
 ivtofs 0x0
+
+flexspi_ivtofs 0x0
+flexspi_fcfbofs 0x400

-- 
2.30.2



