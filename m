Delivery-date: Fri, 19 Dec 2025 11:15:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWV-00DAFX-1M
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:15:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWU-0002UQ-OI
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:15:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j1n0iZzbPFHXOpEBPNKfgGYk/+1Axf8SdExz3ARgrsY=; b=umZllLUe6eyUM21En8zlQuBdxi
	HGodQont9rk9TMGINK/1x774jLDVSXeG/EeIBZXakU3MdkWf89+nYq0f+6TrTuI1cSnKXp/BsqIRm
	5tEIePKdc/j1qaCt/IHF4CnnjkbW7V4znxVVuiMfvSYFIYrXSOn3RA1sKqHeeaKAlfnG8aivZCSDb
	M2n5QF4HJLvoUsQjYKdftj5/CIuluZMLo2T3BD9SGyi+SA5Ytu41TuyLaEvhjJhyQo/JJuqMk80kM
	NBSHDwgf4bmoWR5H6puShxap4/GN2hgBFEQDSv9kYQze06ijXDE44TZmWhtfbjQWW1pw+dMsApLfj
	D+GT7f5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVq-0000000A34n-0lrT;
	Fri, 19 Dec 2025 10:15:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVn-0000000A320-4Awh
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:15:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=j1n0iZzbPFHXOpEBPNKfgGYk/+1Axf8SdExz3ARgrsY=; b=BDnP4q0sEPqckIiVboiC2YKhrf
	GFzP71sb88oCD/jMjRR1wZJQfLUhtS2KtjV9jSmMY/i07rGWFZpgPDpG9QxMXpfJyxzF4Dyl3C7E6
	DnE3ilrEkr+B/4Ws9mxU/je6xNHqaRSk+PSiwT1KHbUC7UjcsAXkp+2Z5yp1+OSm+Z1wK9APvTHFc
	dvDV/GtIznGV0/1Fd50Wj/zvQfnvmbARRLs7FfsQ0Z/NKCFHb3myxUj7OUr3n9RM7Wv0bvI25iBw/
	bsWlKve/qGulsWkTaO9Gev7M9GkX5jtNeGKjCskz1p0DYLPzJyR+pQJoRSNtkA12YgQ9bqTXueyWT
	rpi6dAHw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWeG-0000000AYyb-26PW
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:19:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-00021v-48; Fri, 19 Dec 2025 11:14:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-006RNH-2j;
	Fri, 19 Dec 2025 11:14:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-0000000320L-32Ui;
	Fri, 19 Dec 2025 11:14:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:20:41 +0100
Message-ID: <20251219101453.2806980-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_091944_913919_116EB266 
X-CRM114-Status: UNSURE (   9.51  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 05/49] ARM: dts: rockchip: Set CPLL frequency for RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Alexander Shiyan <eagle.alexander923@gmail.com>

Explicitly configure CPLL frequency to 1500 MHz to ensure system
stability and reliable operation.
The change aligns with Rockchip's recommended practices for clock
configuration in embedded systems using RK3588 SoCs.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Link: https://lore.barebox.org/20250929135857.965181-2-eagle.alexander923@gmail.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 09c87c85e098fdfcec00200b68c8ae285e1cd47c)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/rk3588.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
index 416700cf0ecd..42d692a9bdd1 100644
--- a/arch/arm/dts/rk3588.dtsi
+++ b/arch/arm/dts/rk3588.dtsi
@@ -1,6 +1,9 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
 / {
+	assigned-clocks = <&cru PLL_CPLL>;
+	assigned-clock-rates = <1500000000>;
+
 	dmc: memory-controller {
 		compatible = "rockchip,rk3588-dmc";
 		rockchip,pmu = <&pmu1grf>;
-- 
2.47.3



