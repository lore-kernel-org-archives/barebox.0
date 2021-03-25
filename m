Delivery-date: Thu, 25 Mar 2021 14:40:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPQDc-00086f-G9
	for lore@lore.pengutronix.de; Thu, 25 Mar 2021 14:40:12 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPQDb-00088q-GR
	for lore@pengutronix.de; Thu, 25 Mar 2021 14:40:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6ZK3KpW9sgR9exSMJps/CU/zj3qJrHOX5rwdvHg7y+4=; b=Kw7gxSLLaqCeSvBCPcTs7C7Qn1
	2IhsXeSQimaWj44CFcQIwOg4YPpcnZdCl1popQuCiJ0M3ANyxllggyX/urMqeAtKX+nM9goszp9BW
	ajmfLRr42mDgIbni9aihzpabcpdpHFEs2vxLGPS2n2M7UybOF4cgzcC3qsDlIWcHtxUdHnFwc4m9R
	Vt0nMrKhfMKhhEsqihNE/1yD8ORB/707YS9tkeksWikB09PUiNa6Wns1XvF1Y1hpMqLR/kD9QWbJw
	l13iS6JZvWXeLfY2pvKbEoq0XBozH/N6c7et6upYYrOWSgXDUbSbGA3oo42Cf4jns7U6CUIHp+EZn
	eHOgC8kQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPQCh-001XWg-J7; Thu, 25 Mar 2021 13:39:16 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPQCX-001XUw-5g
 for barebox@lists.infradead.org; Thu, 25 Mar 2021 13:39:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id E97271A540C
 for <barebox@lists.infradead.org>; Thu, 25 Mar 2021 13:39:04 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KMOX9CEE
 for barebox@lists.infradead.org;
 Thu, 25 Mar 2021 13:39:04 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id C67501A540A
 for <barebox@lists.infradead.org>; Thu, 25 Mar 2021 13:39:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 9BFDB27E0815
 for <barebox@lists.infradead.org>; Thu, 25 Mar 2021 14:39:04 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id YUyCZzWLkkaE; Thu, 25 Mar 2021 14:39:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 46C5627E0814;
 Thu, 25 Mar 2021 14:39:04 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 46C5627E0814
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1616679544;
 bh=VcYC+gIborKdlVULKoO9Ljn2k8l5tnSB136Y13iELjg=;
 h=From:To:Date:Message-Id;
 b=SaG/G7lIaifb0ofnVEMZnFP/gozn/iw+6boaCyC6734YQ/gHtDlN2+kxr2D6n1M4m
 5XEjx+RNkhLcoZLUvmaAJTTsrB4zZhyc3gsni0X0xofaz+Ewcyr7DIgcqFkrJURkmc
 E8/e9jzBjoC9YYd4TOKRDD29fN6ubWMEWjQwjM2Q=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id VICzeZsn8gO4; Thu, 25 Mar 2021 14:39:04 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 34D3E27E06B0;
 Thu, 25 Mar 2021 14:39:04 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 25 Mar 2021 14:38:37 +0100
Message-Id: <20210325133837.30866-4-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210325133837.30866-1-jmaselbas@kalray.eu>
References: <20210325133837.30866-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_133905_764473_B6B37C8B 
X-CRM114-Status: UNSURE (   8.68  )
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
Subject: [PATCH 4/4] common: common_console: Rework log_print
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since time_beginning has been removed there is no reason to use a
variables called `diff` or `diff_ul`, there are respectively renamed
to `time_ns` and `time`.
Also remove the test for null timestamp.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 common/console_common.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index 7e9973ed8..1e4bf87b1 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -188,8 +188,8 @@ void log_print(unsigned flags, unsigned levels)
 	unsigned long last = 0;
 
 	list_for_each_entry(log, &barebox_logbuf, list) {
-		uint64_t diff = log->timestamp;
-		unsigned long difful;
+		uint64_t time_ns = log->timestamp;
+		unsigned long time;
 
 		if (levels && !(levels & (1 << log->level)))
 			continue;
@@ -201,21 +201,19 @@ void log_print(unsigned flags, unsigned levels)
 		if (flags & BAREBOX_LOG_PRINT_RAW)
 			printf("<%i>", log->level);
 
-		do_div(diff, 1000);
-		difful = diff;
-
-		if (!log->timestamp)
-			difful = 0;
+		/* convert ns to us */
+		do_div(time_ns, 1000);
+		time = time_ns;
 
 		if (flags & (BAREBOX_LOG_PRINT_TIME | BAREBOX_LOG_DIFF_TIME))
 			printf("[");
 
 		if (flags & BAREBOX_LOG_PRINT_TIME)
-			printf("%10luus", difful);
+			printf("%10luus", time);
 
 		if (flags & BAREBOX_LOG_DIFF_TIME) {
-			printf(" < %10luus", difful - last);
-			last = difful;
+			printf(" < %10luus", time - last);
+			last = time;
 		}
 
 		if (flags & (BAREBOX_LOG_PRINT_TIME | BAREBOX_LOG_DIFF_TIME))
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

