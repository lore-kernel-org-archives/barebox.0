Delivery-date: Thu, 12 Mar 2026 15:44:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hHW-00ArNy-3D
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:44:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hHX-0004Op-4P
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:44:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hSu+fSSoR7hbzINhlXex3YnZxUehf13HkRgJ+KYWghE=; b=aKcRYe0C3hmByoDGnR/nr7vgaj
	JbNulPjKJsoQqRjhL2U7J9kJp1qm1+DXd/BD50W27BG2tqqz82sulDW2j7eYVsv4HvvJpWD+BbRDk
	KF4xOOejjFMod/t515J2fY2RyF+gO2rAh4fNgAVaqV7LhF/CW3L4NsmDhUo/a9o916xUAA/pOLUvG
	bW5M2lxYA0cXGsj47p5c4/gZ5zj5FgacUEyKaggCr2QPklNe+LwQO7tpzEAG90DcL6sPI31Zh5W7g
	Kv4JE0vpep77J244hdKDfklezwWbKsGXldqUt66ImhJ3fnnjS54roFVRwMs0LVqg6Bh2IUn2+6w0B
	T/BsoZEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hH8-0000000EEUk-1t45;
	Thu, 12 Mar 2026 14:44:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hH4-0000000EESB-3aza
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:44:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH3-00048O-6L; Thu, 12 Mar 2026 15:44:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH1-0052Nc-26;
	Thu, 12 Mar 2026 15:44:29 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH2-000000093bb-3o8T;
	Thu, 12 Mar 2026 15:44:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:22 +0100
Message-ID: <20260312144428.2158727-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144428.2158727-1-a.fatoum@pengutronix.de>
References: <20260312144428.2158727-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074431_000796_1A225824 
X-CRM114-Status: GOOD (  10.37  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] tftp: warn when seek-heavy access wastes network bandwidth
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Patterns that work ok-ish on local file systems like opening a file
repeatedly and/or seeking to different offsets can have catastrophic
performance on TFTP, because every seek must read and discard data up to
the desired offset.

Add a lightweight heuristic accumulating the total bytes discarded by
seeks and emit a one-time warning, once we exceed 4 MiB of wasted reads.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/tftp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/fs/tftp.c b/fs/tftp.c
index dd4804041cde..e5a276ed5cae 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -902,6 +902,7 @@ static int tftp_read(struct file *f, void *buf, size_t insize)
 
 static int tftp_lseek(struct file *f, loff_t pos)
 {
+	static loff_t seek_discard_total;
 	int ret = 0;
 	char *buf;
 	loff_t f_pos = f->f_pos;
@@ -931,6 +932,13 @@ static int tftp_lseek(struct file *f, loff_t pos)
 
 out_free:
 	free(buf);
+
+	seek_discard_total += f_pos - f->f_pos;
+	if (seek_discard_total > SZ_4M)
+		pr_warn_once("excessive seeking (%lld bytes discarded so far);"
+			     " consider copying file to RAM first?\n",
+			     seek_discard_total);
+
 	if (ret < 0) {
 		/*
 		 * Update f->pos even if the overall request
-- 
2.47.3



