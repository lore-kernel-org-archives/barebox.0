Delivery-date: Tue, 16 Jul 2024 13:57:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgoR-005QrC-0p
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 13:57:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgoQ-0001AZ-Lm
	for lore@pengutronix.de; Tue, 16 Jul 2024 13:57:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Q/8+8DzmUxQjh1LdUKt/yUTBn7L6JbpSlLQdjat+hqU=; b=fpGdT/ntSo+JK5WRUViBKV1aYb
	1tt4PMknGXMdSgKwE0YOBfrXlN20w21qp1C6h07kscjXileInHMn4Cwzlsj9J9HnSvFcm9GgdjAkS
	Feioo41teuGAOce6l6hC3PtDQIyHnFI8ftHoOgMoLG/mIPdqV94iV0oHm8gofveWp6AWBVuITLPTx
	b26ebqukzsoeHQncK/VgBCcu0Ov8ajFrULdi6xmPs2iXshs92RP7vJ7ePmH9aY/hB2HrbyKCrGnGX
	zAOv+Vi45ua8dwwLN0yHfHazi35arnLFoH1ndppjPcfuTEnWJbTXyfpSbBsN/FlNPymSZsHR4E1xb
	YQE+UwsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgo2-0000000AKFB-16Cm;
	Tue, 16 Jul 2024 11:57:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgny-0000000AKCt-2mMY
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 11:57:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgnx-0000wl-BZ; Tue, 16 Jul 2024 13:57:13 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgnw-0007Yd-V7; Tue, 16 Jul 2024 13:57:12 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgnw-008DFD-2o;
	Tue, 16 Jul 2024 13:57:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 13:57:08 +0200
Message-Id: <20240716115711.1956907-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_045714_723344_02EBF3A8 
X-CRM114-Status: UNSURE (   9.13  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] init: mark initcalls const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The initcalls shouldn't be modified at runtime and they are part of the
BAREBOX_RO_SECTION, so mark them const accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/init.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/init.h b/include/init.h
index 33a76974f23d..7061f911a888 100644
--- a/include/init.h
+++ b/include/init.h
@@ -36,10 +36,10 @@ typedef void (*exitcall_t)(void);
 #ifndef __ASSEMBLY__
 
 #define __define_initcall(fn,id) \
-	static initcall_t __initcall_##fn##id __ll_elem(.initcall.##id) = fn
+	static const initcall_t __initcall_##fn##id __ll_elem(.initcall.##id) = fn
 
 #define __define_exitcall(fn,id) \
-	static exitcall_t __exitcall_##fn##id __ll_elem(.exitcall.##id) = fn
+	static const exitcall_t __exitcall_##fn##id __ll_elem(.exitcall.##id) = fn
 
 
 /*
-- 
2.39.2



