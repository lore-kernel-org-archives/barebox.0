Delivery-date: Tue, 30 May 2023 13:19:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOP-002jwW-0S
	for lore@lore.pengutronix.de; Tue, 30 May 2023 13:19:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOM-0001V5-Cn
	for lore@pengutronix.de; Tue, 30 May 2023 13:19:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g5R8ZbXJmmFwVuf3sAohST+i3kP4F3jlx5UTsFOQ9XQ=; b=zSo/hngp0vqKBOhelgr+KCv1zk
	hdVkgLapaiQqPzVmRJ9a7pgWbOCQnXLAkD6LxlDmWlqeOH6BtV7Y9b1PbeFAECl/yULHdI11RplGz
	BoXurZivVWvQLyrCx/P4MyfJ3gom5r1pldlLNi8rCGckrSk6K0jGViPVEDbPlO0SpQxDMF/eIKUtw
	KH4t6kb9RhdbYOHtVV7qsAzujjFyTpKD2lp92A5ZK6yKJ7/KhOynvel1emCELPV+8ZvkbDguvX4L0
	VCAaXrcsSvxrtbSboy+sFfv6vn+6iUbjP8SDb+Tlg6F3HmHDBS9arUu8O/fxJ3x0nDIAmLomc86gj
	7nebQeTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNG-00Dbnk-2S;
	Tue, 30 May 2023 11:18:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNA-00Dbim-1f
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 11:18:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN6-00014M-90; Tue, 30 May 2023 13:18:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN5-003rOX-HJ; Tue, 30 May 2023 13:18:35 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN3-0082as-KS; Tue, 30 May 2023 13:18:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 May 2023 13:18:24 +0200
Message-Id: <20230530111832.1916542-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230530111832.1916542-1-s.hauer@pengutronix.de>
References: <20230530111832.1916542-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_041840_600804_41A22E86 
X-CRM114-Status: GOOD (  12.42  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/10] firmware: arm_scmi: fix async check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Originally the Linux code had atomic_inc_return(&ci->cur_async_req).
atomic_inc_return() returns the new variable value after increasing it,
so the equivalent is ++ci->cur_async_req, not ci->cur_async_req++.

This fixes a case where the code erroneously chose to do an asynchronous
clock rate change on RK3588.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/firmware/arm_scmi/clock.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index 8f9017206c..4fd642dad3 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -250,7 +250,7 @@ static int scmi_clock_rate_set(const struct scmi_protocol_handle *ph,
 		return ret;
 
 	if (ci->max_async_req &&
-	    ci->cur_async_req++ < ci->max_async_req)
+	    ++ci->cur_async_req < ci->max_async_req)
 		flags |= CLOCK_SET_ASYNC;
 
 	cfg = t->tx.buf;
-- 
2.39.2



