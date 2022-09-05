Delivery-date: Mon, 05 Sep 2022 17:36:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE9h-007eme-Ff
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:36:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE9h-0002KA-Fn
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:36:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XDuqOlTecCo7px4KAbdtRyG4/OAb6lyMOEmfbJwzwm4=; b=V+d84yf9gBR2NZsYCdiYCoVOZa
	0JOfudLdZ/PUi/p1OL+L18hDCnT0DUgVjQr6aHYjwUizKoQlVRIBhew4iEhdmCcyaFG4fuZWNu54+
	9SQJMSX1JpjVA94weowsYKt08bMUv3iXQLMx4oGkHX2h/7evPUahhH2LH+TqCVUiZOheqBAiyItU8
	YAjUfa6NRgBKA0PGOombf1UCxnVKP7Cc2JC0kupJuLH6r7oKJ4YfnB94/9BlB3v0f1BZ0joJKlVOe
	EhDHCK+CEZN0CpW2PUZe1IO8dJIFqmnKWzaI47e/ZlRtutjNTQVvMQ6UrAip02vGr1xywfF91GtlT
	CoTBjCJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVE7u-0062dc-VL; Mon, 05 Sep 2022 15:35:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8pz-00H40R-Ab
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pq-0008FK-3j; Mon, 05 Sep 2022 11:56:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pn-0042G6-9z; Mon, 05 Sep 2022 11:56:05 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002WeR-1a; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:42 +0200
Message-Id: <20220905095557.596891-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_025615_717336_E3F32CA6 
X-CRM114-Status: GOOD (  11.77  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 17/32] password: avoid static analyzer false positive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

default_passwd is a compile-time constant. In case, where it's unset,
the function will early-return and the static analyzer will warn about
len being initialized, but never used, move the length calculation later
to avoid this false positive.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/password.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/password.c b/common/password.c
index aea7c7ff5d21..55b2d1093ab9 100644
--- a/common/password.c
+++ b/common/password.c
@@ -148,8 +148,7 @@ static unsigned char to_hexa(unsigned char c)
 
 static int read_default_passwd(unsigned char *sum, size_t length)
 {
-	int i = 0;
-	int len = strlen(default_passwd);
+	int len, i = 0;
 	unsigned char *buf = (unsigned char *)default_passwd;
 	unsigned char c;
 
@@ -159,6 +158,7 @@ static int read_default_passwd(unsigned char *sum, size_t length)
 	if (!sum || length < 1)
 		return -EINVAL;
 
+	len = strlen(default_passwd);
 	for (i = 0; i < len && length > 0; i++) {
 		c = buf[i];
 		i++;
-- 
2.30.2



