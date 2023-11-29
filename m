Delivery-date: Wed, 29 Nov 2023 10:43:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8H6L-00D5C8-1K
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 10:43:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8H6L-0004aW-G7
	for lore@pengutronix.de; Wed, 29 Nov 2023 10:43:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cK+cRESFl6Z69hSpnHa94aGDF2F1eJlOf3oYhz+NlSI=; b=E0ACg5xboYcZV1izio6m+QELIG
	l59VU692IVoQXtxhpFNehsfmCxdVfmxc3DFEjR3J4vOhoFmk4ol29k9nAKL0Xaqh5iFK30wLzVTW3
	9HE+mpDivwJ3L9XgOwHh29uUBhzXwJV3G4rqhk7Lkra4Jp33IJ8kqr2hL2bFipi2b8MDuubzLPyjO
	rYPK70ZP+6TIXHy6WWbn8w8Jd2gDsjIhiFR0ZoISku1JJ2hB+w6m4QovfJb6SoQSZxeoeX6xQu1Vq
	Cp1LhqFu5/I8Xtkel20z4rIctAy3jDFYdrROQivmNYEhZ5q1qiSGhz6ublZAz1+A5qcz42Fuubhbs
	8Bx22Gcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8H59-007hzK-14;
	Wed, 29 Nov 2023 09:42:11 +0000
Received: from smtpout42.security-mail.net ([85.31.212.42] helo=fx302.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8H55-007hyV-32
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 09:42:09 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx302.security-mail.net (Postfix) with ESMTP id 4E1DBEC956
	for <barebox@lists.infradead.org>; Wed, 29 Nov 2023 10:42:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1701250924;
	bh=hE38QyDfU9o+NVRQGnw1QGFVHnIC9tipNdth4YoYp38=;
	h=From:To:Cc:Subject:Date;
	b=P6v/bkRaXj8/1ZGR0rPNcRTIuR6AHmp/x5v/FGdxp1IXxRB9smORSWRLsj+L7Jy4Q
	 sFg1gfYZcVjbz/qmUxZUa3TEWvXTbm1u0t9FNjjPQFtKurnn7oQFzrBUc0fp9wghMn
	 OtH0OyZYpusDsuiHf3ej+IsvduTtzB9cNSBeC79s=
Received: from fx302 (localhost [127.0.0.1]) by fx302.security-mail.net
 (Postfix) with ESMTP id 2ED8EED1D2; Wed, 29 Nov 2023 10:42:04 +0100 (CET)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx302.security-mail.net (Postfix) with ESMTPS id ACAF2ECD7A; Wed, 29 Nov
 2023 10:42:03 +0100 (CET)
Received: from junon.lin.mbt.kalray.eu (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPSA id 883B840360; Wed, 29 Nov
 2023 10:42:03 +0100 (CET)
X-Quarantine-ID: <qTQ1XSrFdk6y>
X-Virus-Scanned: E-securemail
Secumail-id: <549c.6567076b.ab8ac.0>
From: Yann Sionneau <ysionneau@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>
Date: Wed, 29 Nov 2023 10:41:49 +0100
Message-ID: <20231129094149.17290-1-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_014208_111700_F75CB42A 
X-CRM114-Status: UNSURE (   8.52  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
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
index 07eca96a9d..f34023f580 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -298,7 +298,8 @@ static int mci_read_block(struct mci *mci, void *dst, int blocknum,
 	ret = mci_send_cmd(mci, &cmd, &data);
 
 	if (ret || blocks > 1) {
-		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
+		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0,
+			      IS_SD(mci) ? MMC_RSP_R1b : MMC_RSP_R1);
 		mci_send_cmd(mci, &cmd, NULL);
 	}
 	return ret;
-- 
2.42.0







