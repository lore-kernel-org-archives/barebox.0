Delivery-date: Thu, 08 Sep 2022 11:31:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWDt4-00AX6V-Ej
	for lore@lore.pengutronix.de; Thu, 08 Sep 2022 11:31:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWDt5-0001nM-1H
	for lore@pengutronix.de; Thu, 08 Sep 2022 11:31:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tQEh2rPhzn7SWQ8/KG0A+e9MZy9PdZKqJpCRGOWJ49A=; b=GDrIVQfDdwh29+pcxrHjduODWv
	almYjjbGiZh4eal8JSbFDE3o5KfNPpQaJydH/PDFNDoDNGGM/2fNbhgT+e0XLDUBdvsCjFPl9iUPk
	CjpfxPxH5v//5li35rvhmGKaoupSoMFAxOMk4h5PjZGhfW5EKds9JKPz5k9WhcLOBRFaeSMnKHoKn
	2ARvITnTsaTTOseFsY/hqoyauqUUArAacmAMOeIs0Mwm6/6waSgIC6duMVOa+bkbSbnK6eIyJZZs0
	NaocYAjmPZHIAGdbAa7vkhnUyTJCe0mb3vvQ30ojj8I/fRJXgGmkBR3XCtaZintCwLqBTQ1QAoJfP
	pjcIUZ6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWDrY-001gU3-KG; Thu, 08 Sep 2022 09:30:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWDrQ-001gPY-7a
	for barebox@lists.infradead.org; Thu, 08 Sep 2022 09:30:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oWDrM-0001Ic-UO; Thu, 08 Sep 2022 11:30:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oWDrK-004bOh-7d; Thu, 08 Sep 2022 11:30:08 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oWDrK-00CjeT-Fk; Thu, 08 Sep 2022 11:30:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  8 Sep 2022 11:30:03 +0200
Message-Id: <20220908093005.3035259-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220908093005.3035259-1-s.hauer@pengutronix.de>
References: <20220908093005.3035259-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_023012_293280_903E66DB 
X-CRM114-Status: GOOD (  10.10  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/5] ratp: getenv: Do not crash on non-existing variables
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



