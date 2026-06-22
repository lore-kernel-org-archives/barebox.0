Delivery-date: Mon, 22 Jun 2026 19:22:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wbiML-008ihh-0y
	for lore@lore.pengutronix.de;
	Mon, 22 Jun 2026 19:22:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wbiMK-0008G4-M8
	for lore@pengutronix.de; Mon, 22 Jun 2026 19:22:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iMRV7eU8dOmSs/eZ5qAol1446oNNlIoRw1SYnR7kYAQ=; b=3EZgm46srgLuQI3Vu71mHFelpA
	aiTMaTeuFe7KSf6tb5e3tGUqH50Yo5h+EfIoWq1veRVvsLSN9+wfUlQXnymqmaPafogcQC0Hbucql
	X8rwN5BSVdBQS4UW+hDgj4YpdAD5BuQ7Q9Vjbcw8TwGIEF8rWqHaJLXSCQUk5JFmLcSO89btHswZI
	dhVlprfV7uincsGELUaBTzxV2ar+DNBa+a8naz60RMD6SmKjTxEybewq657iQYJC10wCy/Vh/Eryb
	imNwqpq3gQP5c7x6a65DKQc5XK5rx5iyCArQX565uZoBAeGf8pdRRuHh20xc6x/5nPMiw7prd+U2j
	6l0ACN2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbiKx-00000005FvG-3gr6;
	Mon, 22 Jun 2026 17:21:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbiKu-00000005Fum-3Xbc
	for barebox@lists.infradead.org;
	Mon, 22 Jun 2026 17:21:30 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1wbiKs-00064Z-1u
	for barebox@lists.infradead.org; Mon, 22 Jun 2026 19:21:26 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 Jun 2026 19:21:19 +0200
Message-ID: <20260622172121.1736295-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260622_102128_909602_696C4D2E 
X-CRM114-Status: GOOD (  10.76  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] restart: fix restart handler by name selection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit d20a9a455d8d ("restart: allow selecting restart handler by device
name") introduce a bug, while adding the support to select a restart
handler by device name.

The list_for_each_entry() loop should sort out all restart handler which
don't match the user requested restart handler. Instead all restart
handlers which don't have a device associated are honored as well
because the if condition is always 0 in this case.

Split the if to fix this and add a helper variable to make the code more
readable.

Fixes: d20a9a455d8d ("restart: allow selecting restart handler by device name")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/restart.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/restart.c b/common/restart.c
index 391d7bd3773c..85519912170d 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -117,8 +117,13 @@ struct restart_handler *restart_handler_get_by_name(const char *name, int flags)
 
 	list_for_each_entry(tmp, &restart_handler_list, list) {
 		if (name) {
-			if ((tmp->name && strcmp(name, tmp->name)) &&
-			    (tmp->dev && strcmp(name, dev_name(tmp->dev))))
+			bool found = false;
+
+			if (tmp->name && !strcmp(name, tmp->name))
+				found = true;
+			if (tmp->dev && !strcmp(name, dev_name(tmp->dev)))
+				found = true;
+			if (!found)
 				continue;
 		}
 
-- 
2.47.3



