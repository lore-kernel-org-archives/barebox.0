Delivery-date: Fri, 13 Mar 2026 14:34:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fH-000DTW-0V
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:55 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12et-0000nG-Uo
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s/esqshYRxpmD3/TTJNHPi9V3abLfd2XHnefxF+HBXg=; b=c4AEv7jvuocBaH2tUCmOHrd2wg
	q3eUKOG8p1A1jnrZWrQO7sj24E/ogCTlxqVVGH/T8mdgvhzLyMbp6O6DQjcjW4SHEL2zWdP2BKD4c
	WwC/UExXI6m5wvv4Nxt5Y/KzkHFGDB7HRgagoiFpJaZZPuerYR0HOMRfHKYvbdwck127fPEVkeoru
	9LlIibmBzKVt7e/yW048kWqVRT/03lVQhUMSwQvc0E/smRoCHfuw6lbANlNfwhmPXIlCcoz8i43sC
	8rEB2QTnZlzPY/3R4QiPFcpfShdk9xz7Ysa/AZs43zUG98TtVlNfKYhbF+4FwyLGyKmPiUeXV6mzS
	Jd5+vTGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dc-00000000GM8-0Iam;
	Fri, 13 Mar 2026 13:33:12 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dE-00000000FgH-2TBJ
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=s/esqshYRxpmD3/TTJNHPi9V3abLfd2XHnefxF+HBXg=; b=Q+3k32+CQTRR6bpty7nN7pxgoc
	9wuP8XMX4HAQ1WwZMqsg0N0cdI0CqgREKe1iu65FjeSdbiNIw3yO+xP/CYB1p9FsuT6KtpV4JBfos
	GpUvE1j9kve49erQ2dV+bnooCMVXzuQdRr8khA8u8CeV6sdBg47KmchAGbOdiWh/OxYDM6r/m49lZ
	wmzMpskQfOHmLlkxFUtxnVin8j34h1KhDh/GrigXvZnIP2U49I/ZU/B3PGfP2PIhwr+00+ewo1Zuj
	wJbq0zYhoxs5fgCNBp7gIC7qAJBvNBxn/EBZvIr304s2jlbI1wE6maefhbPxS0CJvt56Nkc2Z0HkK
	oXSjyCKA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d6-0000000D9wI-4BFh
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d2-0006rW-NJ; Fri, 13 Mar 2026 14:32:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0005Ti-0T;
	Fri, 13 Mar 2026 14:32:33 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-42CH;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: zhengxiaojun <zheng.xiaojun@foxmail.com>
Date: Fri, 13 Mar 2026 14:25:00 +0100
Message-ID: <20260313132631.2257573-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133241_188142_81950B2E 
X-CRM114-Status: UNSURE (   8.58  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 16/58] mmc: resolve conflict between MMC_CAP_NONREMOVABLE and MMC_CAP_1_8V_DDR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: zhengxiaojun <zheng.xiaojun@foxmail.com>

Resolve conflict between MMC_CAP_NONREMOVABLE and MMC_CAP_1_8V_DDR.

(cherry picked from commit cf4a68050d630d63723280c50b207217577b6ef0)

Fixes: a382be0b4f ("mci: add option to detect non-removable cards during startup")
Signed-off-by: zhengxiaojun <zheng.xiaojun at foxmail.com>
Link: https://lore.barebox.org/tencent_C5E0959753A838615BF48C3792E12BC74A08@qq.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mci.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/mci.h b/include/mci.h
index 3db33f914236..50214aaae7bb 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -58,7 +58,7 @@
 #define MMC_CAP_1_2V_DDR		(1 << 9)	/* Host supports eMMC DDR 1.2V */
 #define MMC_CAP_DDR			(MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR | \
 					 MMC_CAP_1_2V_DDR)
-#define MMC_CAP_NONREMOVABLE	(1 << 8)	/* Nonremovable e.g. eMMC */
+#define MMC_CAP_NONREMOVABLE	(1 << 10)	/* Nonremovable e.g. eMMC */
 #define MMC_CAP_UHS_SDR12	(1 << 16)	/* Host supports UHS SDR12 mode */
 #define MMC_CAP_UHS_SDR25	(1 << 17)	/* Host supports UHS SDR25 mode */
 #define MMC_CAP_UHS_SDR50	(1 << 18)	/* Host supports UHS SDR50 mode */
-- 
2.47.3



