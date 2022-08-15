Delivery-date: Mon, 15 Aug 2022 10:46:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVkF-006ESk-4o
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:46:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVkG-0000k4-3i
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:46:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JHVBXS0uCOIDalAElkXnHMtgQEE+UUBn0M7uRcDI520=; b=oIIO0Oat1tMVOLsN1x4rSABVWB
	y+Lph2FmdSxUEIPJopci+4hgiyJj9z11/BepHq2c55+0U3WSxVacb2n+gDALDkxqIgAvIhbKeE6k/
	NMO6ply2DjHqW0UtZ0KHhejP8exaLLPlTa6/CNfZzKiQ9y0RMSiPCxu2P4xlV3N+sjGieVtC+J2rl
	NRpKdnZGCwP8rltPdgeSqeZWWL4MMRu5AyFNNW/csOgLjv0Raa52NJhrEQ8yn3BAIbbGaIBbaM3k1
	BS2tFd5z/YYv3BbgOd9B3BsCn6mLm0auIrLUygnzWgnZDyUehq5zpmWwxrvHVGo3REikV1GL8aQu3
	Fxv/WI0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNViG-00DKoV-F0; Mon, 15 Aug 2022 08:44:44 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVgw-00DJhw-RU
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:26 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gerW662008
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552960;
	bh=JHVBXS0uCOIDalAElkXnHMtgQEE+UUBn0M7uRcDI520=; l=898;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=MrOh39cxn8a7JwlNauaHDZkYnzXQCOA75Zq3OLRje9yKWn1x+qXIJvY9yM8VCsOVj
	 XSZhzQ3hiAUvpUrsRW/vJE8g+3Gll2696f+gEr9n9pr+tg70zo/4wvZRjNh+Bba62W
	 BlQjb4dQUAOog45r6hHklUlnz9j46D3GRxEs3T+cCHyZT6OBUQw9PA5dCnT6+lLFb/
	 WvrvLwuFovRqeIn4tm2E+4LI5aFfdoPpzFfBFV+T6U1cuEAIOquBOsXaBKeHt6mBqD
	 uZ8m1DnDcQSI713x4oAH6g8I09jjk/A3cAl5mwVArOI9OwUdmQjXSXq0kKukbBkFvh
	 siTyd0d4tDbRw==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gYX8822388
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:35 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 7BD9F4A4BD6; Mon, 15 Aug 2022 10:42:29 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27F8gQu6811084
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:26 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg2-000EJW-4j;
	Mon, 15 Aug 2022 10:42:26 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:20 +0200
Message-Id: <95e801df3c5721741516bf930275238fc853026e.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_014324_390122_E04CF091 
X-CRM114-Status: UNSURE (   7.87  )
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
X-Spam-Status: No, score=-103.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 16/18] tftp: add debug_assert() macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Is a noop in normal cases (when compiler sees that condition can be
evaluated without sideeffects) but allows optimizations based on the
condition.

E.g. in

| void foo(int a)
| {
|     debug_assert(a == 23);
|
|     if (a == 23)
|         return;
|
|     bar();
| }

the call to 'bar()' will be optimized away.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/fs/tftp.c b/fs/tftp.c
index c96c8917633a..d02ca750cd6d 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -75,6 +75,15 @@
 
 #define TFTP_ERR_RESEND	1
 
+#ifdef DEBUG
+#  define debug_assert(_cond)	BUG_ON(!(_cond))
+#else
+#  define debug_assert(_cond) do {			\
+		if (!(_cond))				\
+			__builtin_unreachable();	\
+	} while (0)
+#endif
+
 static int g_tftp_window_size = DIV_ROUND_UP(TFTP_MAX_WINDOW_SIZE, 2);
 
 struct file_priv {
-- 
2.37.1



