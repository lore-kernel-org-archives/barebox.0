Delivery-date: Mon, 02 Dec 2024 12:40:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4n9-0034Fr-2Y
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 12:40:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4n9-00047D-Oj
	for lore@pengutronix.de; Mon, 02 Dec 2024 12:40:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=v1HVASH8Uh5s5dtnZ2qiY/U5Z+SQt0WnBJUyUdWgIMI=; b=3ycT5zMNO1GIHVHfUNCTRzPKmd
	1xcwsHZXCkEbycMD1Zb8QVCioXY0w3Z9HFK+l2q1i31P2g1MGiFnv+R0sRm7LoOh3LqmHxpk4TMxN
	t+z0UguG75/GsMhIlcBDLIvGVRLf/buWrO4EakX386dyRr9LZ4mmf9gejIY58KUnfI7ZkSBDHtkBB
	l0mNCu4+F4cmT3zlWFWUmVXJ8CiZf/n/kpY8IAEk+XRm0KZWH1O/djIjBRqHNQq6AEBOIHTnBag2d
	3I99UvrvC6HccoHG/5+Csf7rrG9YNaT4Anxl89x8ITbIhdTLnkdoeXNtp/N7UcfYu728BrowGxu2k
	D7kGQjTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4ml-00000005wJ5-46eN;
	Mon, 02 Dec 2024 11:40:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4k7-00000005vit-3YDq
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 11:37:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI4k6-0003HK-Bf; Mon, 02 Dec 2024 12:37:30 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI4k5-001HzT-1E;
	Mon, 02 Dec 2024 12:37:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI4k6-002VyM-0E;
	Mon, 02 Dec 2024 12:37:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Dec 2024 12:37:28 +0100
Message-Id: <20241202113729.599540-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_033731_897459_776FE8DD 
X-CRM114-Status: UNSURE (   9.23  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fixup! stdio: stub out basprintf and friends when built for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

asprintf and vasprintf return only -1 as error code, so have the stub
follow suit for symmetry.

No functional change expected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/stdio.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/stdio.h b/include/stdio.h
index 03cd3d281890..883b06529fdc 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -32,7 +32,7 @@ static inline char *basprintf(const char *fmt, ...)
 }
 static inline int asprintf(char **strp, const char *fmt, ...)
 {
-	return -ENOMEM;
+	return -1;
 }
 static inline char *bvasprintf(const char *fmt, va_list ap)
 {
@@ -40,7 +40,7 @@ static inline char *bvasprintf(const char *fmt, va_list ap)
 }
 static inline int vasprintf(char **strp, const char *fmt, va_list ap)
 {
-	return -ENOMEM;
+	return -1;
 }
 #endif
 
-- 
2.39.5



