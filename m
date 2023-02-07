Delivery-date: Tue, 07 Feb 2023 17:22:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPQjv-00HBX3-21
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 17:22:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPQjs-0003cn-Ai
	for lore@pengutronix.de; Tue, 07 Feb 2023 17:22:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iFyjSqEAjcN9MWl+p4UVeZOhqRQAV2MYFgvZs7A6iCc=; b=bXpi4wKgsYxWSJ8vKoidWQiDiO
	GrHNct1cL9zD+oqSk1BM2Qe8qRSNc66VZIFOCfpXA5NeRr2whGElOoDhXJlvVLtU7WzN5h+O7ZTvx
	F1yPcCbWQ7XBd6C6AmsuKwHUCCt+R2rdVZCYgzDr75zbYjfACPyYz3DNa9eaY8hZl/NsOsbnuPs0+
	ZcRGrRGJ+QHas6fFw8djPPViH0IsuBctCfeqTIAXZD8x9guVhvh3+GMKh7WJFREnVi58dKg45gD3Y
	xLgezO2KBI/IadUZ1zYLeovf6aQpBpCI2LTQ5UA0jVNMV1PEyZtbmqo+XznvURnsRNC0rPHojZzKH
	BRKDJHHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPQie-00Cnym-O0; Tue, 07 Feb 2023 16:21:20 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36] helo=fx306.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPQiQ-00Cnt9-Bk
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 16:21:11 +0000
Received: from localhost (fx306.security-mail.net [127.0.0.1])
	by fx306.security-mail.net (Postfix) with ESMTP id 9BEF035CE2E
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:03 +0100 (CET)
Received: from fx306 (fx306.security-mail.net [127.0.0.1])
	by fx306.security-mail.net (Postfix) with ESMTP id 837CA35CDEA
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:03 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <28ab.63e27a6f.2d628.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx306.security-mail.net (Postfix) with ESMTPS id 2E8C835CD9E
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:03 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id 15E5427E0506;
	Tue,  7 Feb 2023 17:21:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id F3CE927E0508;
	Tue,  7 Feb 2023 17:21:02 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu F3CE927E0508
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1675786863;
	bh=iFyjSqEAjcN9MWl+p4UVeZOhqRQAV2MYFgvZs7A6iCc=;
	h=From:To:Date:Message-Id;
	b=PIh0WK45LOMq1MSoGGUPiC/b+EMM9onNOTUQfsRq/RuNDknzlNMs+xs+feoSYV+N0
	 HceNGZ4N5/oocoVUzmr8uxw7bPCn47FaX3Crw5k6MQ+Npo98czvkGpYV5sAqWkF1h2
	 iFq1M5pcsmWV6AJ4QP+Z9WTGenpXpjwC9m/AJJE8=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id LJOOxUJpE868; Tue,  7 Feb 2023 17:21:02 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id D948527E0506;
	Tue,  7 Feb 2023 17:21:02 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue,  7 Feb 2023 17:20:55 +0100
Message-Id: <20230207162055.10050-5-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230207162055.10050-1-jmaselbas@kalray.eu>
References: <20230207162055.10050-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_082106_551170_9DB8C29A 
X-CRM114-Status: GOOD (  11.08  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 5/5] ratp: Increase the initial RTO to 200ms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The initial value for RTO is 100ms which might be a bit low. From the
RFC916 the RTO is expected to have a lower and upper bound but values
are not specified.  The RFC916 also define the calculation of the RTO
to be somewhere between 1.3 to 2.0 times the SRTT (which is currently
defined to 100ms).  Thus I propose to set the initial value of RTO to
200ms, to be 2.0 times greater than the initial SRTT.

Moreover, the current runtime calculation for RTO is done in the
function ratp_msg_done and has lower bound of 200ms:
    ri->srtt = (alpha * ri->srtt + (10 - alpha) * rtt) / 10;
    ri->rto = max(200, beta * ri->srtt / 10);

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 lib/ratp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index d5205a4e93..c597e96784 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -1648,7 +1648,7 @@ int ratp_establish(struct ratp *ratp, bool active, int timeout_ms)
 	INIT_LIST_HEAD(&ri->sendmsg);
 	ri->max_retransmission = 100;
 	ri->srtt = 100;
-	ri->rto = 100;
+	ri->rto = 200;
 	ri->active = active;
 
 	ri->in_ratp++;
-- 
2.17.1



