Delivery-date: Thu, 25 Mar 2021 14:40:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPQDe-00087N-Ck
	for lore@lore.pengutronix.de; Thu, 25 Mar 2021 14:40:14 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPQDd-00089J-Dx
	for lore@pengutronix.de; Thu, 25 Mar 2021 14:40:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lx80s8xAM33APsXapwLPG0l9M1p4e9a7BaPWU4oQpvY=; b=iCa6f50e0Y2UG/zPbStSmgsLVJ
	2xCgIS0fIxPSFQbiXq7uNQ326j7y4WFZZWxrI53Hl3//D+rfZTl3QG0JGP9NHyTXl0rUmjHf/IO0m
	ty5h4kKzgsk6Y+2FGgoezr4eD1q1hBVGAs6zjjwCuDCK0tCwszUDRr0XOSAxeL40tniCW5UIQTNP+
	U5MsTDj67fuDxGAKS4lC5XtHnVVEARKbPBQ3c1Rj6hOoY2GyN9m1/JRUlv4i/5KuZw1hzWhbrYPa3
	XRPPvJb7CYHwZ7vM/m1r7wabJj6KdmZ2nf35vCabtp3sEHM7MPeNi39GoBvTHyrAC0QyotMwsRArd
	cLfvVawQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPQCf-001XVu-4O; Thu, 25 Mar 2021 13:39:13 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPQCV-001XUV-7F
 for barebox@lists.infradead.org; Thu, 25 Mar 2021 13:39:05 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 005C21A5413
 for <barebox@lists.infradead.org>; Thu, 25 Mar 2021 13:39:02 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KMOX9AW2
 for barebox@lists.infradead.org;
 Thu, 25 Mar 2021 13:39:02 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id D16B71A540A
 for <barebox@lists.infradead.org>; Thu, 25 Mar 2021 13:39:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id AA6A727E0815
 for <barebox@lists.infradead.org>; Thu, 25 Mar 2021 14:39:02 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 3yu9vALFEnce; Thu, 25 Mar 2021 14:39:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 5B97827E0814;
 Thu, 25 Mar 2021 14:39:02 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 5B97827E0814
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1616679542;
 bh=2tT3SQAZm+Ehvaoec2gQ8JmfkUjtQyc0y5d+FDyDoEE=;
 h=From:To:Date:Message-Id;
 b=nZNzGudnFZ1RdYRhIOQK2u58hIQjbWoHra3mNPrUpqphZNFvbcgx5i7lYU1ywnPB3
 yoVirN9+GjzH0iQglP73KYUMUBvpZecgL1WDPW1cW9cTUNEci3oUdMDqAiTP/gDnPb
 VMGYcmGVmZcGWrekA7LG5b0P9p5wbUPxom3nVZ3o=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id u3xrLJYQnWyy; Thu, 25 Mar 2021 14:39:02 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 4A43D27E06B0;
 Thu, 25 Mar 2021 14:39:02 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 25 Mar 2021 14:38:36 +0100
Message-Id: <20210325133837.30866-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210325133837.30866-1-jmaselbas@kalray.eu>
References: <20210325133837.30866-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_133903_510098_ABB111AA 
X-CRM114-Status: UNSURE (   9.35  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] clock: Remove time_beginning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The output of the `demsg -t` command will have broken timestamps for
every log entries written (in the log) before switching clock.

The function get_time_ns() is monotonic, thus setting time_beginning
with get_time_ns() when switching clocksource will always result in
time_beginning being greater than every timestamp set before.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 common/clock.c          | 7 -------
 common/console_common.c | 2 +-
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index e30c81a37..4dd9377de 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -17,12 +17,6 @@
 
 static uint64_t time_ns;
 
-/*
- * The first timestamp when the clocksource is registered.
- * Useful for measuring the time spent in barebox.
- */
-uint64_t time_beginning;
-
 static uint64_t dummy_read(void)
 {
 	static uint64_t dummy_counter;
@@ -229,7 +223,6 @@ int init_clock(struct clocksource *cs)
 	 */
 	cs->cycle_last = cs->read() & cs->mask;
 	current_clock = cs;
-	time_beginning = get_time_ns();
 
 	return 0;
 }
diff --git a/common/console_common.c b/common/console_common.c
index 48590c522..7e9973ed8 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -188,7 +188,7 @@ void log_print(unsigned flags, unsigned levels)
 	unsigned long last = 0;
 
 	list_for_each_entry(log, &barebox_logbuf, list) {
-		uint64_t diff = log->timestamp - time_beginning;
+		uint64_t diff = log->timestamp;
 		unsigned long difful;
 
 		if (levels && !(levels & (1 << log->level)))
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

