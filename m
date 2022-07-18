Delivery-date: Mon, 18 Jul 2022 14:25:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPom-00D7H0-1n
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:25:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoj-0008Jp-Gf
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:25:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wz8xXfXmaSHwbNpeKW/uPYGe67wCyfpSPjOR7zW4mVQ=; b=i+JWsnGBNy7rKAp6axfT+zhJU0
	+qyzlaTRAC4DW3aXLPinyP+WSH/AxnoljhoIlNxqaZWB249s5rVej+izIF7Ob91JRJEPzP8Uef0BI
	YOrpMP24QW7sUAqHsYAEqf+Dk7EJq5gz+Myt1Bg46b02EJEufoQRhYjiMj0DbizM6HKv7hbzrTaBh
	nIXWAcbbWy0oiehCr+n3jOc9OrpVmoLPtxo2o9OfW1RDTGfpXd0KbymAfH3WFShHI5hWtCzbDFQ8e
	m4s22j7JX0wIWXWYjYgv3bYQxPjQv/vPSWNjAbo8+Z5ShSGgZT31erxjzZbTgmsLml1Nfqtl2kI4y
	vePpRmvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPnI-00DEN4-HZ; Mon, 18 Jul 2022 12:24:12 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmd-00DDW3-4b
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:32 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMl7h390609
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146967;
	bh=wz8xXfXmaSHwbNpeKW/uPYGe67wCyfpSPjOR7zW4mVQ=; l=1794;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=p+E5dhAIA7c3KISSOxz/roIxL4L2zjTagfkXr4oI2WWoJnmxWl6hcNAqvQ/adDZZB
	 To5FGApMER9NTktbbwSR+xwQrCyi7Ys9ADHsADKA5xArwhdJoR2EZo8CNHGplZGXzl
	 Lqgi18qdZCHK2JAL8KyQxYj05vyEqebFwhId+GzBz9/uLRcVILsflzo09CIfrDOx5P
	 uURXmN5QGlz4XkkbEV0XN9Ws9rF6UA7PpxfmT75oFzKtufN9a6rvigIVajWpxHiN3d
	 Yi7zk8Kc6UwoqpLR2JIhLIsWf7hq4Q3+G/esuF6VD8REoyZGudrGDATS1Vray1lTgY
	 W+DeNMPEy6o8g==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMYol487147
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:34 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 6F167032863; Mon, 18 Jul 2022 14:22:32 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMWFm371848
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:32 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlg-002g37-MZ;
	Mon, 18 Jul 2022 14:22:32 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:16 +0200
Message-Id: <d6071cf12d7d5610f55c78a50f1b1505f032bc29.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052331_541038_4035E76E 
X-CRM114-Status: GOOD (  11.65  )
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
X-Spam-Status: No, score=-104.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/13] progress: add close_progress() to display some statistics
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With a later patch, this will produce output like

| :/ cp -v /mnt/tftp/tmp /tmp/
|         [########...#########] 29138411 bytes, 127413 bytes/s

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 include/progress.h  |  1 +
 lib/show_progress.c | 25 +++++++++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/include/progress.h b/include/progress.h
index 7230bd3a9bd5..219d772201bf 100644
--- a/include/progress.h
+++ b/include/progress.h
@@ -16,6 +16,7 @@ void init_progression_bar(loff_t max);
  * spinner is printed.
  */
 void show_progress(loff_t now);
+void close_progress(loff_t total);
 
 extern struct notifier_head progress_notifier;
 
diff --git a/lib/show_progress.c b/lib/show_progress.c
index 1b624bcb9af8..5b42a2d74b8f 100644
--- a/lib/show_progress.c
+++ b/lib/show_progress.c
@@ -24,6 +24,7 @@
 static loff_t printed;
 static loff_t progress_max;
 static unsigned spin;
+static uint64_t start_tm;
 
 void show_progress(loff_t now)
 {
@@ -47,11 +48,35 @@ void show_progress(loff_t now)
 	}
 }
 
+void close_progress(loff_t total)
+{
+	uint64_t now = get_time_ns();
+	unsigned long speed;
+	unsigned long delta;
+
+	if (now <= start_tm) {
+		pr_crit("tm mismatch");
+		return;
+	}
+
+	if (total < 0)
+		return;
+
+	/* convert to ms and add '1' to avoid div-by-zero */
+	delta = div_u64(now - start_tm, 1000000) + 1;
+
+	/* speed is bytes/s */
+	speed = div_u64(total * 1000, delta);
+
+	printf("] %llu bytes, %lu bytes/s", (unsigned long long)total, speed);
+}
+
 void init_progression_bar(loff_t max)
 {
 	printed = 0;
 	progress_max = max;
 	spin = 0;
+	start_tm = get_time_ns();
 	if (progress_max && progress_max != FILESIZE_MAX)
 		printf("\t[%*s]\r\t[", HASHES_PER_LINE, "");
 	else
-- 
2.36.1



