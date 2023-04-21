Delivery-date: Fri, 21 Apr 2023 12:08:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppngz-00BPT7-Kv
	for lore@lore.pengutronix.de; Fri, 21 Apr 2023 12:08:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppngz-0001Uh-Bl
	for lore@pengutronix.de; Fri, 21 Apr 2023 12:08:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wWW7H4IRe1MutStN6OFIluEF/ae13q1sn6y4LnCEMVA=; b=nBpaks+RHfuG7Ui+/ZUpGjYkWh
	WHy72qTYpnJrmxsgZy2aogoCK9s6gAgUTwE+CqIpXcNFEkxlIh4uMqdoXupDYV95efTMuw02YQfxX
	/JNWClW20EB09GTZQzG4Y+TIbZc9oMNoM153Jrm6ju8zp5lJOr/oDWl2Gya9a/7aatLfjkSix7yQB
	+gTwkmJrD6vEo3Z05ysK/fXtCFpLIrGq4Hx28vY2MpjqAp6A9ZLEU3BW8qOlmt2VMagFW/yHvK+O2
	8HbzSysP4mcXRlRyu/6c7QUnAvipPxaxmMp9LWcBAc3GlK0VA7GrTzJahhAyBsvec2TM6r40VGs7r
	8+5qiEdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnfh-00AQ3i-2J;
	Fri, 21 Apr 2023 10:07:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnfd-00AQ1Z-0w
	for barebox@lists.infradead.org;
	Fri, 21 Apr 2023 10:07:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfa-00010z-Jl; Fri, 21 Apr 2023 12:07:10 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfZ-00ClhW-U0; Fri, 21 Apr 2023 12:07:09 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfY-00C2OJ-H3; Fri, 21 Apr 2023 12:07:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 21 Apr 2023 12:06:38 +0200
Message-Id: <20230421100642.2867651-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
References: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_030713_367942_F3F68ACC 
X-CRM114-Status: UNSURE (   8.67  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/5] asm-generic: atomic: implement atomic_inc/dec_return stubs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't have forced preemption in barebox, so we can implement these
functions with normal increment/decrement operators.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/atomic.h | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/include/asm-generic/atomic.h b/include/asm-generic/atomic.h
index 6e63b8e8e7b9..45fc5da57594 100644
--- a/include/asm-generic/atomic.h
+++ b/include/asm-generic/atomic.h
@@ -77,16 +77,19 @@ static inline void atomic_sub(int i, volatile atomic_t *v)
 	v->counter -= i;
 }
 
-static inline void atomic_inc(volatile atomic_t *v)
+static inline int atomic_inc_return(volatile atomic_t *v)
 {
-	v->counter += 1;
+	return ++v->counter;
 }
 
-static inline void atomic_dec(volatile atomic_t *v)
+static inline int atomic_dec_return(volatile atomic_t *v)
 {
-	v->counter -= 1;
+	return --v->counter;
 }
 
+#define atomic_inc(v) ((void)atomic_inc_return(v))
+#define atomic_dec(v) ((void)atomic_dec_return(v))
+
 static inline int atomic_dec_and_test(volatile atomic_t *v)
 {
 	int val;
-- 
2.39.2



