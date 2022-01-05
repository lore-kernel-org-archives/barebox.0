Delivery-date: Wed, 05 Jan 2022 09:46:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n51vo-00BYYO-9a
	for lore@lore.pengutronix.de; Wed, 05 Jan 2022 09:46:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n51vm-0004ta-PV
	for lore@pengutronix.de; Wed, 05 Jan 2022 09:46:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ow22L1U4q6Paz8JnKS1OJfDiKFuLVPN3FlXqH0JkU1w=; b=1juLW3PIf/oK4c
	tNhl4RKrUrmsFB1p2kftOn3fD3VoS0PU0LlbteX+1ivC/SWA9H5Rj464cRp6mhbhmrwi1wd7pc0GL
	0XToJXSPiDwyk9299VazNCE3QG/x7saSYU2S2YmwtSwxKHD47AcT3wynlKp99hXYxhGqjZ0c33fIU
	bEKuf/OhfjjZnqpb3NHXA1Qn+WRgE+elVPzqcXl+ivn3GfZngL5NaTSzo+u64stVcTtiu4m1677nu
	DeX6UySBIl7BSM1o8yRVdcDHu5J1+qHAhwfqFWa0QJS2VuuvxIEsHb8Qurf5NuWQOJfR9yX2TUcM+
	awzl2uT4Q+8eew6TMkuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n51uG-00EFr8-I4; Wed, 05 Jan 2022 08:44:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n51uB-00EFq1-1f
 for barebox@lists.infradead.org; Wed, 05 Jan 2022 08:44:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n51u9-0004cJ-BV; Wed, 05 Jan 2022 09:44:21 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1n51u8-00BIHm-So; Wed, 05 Jan 2022 09:44:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  5 Jan 2022 09:44:20 +0100
Message-Id: <20220105084420.2691855-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_004423_122734_A188ACA5 
X-CRM114-Status: GOOD (  13.51  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] getopt: Add support for '+' in optstring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Stop option parsing at nonoptions when the first character of optstring is
'+'. This is analog to getopt(3).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/getopt.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/lib/getopt.c b/lib/getopt.c
index 55852ba133..356fc2ff4e 100644
--- a/lib/getopt.c
+++ b/lib/getopt.c
@@ -61,13 +61,24 @@ int getopt(int argc, char *argv[], const char *optstring)
 {
 	char curopt;   /* current option character */
 	const char *curoptp; /* pointer to the current option in optstring */
+	bool stop_nonopt = false;
+
+	if (*optstring == '+') {
+		stop_nonopt = true;
+		optstring++;
+	}
 
 	while(1) {
 		debug("optindex: %d nonopts: %d optind: %d\n", optindex, nonopts, optind);
 
-		if (optindex == 1 && argv[optind] && !strcmp(argv[optind], "--")) {
-			optind++;
-			return -1;
+		if (optindex == 1 && argv[optind]) {
+			if (!strcmp(argv[optind], "--")) {
+				optind++;
+				return -1;
+			}
+
+			if (stop_nonopt && *argv[optind] != '-')
+				return -1;
 		}
 
 		/* first put nonopts to the end */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

