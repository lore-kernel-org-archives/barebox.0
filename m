Delivery-date: Wed, 11 Jan 2023 08:53:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFVv9-008dCh-QJ
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 08:53:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFVv7-0006ja-6Q
	for lore@pengutronix.de; Wed, 11 Jan 2023 08:53:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=e4TN6Po/aTEZZ31Z5f4OHexFC2jz4Xkj7jD+WzOM8eM=; b=z5JGcKc9v2vc+XXJ6B0vwAqJnr
	UugPGede2DMQlKJJR39xDGxfbPD8z7BSErTEKu8v32UGfFuH8HMOgGJUEwYInywMv4EI0MDQR6QVK
	z6XxP1Dq//xjGVKv9QODbKzVJi8nhosZXfp4wclrWRr+61geV/hwZRJ//pMnlAe/5VfznZJWS1JVs
	tTEnd5G2gpk0qdD+3Rw7dIf8dl8/jzfFSHsadlZDDwXi/DkIhYfHfN4OWI7QSVaCzdvyB1ZjPKTSt
	IPWqb6yt/qEKdqpzn6716c659zvrWTs4a/fDxYb+KU4BRqP8R3kyuBiOYgbE6CA5L47+vdBqmVRS5
	kBfjNC5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFVte-00A9mX-2V; Wed, 11 Jan 2023 07:51:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFVs1-00A8wz-6G
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 07:50:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFVrz-0005w6-Mx; Wed, 11 Jan 2023 08:49:59 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFVrz-005Fb9-38; Wed, 11 Jan 2023 08:49:59 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFVry-003lWo-Ab; Wed, 11 Jan 2023 08:49:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 08:49:57 +0100
Message-Id: <20230111074957.897629-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_235001_255969_40163DE1 
X-CRM114-Status: GOOD (  10.81  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] include: linux/iopoll.h: silence warning when timeout_us contains *
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We evaluate timeout_us for truthiness to determine whether we are
entering an infinite poll loop. When timeout_us contains a
multiplication, GCC will warn about it and suggest replacing the *
with &&. Silence this warning by comparing directly against 0.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - squash change adding parens around timeout_us macro arg
---
 include/linux/iopoll.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 8bf912e173b3..96b17dee48c9 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -32,13 +32,13 @@
 #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
 ({ \
 	uint64_t start; \
-	if (!IN_PBL && timeout_us) \
+	if (!IN_PBL && (timeout_us) != 0) \
 		start = get_time_ns(); \
 	for (;;) { \
 		(val) = op(args); \
 		if (cond) \
 			break; \
-		if (!IN_PBL && timeout_us && \
+		if (!IN_PBL && (timeout_us) != 0 && \
 		    is_timeout(start, ((timeout_us) * USECOND))) { \
 			(val) = op(args); \
 			break; \
-- 
2.30.2



