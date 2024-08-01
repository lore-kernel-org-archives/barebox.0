Delivery-date: Thu, 01 Aug 2024 14:32:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZUzF-00585a-2p
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 14:32:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZUzF-0001hs-8s
	for lore@pengutronix.de; Thu, 01 Aug 2024 14:32:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QNn42UxrEoqBxkRWcj7tYlNH85hn4tn+Sk/Hptai88A=; b=BcpCqo422amRhpJEiSm8qUMEbn
	3Iqe+kD4TuVn9+wohaHoSTP0EwplG1QYyTIQ6r9KDz93+sM6x/5gvt6mB1eS37CE94cpGyQjtffTG
	2M5xOr2ygl+KOvzj/+Spm9l4XZKOcFNGCS5BU0qoBYfXZ+4CuEhfSV//UU7+dt6ceSubGmowxJnyU
	Sxm0/MQQm0m7lPYaaXyw6REnXMjmR/SwUuBp+pv9eUHZ5b4LTRZYfqUBaaoRHJ1K2zuATqduqVftE
	q0syeais/cSemBbrpD4Gf447X9O7thotVF4Mf5kfonm92lxIHRpJ+J3IGUNeZedygSze48OqjDxvK
	OaQAqtgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZUyg-00000005Chh-368W;
	Thu, 01 Aug 2024 12:32:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZUk4-000000055sv-3T1M
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 12:17:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZUk3-0008Vm-2y; Thu, 01 Aug 2024 14:17:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZUk2-003lUY-MU; Thu, 01 Aug 2024 14:17:10 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZUk2-00GszG-1y;
	Thu, 01 Aug 2024 14:17:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Aug 2024 14:17:09 +0200
Message-Id: <20240801121709.4024602-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_051712_885930_CF1DF1A0 
X-CRM114-Status: UNSURE (   9.77  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! debug_ll: implement putws_ll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The header doesn't include any headers to define types, so replace
wchar_t with unsigned short to make it includeable everywhere with
minimal impact.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/debug_ll.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/debug_ll.h b/include/debug_ll.h
index 5ac8ae12ceb8..1410783b73a4 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -64,7 +64,7 @@ static inline void puts_ll(const char * str)
 	}
 }
 
-static inline void putws_ll(const wchar_t * wstr)
+static inline void putws_ll(const unsigned short * wstr)
 {
 	while (*wstr) {
 		if (*wstr == L'\n')
@@ -81,7 +81,7 @@ static inline void putc_ll(char value)
 {
 }
 
-static inline void putws_ll(const wchar_t * wstr)
+static inline void putws_ll(const unsigned short * wstr)
 {
 }
 
-- 
2.39.2



