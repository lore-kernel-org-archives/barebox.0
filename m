Delivery-date: Mon, 11 Aug 2025 14:30:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfN-009Kjn-1l
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRf3-00066k-VA
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+N3siqonQ7vnMpnhzwkT8BpcQmAMhPTuDiuoF5TdENE=; b=FwnlQhdZEnxCQeFk58+GaVYlc4
	YbfQcbqd2VoSIBKRBanDte3zjgTR5cV7JjGREn+3j9K6PK7fjj93NyMwRrMHYPyDWJYD1esVvpuIJ
	lU0eVA1KvrUMbS+8jvhgwQHX+wdFurzYLz9QvdbtiXaX3vFkU/Zs+ytVCFxA6+t+Lch7qUZGIG/9Q
	KFPvbWl7x5QLxJYmakFHx9+QKPQmFSAEMeRWbXzknd47Nq27S6eTx9nSJmTkvpBjQACX80pY2vCIu
	2TXCnMaIV96DV0jOtMcoXQSD8lilstSoTYqnyGSjcOY+/es5TKRFe6JPgSfhqOuRIvAoB2VO+SUAo
	bee8IxbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdy-00000007dyG-1bPY;
	Mon, 11 Aug 2025 12:28:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdg-00000007dYS-0QCL
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRde-0004WP-Ro; Mon, 11 Aug 2025 14:28:30 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:58 +0200
Message-Id: <20250811122824.1667791-19-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052832_135407_6C35A847 
X-CRM114-Status: GOOD (  10.61  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 18/44] commands: uptime: enable structured I/O
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The uptime command can format the uptime into a human readable time
string. We have no API to capture this output, so let's add one by using
structured I/O.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/uptime.c | 34 ++++++++++++++++++++++------------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/commands/uptime.c b/commands/uptime.c
index d67538631c8f..7d7d8fa9be70 100644
--- a/commands/uptime.c
+++ b/commands/uptime.c
@@ -4,26 +4,31 @@
 #include <command.h>
 #include <clock.h>
 #include <getopt.h>
+#include <structio.h>
 #include <linux/math64.h>
 
+#define BUFSIZE		128
+
 #define NSEC_PER_MINUTE	(NSEC_PER_SEC * 60LL)
 #define NSEC_PER_HOUR	(NSEC_PER_MINUTE * 60LL)
 #define NSEC_PER_DAY	(NSEC_PER_HOUR * 24LL)
 #define NSEC_PER_WEEK	(NSEC_PER_DAY * 7LL)
 
-static bool print_with_unit(u64 val, const char *unit, bool comma)
+static bool print_with_unit(char *buf, u64 val, const char *unit, bool comma)
 {
 	if (!val)
 		return comma;
 
-	printf("%s%llu %s%s", comma ? ", " : "", val, unit, val > 1 ? "s" : "");
+	snprintf(buf, BUFSIZE,
+		 "%s%llu %s%s", comma ? ", " : "", val, unit, val > 1 ? "s" : "");
 	return true;
 }
 
 static int do_uptime(int argc, char *argv[])
 {
+	char buf[BUFSIZE];
 	u64 timestamp, weeks, days, hours, minutes;
-	bool comma = false;
+	bool nanoseconds = false, comma = false;
 	int opt;
 
 	timestamp = get_time_ns();
@@ -31,8 +36,8 @@ static int do_uptime(int argc, char *argv[])
 	while((opt = getopt(argc, argv, "n")) > 0) {
 		switch(opt) {
 		case 'n':
-			printf("up %lluns\n", timestamp);
-			return 0;
+			nanoseconds = true;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -41,24 +46,29 @@ static int do_uptime(int argc, char *argv[])
 	if (optind != argc)
 		return COMMAND_ERROR_USAGE;
 
-	printf("up ");
+	stnoprintf("up ");
+
+	if (nanoseconds) {
+		stprintf_single("uptime", "%lluns", timestamp);
+		return 0;
+	}
 
 	weeks = div64_u64_rem(timestamp, NSEC_PER_WEEK, &timestamp);
 	days = div64_u64_rem(timestamp, NSEC_PER_DAY, &timestamp);
 	hours = div64_u64_rem(timestamp, NSEC_PER_HOUR, &timestamp);
 	minutes = div64_u64_rem(timestamp, NSEC_PER_MINUTE, &timestamp);
 
-	comma = print_with_unit(weeks, "week", false);
-	comma = print_with_unit(days, "day", comma);
-	comma = print_with_unit(hours, "hour", comma);
-	comma = print_with_unit(minutes, "minute", comma);
+	comma = print_with_unit(buf, weeks, "week", false);
+	comma = print_with_unit(buf, days, "day", comma);
+	comma = print_with_unit(buf, hours, "hour", comma);
+	comma = print_with_unit(buf, minutes, "minute", comma);
 
 	if (!comma) {
 		u64 seconds = div64_u64_rem(timestamp, NSEC_PER_SEC, &timestamp);
-		print_with_unit(seconds, "second", false);
+		print_with_unit(buf, seconds, "second", false);
 	}
 
-	printf("\n");
+	stprintf_single("uptime", "%s", buf);
 
 	return 0;
 }
-- 
2.39.5



