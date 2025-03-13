Delivery-date: Thu, 13 Mar 2025 08:49:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdJP-00DTcA-2j
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:49:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdJO-0008HJ-79
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:49:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dzpldRN0qNcOoMF0ADrkw4zkxv4VM3azA/Z2wGuUopc=; b=2gKvWVJTw8K2t/RZsSk5mvYjuW
	YJVOGvRoV0Zx939ZNOEkW6ZNE0zF7F7fpJSH5yo9efRIQiOrEmllhCAAbviLQjWCtVupibJ/fxgl4
	Fm5jC63Dvqgb9HuOMUmNUR0CgdIki7W9Kic0jvnmHX2DEUROrX2YBqfymo8v4KSeoJhGCEw/DpoMB
	zZVvzPurZmLajxfeG5XnuFnFv/FJxVQmKJnYWzau5rk1JnjUmob6J1gUkAI2pz3U6ze662RvImoQx
	yZT3t8nZbEI9szwsw4TegU8xsYx75plND5LW23vzTR/tjvIHkT6kxhpAY4J2Tg5QAkGYjQPfViijw
	Sira5BFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdJ1-0000000AQh0-19LB;
	Thu, 13 Mar 2025 07:48:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsd5j-0000000AOUp-3lv3
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:34:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-0005mv-M3; Thu, 13 Mar 2025 08:34:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-005Uw2-1O;
	Thu, 13 Mar 2025 08:34:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-003pwb-14;
	Thu, 13 Mar 2025 08:34:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:34:32 +0100
Message-Id: <20250313073445.764875-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313073445.764875-1-a.fatoum@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_003455_947878_EB590B40 
X-CRM114-Status: UNSURE (   8.94  )
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
Subject: [PATCH 09/22] hush: fix make_string behavior on empty strings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

clang-analyzer believes that an empty string could be passed here,
leading to a NULL dereference.

Avoid this situation by allocating a len (2 byte) string instead
to hold "\n" as value in that case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/hush.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/hush.c b/common/hush.c
index 608c0e4937c1..3a213fc54591 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1885,6 +1885,10 @@ static char * make_string(char ** inp)
 		if (p != inp[n])
 			free(p);
 	}
+
+	if (!str)
+		str = xzalloc(len);
+
 	len = strlen(str);
 	*(str + len) = '\n';
 	*(str + len + 1) = '\0';
-- 
2.39.5



