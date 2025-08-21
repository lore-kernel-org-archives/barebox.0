Delivery-date: Fri, 22 Aug 2025 04:25:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upHSz-003AYr-0Y
	for lore@lore.pengutronix.de;
	Fri, 22 Aug 2025 04:25:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upHSy-0001Um-0z
	for lore@pengutronix.de; Fri, 22 Aug 2025 04:25:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bM4dRkvjtf+/yrWqcQkg/9MVm3dUkUhKBllXVRJS7C0=; b=hJo5oLL1b8cBXjDGJA504cNi8j
	AfR9L9Am7j+Fz8CBrY4yO4jSQAzdc9LSASjnoAIqEmda9MpwjouNuO8yANmAAQ7Rygq3TIGsaHBzW
	dTxcQl/X2mCzKMiwOzpoxfHzKeF6HbQQyNtdM7RZeqxoalA+st8lVcNO+JIK/qjb09IaYd+JIt03w
	VFMB1oPOJ+OHEX7QA5343r9/OATojQjyhd9Qk3u9keI1WVbtprKIKcdp5P4JJg/ueXlmSbaX4aVgX
	B3Vk45RaMuPtV5+OpLVBrbyoUrPYP7etbXP/yqE0/mCz+84BWw1kP+bINaRUaUALbgAVNrQt+y2x1
	bSB/FYqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upHSX-00000001GwH-3Chc;
	Fri, 22 Aug 2025 02:24:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upCNu-00000000b83-0fpY
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 20:59:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCNs-0000b7-QF; Thu, 21 Aug 2025 22:59:44 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCNr-001T4v-2X;
	Thu, 21 Aug 2025 22:59:43 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCNr-0061Uc-2F;
	Thu, 21 Aug 2025 22:59:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Aug 2025 22:59:40 +0200
Message-Id: <20250821205942.1435683-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_135946_197540_E9B590DD 
X-CRM114-Status: UNSURE (   9.81  )
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
Subject: [PATCH 1/3] fuzz: add test harness for fuzzing nul-terminated strings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Many APIs expect NUL terminated strings, for example the JSON Web Token
decoding functions.

Add a helper to make it easy to fuzz such functions. As we are
allocating anew anyway, we pass along the buffer mutably as well as the
original size, so the harness is useful for a wider range of API.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/fuzz.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/fuzz.h b/include/fuzz.h
index bd95ae6203b0..caebc284d5db 100644
--- a/include/fuzz.h
+++ b/include/fuzz.h
@@ -9,6 +9,8 @@
 
 #include <linux/types.h>
 #include <linux/compiler_types.h>
+#include <linux/bug.h>
+#include <linux/string.h>
 #include <ramdisk.h>
 
 /**
@@ -65,6 +67,18 @@ extern const struct fuzz_test __barebox_fuzz_tests_end;
 	}							\
 	fuzz_test(_name, _func##_ramdisk)
 
+#define fuzz_test_str(_name, _func)				\
+	static int _func##_str(const u8 *_data, size_t size)	\
+	{							\
+		int ret;					\
+		char *data = memdup_nul(_data, size);		\
+		BUG_ON(!data);					\
+		ret = _func(data, size);			\
+		free(data);					\
+		return ret;					\
+	}							\
+	fuzz_test(_name, _func##_str)
+
 static inline int fuzz_test_once(const struct fuzz_test *test, const u8 *data, size_t len)
 {
 	return test->func(data, len);
-- 
2.39.5



