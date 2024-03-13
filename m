Delivery-date: Wed, 13 Mar 2024 20:56:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUiU-004oVD-2a
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 20:56:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUiU-00041G-8A
	for lore@pengutronix.de; Wed, 13 Mar 2024 20:56:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vCguM6hQHWhVddZYpoW3kErXIfhWGuoMkKPzVfJ6YwE=; b=BXDAv0LCrUL5cWwsZZiu4BtMBo
	YjHdkMivJf4jm8MvXX6YNVapznqi92yGnQt2UakoILxYTEEdg+czIbOX/Nb0OgK5m1zPOlwmU7cA5
	JuPZdjnYehh7OKODWESsZA/CTSQSrryyCpCNm6EjYVm5b4fQkiw+MDdYEpk7mvhB7/qhNgDk6JTdR
	YlKig2DWUH7dQh+wzj+Z4LrEcj/shqUMO4a/IYIBHQVx4qnY35t6zGy5aiekTHuAn9DSO6lCUBqoA
	tJb+m5NQqV1tXtNXNP0pWgK9Uo2u0aZylKvkNHlAt//RuQGJQq56E93Y9OGQw8uJvWykdKwlUbsp4
	7Toh3/OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUhw-0000000BieN-3qZT;
	Wed, 13 Mar 2024 19:56:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUht-0000000BicQ-01Tw
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 19:56:10 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rkUhr-00037i-Sz
	for barebox@lists.infradead.org; Wed, 13 Mar 2024 20:56:07 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Mar 2024 20:56:06 +0100
Message-Id: <20240313195606.3911219-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313195606.3911219-1-m.felsch@pengutronix.de>
References: <20240313195606.3911219-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_125609_251954_6418D156 
X-CRM114-Status: UNSURE (   9.80  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] common: barebox_banner: fix missing newline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Albeit the banner is shown correctly due to following printf(), the
dmesg() output isn't. This cause the next log buffer print printed on
the same line as the "Buildsystem version:" print. Fix this by adding a
newline afterwards.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/version.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/version.c b/common/version.c
index 465e22c7f52e..0cac5ee609e6 100644
--- a/common/version.c
+++ b/common/version.c
@@ -22,7 +22,7 @@ void barebox_banner (void)
 	printf("\n\n");
 	pr_info("%s\n", version_string);
 	if (strlen(buildsystem_version_string) > 0)
-		pr_info("Buildsystem version: %s", buildsystem_version_string);
+		pr_info("Buildsystem version: %s\n", buildsystem_version_string);
 	printf("\n\n");
 	pr_info("Board: %s\n", barebox_get_model());
 }
-- 
2.39.2



