Delivery-date: Mon, 15 Aug 2022 10:49:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVmt-006Eaj-Jp
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:49:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVmt-0001LX-3e
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:49:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wk9+/zmlxzFqewMZMOLy3IPXoroOXgNqUsiVMai3h8c=; b=xGqR5JgY+PvIRKDWDy3O5JIrex
	o1CGhAv0X4SrIaemVJ5qDsf0ALfGrwpIX8AAtxTFiDLzG17Fl6rfGAGOnyzvlfhsNlNBexacEX6YJ
	GalOX1UuVIyrM/Us+6zY57gsH+fNWqSpbZkxqxscKvNwjDQVFofTi+bcn1pPsHtJjNkQkPUbc65fU
	87zJWxYpJhbemY1NsmtpgjHeaZE121FEVpzQ/pmYc5T6o9c+90iqhRWy3qmWfsEHYhgL6vLFzLs0M
	/fpqcHU+KLhjagLQvi3FZ7FBsAeRcMOYnp7Y+fVZSO8FjNjmteNyQd3QIVayZ3ZbROoH0Mjs4sBz3
	FkbVUI3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVkm-00DMHo-PM; Mon, 15 Aug 2022 08:47:22 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVh2-00DJdz-Ei
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:33 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gYrn848742
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552955;
	bh=Wk9+/zmlxzFqewMZMOLy3IPXoroOXgNqUsiVMai3h8c=; l=1794;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=WFllyxCh80dXFT7vjW/WkRvyvnCp7dIkHljDCjbkUh85vCDr8lWxn7ilpxdu18ezD
	 E0CDAqLZlirjPq4Q1p2tNuJ748rp+NvOWbo295IsglqkPZyaHpu9wiMRg1TJVY9L/e
	 YvpNRyS9GWLzhRFzb4Pln/dkZCtcQFHaieU7Ax/aMUA1mfIHPhhZj2LYqKOAojQWeq
	 MYFaWdxJZuo3wALZP7YBTm6M0ihDTq0FZYA6cPX+wa/IR8MkV+BEM1OSVSmwoRklH1
	 Fqpx8wDbPDDfl3pIBRvH/dKQKu02zWM6vbpHTMVKaHogxBSAhGpAAK14LpWSUguaQV
	 FX10M6/T03aFA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gVsx2540845
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:31 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 4F22D11CD7; Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27F8gPXY811072
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg1-000EIe-MZ;
	Mon, 15 Aug 2022 10:42:25 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:05 +0200
Message-Id: <71267fc55b72c3d2c86e9b58ef95f3e2f3ba93f4.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_014328_917043_5D8288BF 
X-CRM114-Status: GOOD (  11.91  )
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
Subject: [PATCH v3 01/18] progress: add close_progress() to display some statistics
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
2.37.1



