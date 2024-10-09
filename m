Delivery-date: Wed, 09 Oct 2024 16:11:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPm-002Fqh-2X
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 16:11:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPl-0004Al-Tm
	for lore@pengutronix.de; Wed, 09 Oct 2024 16:11:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hWLk0qhaJQLJLxjZ6FrVhIdSrCEpqeZxoI7+fCe+waM=; b=dtw2SwX8UuQ1sAECUWGE+3qYhV
	gAlOBFa2JYJJb521P9BnHXJ5J5NSnXbYwmYsOrxC0jVHd6maGfa6NEbhDDmy5kzPjl+7C6dClESv/
	NREU5SpKN8f2h1PYlS77dTLshECQIND2Py3t+BbJ66vT/hGjbWXOZuTn0EwjEpVhcUYmPQBHHTM5e
	AZE8yiLNnpnPRuj5z++7jgxQhtqIhSMps0gmBNOExZNk4mUURvr5XjxxqJV+tGS4hIann2gC8TCKD
	Zzx10mh392XQP5WP1hzEpSwBvL4YxfeCi9pclCgWmsYR2SuBbyuHmnjLLxM7Pqj/5iMXj0WYa6O3r
	PpCwbYGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syXPB-00000009XMZ-2j7y;
	Wed, 09 Oct 2024 14:11:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syXGI-00000009VfX-3KUs
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 14:02:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGH-0002qj-6K; Wed, 09 Oct 2024 16:01:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-000cNY-Op; Wed, 09 Oct 2024 16:01:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-008Mdc-2D;
	Wed, 09 Oct 2024 16:01:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2024 16:01:52 +0200
Message-Id: <20241009140155.1990882-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
References: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_070158_999937_6E738595 
X-CRM114-Status: UNSURE (   8.91  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] keytoc: return error on failure to set PKCS#11 pin
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ret is used uninitialized when ENGINE_ctrl_cmd_string() fails.
Fix this by explicitly setting it to -1 to indicate an error.

Fixes: 128ad3cbe043 ("scripts: Add rsatoc tool")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/keytoc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 5041c09a0e9f..d5c8aa2e1216 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -123,6 +123,7 @@ static int engine_init(ENGINE **pe)
 
 	if (key_pass) {
 		if (!ENGINE_ctrl_cmd_string(e, "PIN", key_pass, 0)) {
+			ret = -1;
 			fprintf(stderr, "Cannot set PKCS#11 PIN\n");
 			goto err_set_rsa;
 		}
-- 
2.39.5



