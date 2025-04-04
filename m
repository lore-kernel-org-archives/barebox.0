Delivery-date: Fri, 04 Apr 2025 17:55:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0jOf-008JE8-1G
	for lore@lore.pengutronix.de;
	Fri, 04 Apr 2025 17:55:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0jOe-0006di-Qs
	for lore@pengutronix.de; Fri, 04 Apr 2025 17:55:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jO7GkR8YcTZqoPVZFsGVn10qfPluamHMlSSrzl2+/jo=; b=N7S5XJZ1pY8xjLXA1CVipW6USv
	n33o9WbfBnA7Z0eBRVomHlnj2U1rKOI1cKrImpzCM3y4H7P5+mHKZuudG980MfRnjotE9MKOfx3Zp
	zv2ME2gLJs6XaTAoMi9QYIq9hBeGt52s4jSbHvmignYhRgpBf6QS6kzgdbOyObQRg5qOPJm/cwxYu
	Nj40QtEn4m3u2MARyyhZZRsF6s8kLf7Ef1n2TvQnx8raxFbHBJTXbOn0TB2/RCFxVbXZLKmcidBO0
	OmmPBTNFYfgLjY0WFCNmGIUMvFoPrgxS29n9IPgCjeYoH2SJ38+XJUYfxvMDJofrgUZv+bf68iyFg
	zwSKdPFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0jOB-0000000CE0f-378q;
	Fri, 04 Apr 2025 15:55:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0jO8-0000000CDz8-12JK
	for barebox@lists.infradead.org;
	Fri, 04 Apr 2025 15:55:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0jO6-0006St-Q5; Fri, 04 Apr 2025 17:55:22 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0jO6-003I8m-1y;
	Fri, 04 Apr 2025 17:55:22 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0jO6-00C0rF-1h;
	Fri, 04 Apr 2025 17:55:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Apr 2025 17:55:21 +0200
Message-Id: <20250404155521.2863158-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250404155521.2863158-1-a.fatoum@pengutronix.de>
References: <20250404155521.2863158-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_085524_299125_07495159 
X-CRM114-Status: UNSURE (   9.67  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] barebox.h: annotate __hang as __noreturn
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Otherwise, GCC may complain that other __noreturn functions calling
__hang can in fact return.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/barebox.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/barebox.h b/include/barebox.h
index 334dcfceffcf..02228451c26e 100644
--- a/include/barebox.h
+++ b/include/barebox.h
@@ -6,7 +6,7 @@
 #include <linux/compiler.h>
 
 /* For use when unrelocated */
-static inline void __hang(void)
+static inline __noreturn void __hang(void)
 {
 	while (1);
 }
-- 
2.39.5



