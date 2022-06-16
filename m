Delivery-date: Thu, 16 Jun 2022 15:49:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1ps5-003xes-CU
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 15:49:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1ps4-0006w7-Vw
	for lore@pengutronix.de; Thu, 16 Jun 2022 15:49:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9FXdWHIteTi1g9TjV4oF60X3N52dk6oZNMwVnGj480o=; b=kk5Ui6sKMWT/Pmq8Y7GP7VQbq9
	wx8JKuZcKdzBPeK5/nP2p+n8sMqoUsRj+Loq08Rgv3iJbG+3S+2VxvWcO3yOWbehw5dq0JsG0BcyJ
	7lyEHBPYSYdzXsHxbxOMDXueAafsNBaRjMCjo66+AyZdnQVKyO9QsQAXJiSDkO2kNRCMsv2kH1IwL
	h8rh7n/PEK4wPstKc3lSRlzBJC44WHbYwXmmiCuIso11YjDQhOtpRHhQ6nv6QnRnWsfs9Iau8BBef
	rmO1BP2sCrb5inwvQvLYb8mvzvoYiP31XcyhFDbIm7bSNcT84I9kyLDlj57nQcb2FzzWxAKKOH4Fi
	veAbdsOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pqd-002Ys0-Em; Thu, 16 Jun 2022 13:47:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pqU-002Yoo-NR
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 13:47:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o1pqQ-0006lx-63; Thu, 16 Jun 2022 15:47:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1o1pqO-000seT-1U; Thu, 16 Jun 2022 15:47:33 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1o1pqO-008UPt-FM; Thu, 16 Jun 2022 15:47:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 16 Jun 2022 15:47:30 +0200
Message-Id: <20220616134730.2023501-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_064738_803283_694E8CE1 
X-CRM114-Status: GOOD (  11.33  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] lib: parameter: Do not modify pointer returned from xstrdup()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The sequence

value_new = xstrdup(val);
value_new = strim(value_new)

is buggy because we not free the pointer we originally allocated. Fix
this by skipping the leading whitespaces from the original string.
The bug itself never triggered because the string is never freed. That
will be fixed in the next patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/parameter.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index adc3c7cdea..2c9da870a4 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -258,8 +258,8 @@ static int param_string_set(struct device_d *dev, struct param_d *p, const char
 	if (!val)
 		val = "";
 
-	value_new = xstrdup(val);
-	value_new = strim(value_new);
+	value_new = xstrdup(skip_spaces(val));
+	strim(value_new);
 	*ps->value = value_new;
 
 	if (!ps->set)
-- 
2.30.2



