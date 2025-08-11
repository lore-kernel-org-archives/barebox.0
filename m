Delivery-date: Mon, 11 Aug 2025 08:44:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGk-009FgT-14
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 08:44:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGj-0002WO-Mq
	for lore@pengutronix.de; Mon, 11 Aug 2025 08:44:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXjzuD5seo4yhwZV9zSttjYs9E77z/OQUzwCdeB5rQI=; b=FOnz4bvTWOF6qn
	zhEHAqrcTarQ0M3KR0lmpglzA6BSZYkaJbi2hmN1a3OyNdHr3umAJu9F8qA1jFPQi677gII+fmk+A
	8LNbV1UhWtUnJwAvHGZ8JCm7WE3LN0kFtihVK7JGVSc7qZPuBQ4s2+qAY/Opftra9CioP2ojREvbK
	LEG1Qr+eUN3OVUHWoEuHtmJPBoZplB3qkaU/VUMgEHm7zy3aNIGc8b5vJ9DSDlmdPfjX0zLvT639W
	8nMXze2nbm/rvhFxMvDllS0CoDB2gBGg/a6zMB6lBikA3tkV3Nvp2yirrAnFAjMTGXrIXRyDgRes5
	1yQBHvEW32/k652pWa6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMG0-00000006ciH-0qb2;
	Mon, 11 Aug 2025 06:43:44 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMD8-00000006cSz-0Yt4
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 06:40:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=XXjzuD5seo4yhwZV9zSttjYs9E77z/OQUzwCdeB5rQI=;
	b=C2dhB4S2JjJmYznvrdlgvcFmIAwkcR8J425NC7w/j0QnTOrk0hZ/C3Qu3jKy3hfIJb4cWWQbkgbqC
	 JeXQMPmFZMlNDpThetkqv8dh/apRPXRR/F0oqtVlPd8Hxay/UXpLqUcfhXvLbyV6G+9AgpGwiqzA4s
	 Zn7z8T1cZ/urk6HjArkcSkFxMoXUe1QH9qT4Lt1AzPl08aBvfPgrsElxzWKLEZ4oebxXcZgypgPjM8
	 TIe3lW78HQ6e2QCFvdw9EZrRefaF1pUoSfTVJuNjTrfuxrFvh/SZ2fPpK7q9U0fvxIonr8UXj9EJIH
	 L13nudrK49JYKbhdWkkRIadj1WNfYGg==
X-MSG-ID: 194cdbe8-767e-11f0-9d4b-00505681446f
From: David Jander <david@protonic.nl>
To: barebox@lists.infradead.org
Date: Mon, 11 Aug 2025 08:40:22 +0200
Message-ID: <20250811064026.753776-5-david@protonic.nl>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250811064026.753776-1-david@protonic.nl>
References: <20250811064026.753776-1-david@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234046_491208_6C914992 
X-CRM114-Status: GOOD (  10.45  )
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
Cc: David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/8] arm: dts: Add barebox specific RK3576.dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As for other Rockchip SoCs, give barebox a handle for the DMC and
set the big cluster clock rates to normal defaults.

Signed-off-by: David Jander <david@protonic.nl>
---
 arch/arm/dts/rk3576.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 arch/arm/dts/rk3576.dtsi

diff --git a/arch/arm/dts/rk3576.dtsi b/arch/arm/dts/rk3576.dtsi
new file mode 100644
index 0000000000..cf7c69b3b5
--- /dev/null
+++ b/arch/arm/dts/rk3576.dtsi
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/ {
+	dmc: memory-controller {
+		compatible = "rockchip,rk3576-dmc";
+		rockchip,pmu = <&pmu1_grf>;
+	};
+};
+
+&scmi_clk {
+	assigned-clocks = <&scmi_clk SCMI_ARMCLK_B>;
+	assigned-clock-rates = <816000000>, <816000000>;
+};
-- 
2.47.2



