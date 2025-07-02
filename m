Delivery-date: Wed, 02 Jul 2025 14:05:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwCz-00DHwV-2U
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 14:05:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwCy-0006ak-GN
	for lore@pengutronix.de; Wed, 02 Jul 2025 14:05:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XdEHP5oDAb9TUFsxcOxWv155d1FkxXhQwa9Uw7k55hQ=; b=bQZ3UZf/tkMgRRz2E367JEFUp+
	ooOO/2RjBukxkc/uqmJO7P/DLnVnQNya70wFr9Kizi5GlFAXHFwGEdjPr+55cCX8esaVl8rELcSr/
	d79eskRNUmtif/l8LwGU+KQeeAMJa/GHkSNIZg7DqPIRF2SWTLh1GocnAE0MoF8Fe9TsNz4GO8f58
	o/Ympp+O1OpbjVYIg10BD3Hbq3UqFsH8N+/qcCUdFFXFA8qIl6QCynAZPUiSqe9sVJwl4WRhZuHmg
	TB69M8fwQonNZ60II3wEvpz0oJYOAbf7VHXBBbLSlFXBiNVOoXlYkzhV3UfP72Q0mtBM6S3wP1K2j
	9c1cGSLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwCZ-00000008Ezw-2Hep;
	Wed, 02 Jul 2025 12:04:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWvDi-000000083TF-12wg
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 11:01:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvDg-0005t6-S8; Wed, 02 Jul 2025 13:01:40 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvDg-006QSW-2B;
	Wed, 02 Jul 2025 13:01:40 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvDg-009NqZ-0E;
	Wed, 02 Jul 2025 13:01:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jul 2025 13:01:36 +0200
Message-Id: <20250702110139.2235318-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250702110139.2235318-1-a.fatoum@pengutronix.de>
References: <20250702110139.2235318-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_040142_309978_6C991734 
X-CRM114-Status: UNSURE (   9.89  )
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
Subject: [PATCH 1/4] include: linux/iopoll.h: evaluate timeout_us argument only once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently evaluate timeout_us three times, which is unexpected and
suboptimal when having complexer timeout calculations.

Define a local variable to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/iopoll.h | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index c38190272606..a6fade2a11fc 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -20,7 +20,7 @@
 #  define read_poll_get_time_ns()	0
 # endif
 # ifndef read_poll_is_timeout
-#  define read_poll_is_timeout(s, t)	((void)s, (void)t, 0)
+#  define read_poll_is_timeout(s, t)	((void)(s), (void)(t), 0)
 # endif
 #endif
 
@@ -43,13 +43,14 @@
  */
 #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
 ({ \
-	uint64_t start = (timeout_us) != 0 ? read_poll_get_time_ns() : 0; \
+	uint64_t __timeout_us = (timeout_us); \
+	uint64_t start = __timeout_us ? read_poll_get_time_ns() : 0; \
 	for (;;) { \
 		(val) = op(args); \
 		if (cond) \
 			break; \
-		if ((timeout_us) != 0 && \
-		    read_poll_is_timeout(start, ((timeout_us) * USECOND))) { \
+		if (__timeout_us && \
+		    read_poll_is_timeout(start, __timeout_us * USECOND)) { \
 			(val) = op(args); \
 			break; \
 		} \
-- 
2.39.5



