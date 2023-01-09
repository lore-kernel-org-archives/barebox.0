Delivery-date: Mon, 09 Jan 2023 19:07:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEwYi-006ueD-Si
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 19:07:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEwYg-0004Wd-9d
	for lore@pengutronix.de; Mon, 09 Jan 2023 19:07:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0XXLBKsBF3bvFcLx7nTrwcpYHWT6IbViz2CqpqI7X20=; b=Z0nf/E8bWLhymre7vv10QoOpCw
	uCwIOrfNHz+9M2tov2zDSaqWoruEklgpRqpyVu7qJYPr10akgFL++xBiA1l7lIHiIIGax72lxAnIj
	Dm+XfBYTEZ/PPjjHtshI5TsEzzHgIR2B0Ic8vSjgMBt95ksHZjN/vc1C1LCt4VLRes1EtJPL79/tS
	i4ZbXL077j2zYZwrBU+bCX7bTOLlEr8MVVI8eN+BU7Wmn2XoKzn2GTQgrIz3VWD5IWLAf2rad1HYr
	z9U/2C0vyWcTcmhnFZV5Jsv32E8QKSNUXXtwOUcfZloTMKWon/an+/Hd4z3z+c+gF/YkFtHeRSxm0
	amNOZ/Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEwX3-0038Bb-4M; Mon, 09 Jan 2023 18:06:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEwTd-0036i3-5L
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 18:02:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEwTZ-0003i4-Dq; Mon, 09 Jan 2023 19:02:25 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEwTY-004u0p-Qf; Mon, 09 Jan 2023 19:02:24 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEwTX-00CC9V-NT; Mon, 09 Jan 2023 19:02:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 19:02:23 +0100
Message-Id: <20230109180223.2906601-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109160057.2223325-1-a.fatoum@pengutronix.de>
References: <20230109160057.2223325-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_100241_225513_C40B7620 
X-CRM114-Status: GOOD (  10.58  )
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
Subject: [PATCH] fixup! include: linux/iopoll.h: silence warning when timeout_us contains *
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While at it, surround the macro argument with parenthesis.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/iopoll.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index b8c55583f97f..96b17dee48c9 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -32,13 +32,13 @@
 #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
 ({ \
 	uint64_t start; \
-	if (!IN_PBL && timeout_us != 0) \
+	if (!IN_PBL && (timeout_us) != 0) \
 		start = get_time_ns(); \
 	for (;;) { \
 		(val) = op(args); \
 		if (cond) \
 			break; \
-		if (!IN_PBL && timeout_us != 0 && \
+		if (!IN_PBL && (timeout_us) != 0 && \
 		    is_timeout(start, ((timeout_us) * USECOND))) { \
 			(val) = op(args); \
 			break; \
-- 
2.30.2



