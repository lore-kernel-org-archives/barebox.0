Delivery-date: Tue, 04 Apr 2023 11:11:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjch3-009Ygz-Qd
	for lore@lore.pengutronix.de; Tue, 04 Apr 2023 11:11:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjch3-0006pQ-JU
	for lore@pengutronix.de; Tue, 04 Apr 2023 11:11:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6QJSZ2uOKLSye32DWGgKbf19ANmS1yIhogsjdoYaYyc=; b=HKljhBGDn/kKPotBBqrZAOToEs
	yzBx2FDEKHDt1ACBY52mvN+9iJR8XWdELcCpDkLji7Ilt1++oenS7StjCauT6A6JrfeC/f7SU3h5u
	Zdwg6qlERM46K0eJkppsxSCiw5mu5qlV4VPFops/IBWLlFMlvWzhBVmpL1HAgbXQDJZKlDlWzBsd3
	XtPPkMiZgN8tbSBdE6fHTck/DoscetRRVHTe7WIO+qClPZ16ORYNJ9j/J5OnTVqjDBmVy2onMHHzp
	dVGf9bg2ZwPD5n9mELp8L1/9SowsKmK4cXKtbKsr4P/MeHklzJJ8HRCSOu1X5OLYF7CvKJu3mWU+L
	1LWSWbmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjccM-000dqS-2Q;
	Tue, 04 Apr 2023 09:06:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcbu-000djl-1N
	for barebox@lists.infradead.org;
	Tue, 04 Apr 2023 09:05:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pjcbq-00062x-3s; Tue, 04 Apr 2023 11:05:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pjcbp-008sNT-FJ; Tue, 04 Apr 2023 11:05:45 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pjcbo-007dfy-MT; Tue, 04 Apr 2023 11:05:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Apr 2023 11:05:42 +0200
Message-Id: <20230404090542.1820785-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_020550_647570_3BFAE59C 
X-CRM114-Status: GOOD (  10.82  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] hush: pacify clang -Wparentheses-equality warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Code is fine, but clang's -Wparentheses-equality warns when using double
parentheses in conditionals that don't do assignment. This aligns with
our code style as well, so change it to silence the warning.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/hush.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/hush.c b/common/hush.c
index 5138a1a45ae9..608c0e4937c1 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1837,7 +1837,7 @@ static char **make_list_in(char **inp, char *name)
 		p3 = insert_var_value(inp[i]);
 		p1 = p3;
 		while (*p1) {
-			if ((*p1 == ' ')) {
+			if (*p1 == ' ') {
 				p1++;
 				continue;
 			}
-- 
2.39.2



