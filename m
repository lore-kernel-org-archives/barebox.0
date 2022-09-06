Delivery-date: Tue, 06 Sep 2022 12:22:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVVjG-008VNK-8N
	for lore@lore.pengutronix.de; Tue, 06 Sep 2022 12:22:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVVjG-0004EN-8M
	for lore@pengutronix.de; Tue, 06 Sep 2022 12:22:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tQEh2rPhzn7SWQ8/KG0A+e9MZy9PdZKqJpCRGOWJ49A=; b=hwEvU2afhEXW5ks9GiZTLvFip6
	8dF+uOz2JXwONn8USBqLQK0AWdS9ZDA6Sz/vsPavyO5M9uBzMro81KqNoAh65NFqjYid7zcKNNsIx
	Lb0cahR04Ck2ojsw8nzeHk2zwKX3eTJT5prgXO6a8R5uer8l43d01LH/RTQ+H+r17Jroy9smlx1Sz
	AHih66RHgKHwM+hASeedPq7amAs3s3WE2v+fnQyCPZDOKxJ1ncmt9xz0cAQtMdGKNyvs1RTkHTIt3
	hA/VHj7Cptpow4uTJSAW0cEs69eDITbRmNqc0Vk4z06zA+5tx9CspmqNY7m4g8eZZzWQ1uzd2pJqH
	8ks1K96g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVVhb-00CMnl-5C; Tue, 06 Sep 2022 10:21:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVVhR-00CMgw-Ng
	for barebox@lists.infradead.org; Tue, 06 Sep 2022 10:20:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oVVhN-0003gz-JK; Tue, 06 Sep 2022 12:20:53 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oVVhL-004ESn-0a; Tue, 06 Sep 2022 12:20:52 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oVVhL-005j0I-HJ; Tue, 06 Sep 2022 12:20:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  6 Sep 2022 12:20:48 +0200
Message-Id: <20220906102049.1364561-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220906102049.1364561-1-s.hauer@pengutronix.de>
References: <20220906102049.1364561-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_032057_800280_3A7E37D9 
X-CRM114-Status: UNSURE (   9.90  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] ratp: getenv: Do not crash on non-existing variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

getenv() returns NULL on non-existing variables. Replace result with
empty string to avoid doing strlen() on a NULL pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ratp/getenv.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/ratp/getenv.c b/common/ratp/getenv.c
index 7b38d2e363..9617ab1b43 100644
--- a/common/ratp/getenv.c
+++ b/common/ratp/getenv.c
@@ -32,6 +32,9 @@ static int ratp_cmd_getenv(const struct ratp_bb *req, int req_len,
 	value = getenv(varname);
 	free(varname);
 
+	if (!value)
+		value = "";
+
 	dlen = strlen(value);
 
 	*rsp_len = sizeof(struct ratp_bb) + dlen;
-- 
2.30.2



