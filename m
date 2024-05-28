Delivery-date: Tue, 28 May 2024 10:26:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsA6-000sS5-1a
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 10:26:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsA5-0005rX-Rt
	for lore@pengutronix.de; Tue, 28 May 2024 10:26:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IxNlO/yVJjVoZvo9Qzl/i5FVm1Ehar2jA7no/zIQdhc=; b=TdQ94hjwT5YohPMlVjlQEuEiCa
	CIDBEEHAaUmXLd59C+7Q8Vvm0t3X+ZkL/bl5EC1JuN7ueG//NR87x6lR5C6QLUQxeXeJAQBWl9UIQ
	1imF30EIMv8R/zmVw73mZfWVcnj1aN9lMoA2ceMZuFCVkgrR1SiYrdxRamJdjNBwwyx22GX6fTBrP
	BmwGUEtL85+HEHgqUXWXo11/mny7tDv2Et5KP6TwDlrseQdGsQHGW/2aTawoK07YkpHpUm9CwA98h
	REvek+Qa7W2ibC0RCh68bHrfItaW61tVdq+UP9+Lde7ktDxA4Onxl3NvjfwRQPcGLm0LSQQ4+eaxH
	CbdX9mUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBs9W-0000000HTQq-20jv;
	Tue, 28 May 2024 08:25:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBs9T-0000000HTPv-0UQR
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 08:25:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sBs9P-0005jM-FU; Tue, 28 May 2024 10:25:43 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sBs9P-003Iju-2m; Tue, 28 May 2024 10:25:43 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sBs9O-00Ce84-3D;
	Tue, 28 May 2024 10:25:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 28 May 2024 10:25:41 +0200
Message-Id: <20240528082542.3013919-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_012547_282880_CC3EC6C7 
X-CRM114-Status: UNSURE (   7.96  )
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
Subject: [PATCH 1/2] string: inline isempty
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The helper is trivial, so make it inline to save users the minimal
hassle of calling it out-of-line.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/string.h | 5 ++++-
 lib/string.c     | 6 ------
 2 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/include/string.h b/include/string.h
index 4ee3be6d93cc..5139c7ef1f3d 100644
--- a/include/string.h
+++ b/include/string.h
@@ -33,6 +33,9 @@ static inline bool streq_ptr(const char *a, const char *b)
 	return strcmp_ptr(a, b) == 0;
 }
 
-bool isempty(const char *s);
+static inline bool isempty(const char *s)
+{
+	return !s || s[0] == '\0';
+}
 
 #endif /* __STRING_H */
diff --git a/lib/string.c b/lib/string.c
index 7e4bec2e99cc..374f326143a7 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -1049,9 +1049,3 @@ char *strreplace(char *str, char old, char new)
 	return str;
 }
 EXPORT_SYMBOL(strreplace);
-
-bool isempty(const char *s)
-{
-	return !s || s[0] == '\0';
-}
-EXPORT_SYMBOL(isempty);
-- 
2.39.2



