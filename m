Delivery-date: Mon, 19 Feb 2024 09:32:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4a-00E47e-2K
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 09:32:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4X-0003TA-Nw
	for lore@pengutronix.de; Mon, 19 Feb 2024 09:32:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mgBjQw99Q4BfIF4WowSOWATHNr+7MblD3KPkEwg29jk=; b=n60Uoevl9EcBNgmqz5eifKPmxt
	xoQMFS7pHNFOLgMW+MzSNM80eemExtljUXD2w8hZpQ6F8ge/ajhTGV1azX/uIgZU67NvHdyHxRBjT
	sbjvwuo60mCt/3DXAhN5n2zI9twW5YuClv4e4yTaHa+wjmzYr5EPg/Zb4bSKm2TNtNPNrqFpVqtSO
	E/uf8u2JnNPS5lkRPKhNoJeik3ipe8qq3ImP3H1ejjgUMHH0PAEDmbXAQG0SYltn7u+yIfLXO1LcY
	wV1zDw3PxEN8DsF1RdAM7sz2jpfBIhdYYM5zpWoUztF10Kz/2pKyyB+jb0K9Gi2x6U34ICD0WaRc1
	bbKUFkPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz43-00000009aeT-2S9j;
	Mon, 19 Feb 2024 08:31:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz3v-00000009aZL-3K6T
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 08:31:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-00030Y-Ix; Mon, 19 Feb 2024 09:31:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-001bl1-4i; Mon, 19 Feb 2024 09:31:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-00CNCk-09;
	Mon, 19 Feb 2024 09:31:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 09:31:34 +0100
Message-Id: <20240219083140.2713047-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219083140.2713047-1-s.hauer@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_003143_960392_8CC7F0CC 
X-CRM114-Status: UNSURE (   9.20  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/12] linux/sizes.h: add more defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Update linux/sizes.h from Linux to get Terabyte defines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/sizes.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/linux/sizes.h b/include/linux/sizes.h
index 1d222daeab..08fe344bc4 100644
--- a/include/linux/sizes.h
+++ b/include/linux/sizes.h
@@ -50,5 +50,17 @@
 #define SZ_8G				_AC(0x200000000, ULL)
 #define SZ_16G				_AC(0x400000000, ULL)
 #define SZ_32G				_AC(0x800000000, ULL)
+#define SZ_64G				_AC(0x1000000000, ULL)
+#define SZ_128G				_AC(0x2000000000, ULL)
+#define SZ_256G				_AC(0x4000000000, ULL)
+#define SZ_512G				_AC(0x8000000000, ULL)
+
+#define SZ_1T				_AC(0x10000000000, ULL)
+#define SZ_2T				_AC(0x20000000000, ULL)
+#define SZ_4T				_AC(0x40000000000, ULL)
+#define SZ_8T				_AC(0x80000000000, ULL)
+#define SZ_16T				_AC(0x100000000000, ULL)
+#define SZ_32T				_AC(0x200000000000, ULL)
+#define SZ_64T				_AC(0x400000000000, ULL)
 
 #endif /* __LINUX_SIZES_H__ */
-- 
2.39.2



