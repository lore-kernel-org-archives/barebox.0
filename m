Delivery-date: Mon, 11 Aug 2025 14:30:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfu-009KpE-1a
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfW-0006cN-E4
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s9U/ekHiS6T7UNw3C12V/J20+VySDTGSbfbyTbGQgVI=; b=1kLcKffbpLU1cg5N5gadg/gxR8
	Uh6LBYiqZmrouVpMHE0DvToo/0e1oqOHVqI8c3Wbq7+lbEqIfeKTFFrPJPJvnrINeNAIa3cpAGxKe
	s54cvxKVRXdeG2Ow+KWSf8tqQNRWDnp4+KgSRRhhr3xWV6QnPPw5VtTrSgTH3EOUO3MxoVkVL78gt
	LJEwceN2dPbNtwz0YtNJhOauunsu7EIyriKYfSLwfOitGc5+8ELwpy9AIT2P03FISfbeNXou2R4Xn
	EWEfj6o8uAhyGA7PxqUtodpRnvpzGXVkPfKxLNB63I7ky87yMjqpD3/V/QsSSsXO1lCO6CcbxX00K
	ZeJ75GZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReD-00000007eSm-2yR8;
	Mon, 11 Aug 2025 12:29:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdj-00000007dcw-33oe
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdi-0004WP-2f; Mon, 11 Aug 2025 14:28:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:12 +0200
Message-Id: <20250811122824.1667791-33-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052835_819876_1D748FD0 
X-CRM114-Status: GOOD (  12.81  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 32/44] firmware: add easy way to check for existent providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function will be called from the upcoming bfetch command to
determine whether the running barebox has any firmware managers
at all registered.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/firmware.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/firmware.c b/common/firmware.c
index 3c7960581f6f..264fc9d66dcc 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -63,18 +63,18 @@ struct firmware_mgr *firmwaremgr_find(const char *id)
  *
  * Find a firmware device handler using the device node of the firmware
  * handler. This allows to retrieve the firmware handler with a phandle from
- * the device tree.
+ * the device tree. If np is NULL, returns the first instance encountered.
  */
 struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
 {
 	struct firmware_mgr *mgr;
-	char *na, *nb;
+	char *na;
 
 	na = of_get_reproducible_name(np);
 
 	list_for_each_entry(mgr, &firmwaremgr_list, list) {
-		nb = of_get_reproducible_name(mgr->handler->device_node);
-		if (!strcmp(na, nb)) {
+		char *nb = of_get_reproducible_name(mgr->handler->device_node);
+		if (!na || !strcmp(na, nb)) {
 			free(na);
 			free(nb);
 			return mgr;
-- 
2.39.5



