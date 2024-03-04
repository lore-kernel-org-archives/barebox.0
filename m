Delivery-date: Mon, 04 Mar 2024 20:07:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDeV-008dNl-00
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:07:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDeT-0002Fm-SC
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:07:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fl8yjPLCUQLApKU9KCEwKmaBKrhQqkhjf2UQR+7fs3Q=; b=tfF2kku4VHTwQDgYx6d32WJa+a
	XH8Jp8JBdHKdHGzYTDTVKuD4OunYcYEUGY56NzOReF4XNB+7rnruTODQ/JyabEcXRxvQ1bIbz2n0G
	u0wrzt4qYcD1BC2oVxKGlNB5ANm0G+pyxZqKonbM9lyi6wyeCoiy5P9a2dJZV6iSw0BNjrvNG5TRM
	F2osV/Hs/Jwx3CJ0yZfp9G+g08f4MhAV8Y4NTJeMsgahw80m8DcQQxCMdHYn4Z0rIW99QyAY8i5dg
	ea5plADALapDHK9kRJwO8sgp0JnpG25zgEwl9QB45Y+vHTvi0gPjkZX3c7p9A4li5+W4MSlvInXqd
	A/mAB6rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDdw-0000000AKwN-0scj;
	Mon, 04 Mar 2024 19:06:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaU-0000000AIVF-24XU
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fl8yjPLCUQLApKU9KCEwKmaBKrhQqkhjf2UQR+7fs3Q=; b=IbOApDmfrE8SPoTOCKL8kCQmun
	6BcAL6oduhetNHUQTYEsf61M7ENxi6u6AAU38L5++0MaD8i/hvGwd9rY0RH2vs/7EeHPxiJYZuF7e
	xHUFGyjkfwtCF9JKZiftUL5nV1tMyu4T7MXnUgCb78J1EAV60RpoXqXKJDm8j1S3rLNqM+fhvnNlT
	JFWM0oSh8MvaPi6lvCwH+Gn1a2a+dSpDTWplxZ4Nsq5iOAkSuYE08/YnYbHklZuV1v3tD/d4U+YC+
	EUzCKRrlUM6tN2dKaCUriYF1CDTB2X/8EYSUPf7oV+CChoLSg5OOkY6D48qAW2V5pjlJS9XFo7qP8
	fCYOh0ng==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaN-000000051vp-1g5m
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-00063K-Sv; Mon, 04 Mar 2024 20:02:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-004PI2-Cg; Mon, 04 Mar 2024 20:02:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYL-00Ed9V-0Y;
	Mon, 04 Mar 2024 20:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:32 +0100
Message-Id: <20240304190038.3486881-48-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190251_513202_9813F98A 
X-CRM114-Status: GOOD (  12.78  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 047/113] commands: time: reduce strjoin runtime, drop trailing space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

time concatenates its arguments to pass it to run_command in a
suboptimal manner: The destination string is traversed from the
beginning on every iteration due to strcat and we have a left-over
separator at the end, while it's only needed in-between.

In preparation for factoring the code out as a library strjoin function,
fix these shortcomings.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - swapped order with follow-up commit (Sascha)
---
 commands/time.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/commands/time.c b/commands/time.c
index 72647a3bb876..0a38db61845d 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -10,7 +10,7 @@
 static int do_time(int argc, char *argv[])
 {
 	int i, opt;
-	unsigned char *buf;
+	unsigned char *buf, *p;
 	u64 start, end, diff64;
 	bool nanoseconds = false;
 	int len = 1; /* '\0' */
@@ -34,13 +34,15 @@ static int do_time(int argc, char *argv[])
 	for (i = 0; i < argc; i++)
 		len += strlen(argv[i]) + 1;
 
-	buf = xzalloc(len);
+	p = buf = xmalloc(len);
 
-	for (i = 0; i < argc; i++) {
-		strcat(buf, argv[i]);
-		strcat(buf, " ");
+	for (i = 0; i < argc - 1; i++) {
+		p = stpcpy(p, argv[i]);
+		p = mempcpy(p, " ", strlen(" "));
 	}
 
+	stpcpy(p, argv[i]);
+
 	start = get_time_ns();
 
 	run_command(buf);
-- 
2.39.2



