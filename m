Delivery-date: Mon, 02 Dec 2024 12:40:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4n9-0034Fh-2B
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 12:40:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4n9-00047B-LA
	for lore@pengutronix.de; Mon, 02 Dec 2024 12:40:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YfLS2Mxzo1gf1cCYUydENxJ6ueJrppNFQh9mNJm4o0g=; b=mdGVyIVIixcAMynvqgCHObrT1o
	laDsG8c2zzOiWl6fLM6K+eUvzYeNIne0zygZDg3VkpoRGrGogsYOCmS9mGVWehEHfVj1U7sXtlRJK
	EepwHqvJ/66HQb5+BtPTUn1azP1QnS1dAHX9ayFXsvFUuzOg7OT9I9WZfg9jjO0VYli0+gvyeKKot
	U0WSAkVHP/1X7Mz2HFAgis/qmNVyynI1/ZoxYhOuAKH2eEAhsJuE+vIfDB0OZ/+jVQkowRE/u+cGw
	6kDzoti2dMnrzGJI7d2xRKPSjBsyfJJ1+UjhMRNsgaz8JjmJgpRpHwmXh6psEblobfM+kPT37Yxqp
	rB8FRlIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4mm-00000005wJI-27sk;
	Mon, 02 Dec 2024 11:40:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4k7-00000005vir-3YQv
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 11:37:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI4k6-0003HL-DU; Mon, 02 Dec 2024 12:37:30 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI4k5-001HzU-1N;
	Mon, 02 Dec 2024 12:37:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI4k6-002VyM-0M;
	Mon, 02 Dec 2024 12:37:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Dec 2024 12:37:29 +0100
Message-Id: <20241202113729.599540-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241202113729.599540-1-a.fatoum@pengutronix.de>
References: <20241202113729.599540-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_033731_897498_FA7ECD5D 
X-CRM114-Status: UNSURE (   9.42  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fixup! stdio: stub out basprintf and friends when built for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

vsprintf: fix false positive about use of uninitialized variable

barebox vasprintf only writes to its strp argument, when a buffer could
be allocated. If out of memory (or in PBL without malloc), -1 is
returned after vsnprintf determines the length.

GCC 13.1.1 seems not able to track use of strp across vsnprintf
correctly though resulting in a bogus warning:

  ./lib/vsprintf.c: In function 'bvasprintf':
  ./lib/vsprintf.c:961:16: warning: 'p' may be used uninitialized
                           [-Wmaybe-uninitialized]
    961 |         return p;
        |                ^

Fix this by adding an explicit early exit for the PBL case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/vsprintf.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index e421a4352a12..edc3f4aa4fe0 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -933,6 +933,10 @@ int vasprintf(char **strp, const char *fmt, va_list ap)
 	va_list aq;
 	char *p;
 
+	/* Silence -Wmaybe-uninitialized false positive */
+	if (IN_PBL)
+		return -1;
+
 	va_copy(aq, ap);
 	len = vsnprintf(NULL, 0, fmt, aq);
 	va_end(aq);
-- 
2.39.5



