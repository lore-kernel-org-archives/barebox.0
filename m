Delivery-date: Wed, 29 Nov 2023 10:38:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8H1T-00D4wO-2d
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 10:38:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8H1T-0003IV-Ru
	for lore@pengutronix.de; Wed, 29 Nov 2023 10:38:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6Ch2cA8T/DtfbZQH3l60C/CXzuLcd2kmkuFXjz5PEZ0=; b=UTRHcEP+DUod20btoxXUMgv5S2
	R644Y8iF/dBbkl4slkuccq9d0aJStHX402Ona7nhK21PJ48N7YaHM6IT9NLIIyqOtJ7biCoDKcATW
	KPkkFKXXwuNA6qtQc8rHpTdHP97BBW8KE2BQaA9tKDBoG4tu6Qb9b7GBUf8wq81NDtz9I9Ln6LTxd
	aNcnMyeWVrWNOqJUwxyIXlTrMA7GlJKL+NOukBlqNtZEQvxYhbzTehB7Bx4QIpUyWRzOHgLXy2BKY
	zXNa6M2FCWGtH7d/Mxx3PeZ0IdkW7DQ5X2JS4ccdDHhN2aEso+Jk1eeuWEWzLYZvYum19+NRnvD9Q
	YUtkD0dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8H0A-007h3J-1W;
	Wed, 29 Nov 2023 09:37:02 +0000
Received: from smtpout146.security-mail.net ([85.31.212.146] helo=fx601.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8H06-007h2E-1I
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 09:37:00 +0000
Received: from localhost (fx601.security-mail.net [127.0.0.1])
	by fx601.security-mail.net (Postfix) with ESMTP id 11A01349BEE
	for <barebox@lists.infradead.org>; Wed, 29 Nov 2023 10:36:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1701250612;
	bh=GMTV5W0f11jXRr2TJocW5WTsbMk6E1DReYBf7mS3ywU=;
	h=From:To:Cc:Subject:Date;
	b=NO5IOhVi65QWftX/gl/ELjX2z9Wc3Et+XtJy3B+x4JtValXw8Ni2+gmh8p1Ot/bv+
	 I7GOtSWIH1usAlM30dOiHdXPPs07APInjXeJFXTVrpgeVWQHYEwhKqDEE+KP2eip9v
	 cQPPfUtzrQQYUkAv/keMDAtjpZwaNYueaAL41T/I=
Received: from fx601 (fx601.security-mail.net [127.0.0.1]) by
 fx601.security-mail.net (Postfix) with ESMTP id D05CF349B55; Wed, 29 Nov
 2023 10:36:51 +0100 (CET)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx601.security-mail.net (Postfix) with ESMTPS id 1FB1F349352; Wed, 29 Nov
 2023 10:36:49 +0100 (CET)
Received: from junon.lin.mbt.kalray.eu (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPSA id BEF9B40360; Wed, 29 Nov
 2023 10:36:48 +0100 (CET)
X-Quarantine-ID: <zXLyn-9uKUkM>
X-Virus-Scanned: E-securemail
Secumail-id: <454.65670631.19710.0>
From: Yann Sionneau <ysionneau@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>
Date: Wed, 29 Nov 2023 10:36:42 +0100
Message-ID: <20231129093643.16383-1-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_013658_719841_152B0133 
X-CRM114-Status: UNSURE (   8.40  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mci: eMMC responds to CMD12 with R1 in case of read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

eMMC specification JESD84-B51 states page 126
table 49 — Basic commands (class 0 and class 1) that
CMD12 (STOP_TRANSMISSION) response is R1 for read cases
and R1b for write cases.

Fix wrong reponse type in eMMC read cases.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---
 drivers/mci/mci-core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 3cd6fc73f4..f34023f580 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -298,7 +298,8 @@ static int mci_read_block(struct mci *mci, void *dst, int blocknum,
 	ret = mci_send_cmd(mci, &cmd, &data);
 
 	if (ret || blocks > 1) {
-		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1);
+		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0,
+			      IS_SD(mci) ? MMC_RSP_R1b : MMC_RSP_R1);
 		mci_send_cmd(mci, &cmd, NULL);
 	}
 	return ret;
-- 
2.42.0







