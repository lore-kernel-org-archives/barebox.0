Delivery-date: Mon, 11 Aug 2025 14:30:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfI-009Kif-3D
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRf1-00063M-7A
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oqEOp6qvjtZS7HRofXD6FZKrYUS5rEMDHdkvLVE22eQ=; b=q54aBNOh6UGh75dgrlifEFxM4/
	tjQ+GNPSJ6Yz6StfsWAKfhr7SJdOqqo8+msynmXQd5xXGfXGYRC1Fjj0C5P+LnIpXLVX14TSAM1Or
	I9VuWospWrJ53wTnU3tWpe4z1mnudEdrKsheB5BudLtLIU5VpWLgfwgbF/1fRg++bMWFeqZ+nGGai
	f4ez3kDhe4BQoQ9olNpjvu21XlqPKrROkdqBJ9mrymUcVjM2jHJuyu/p205LBOy96kphK5P4OQ2Um
	KIcBEKzdcpUjanRzjwBiBRHi3B9jdzc2YCHzQ6n0jtiDYHF41AKd6uTr/da9077EphMMInXX8J0Yp
	PiwelwTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdv-00000007dtO-042V;
	Mon, 11 Aug 2025 12:28:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdf-00000007dXZ-2DbT
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRde-0004WP-6m; Mon, 11 Aug 2025 14:28:30 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:55 +0200
Message-Id: <20250811122824.1667791-16-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052831_563596_8D93BD98 
X-CRM114-Status: UNSURE (   9.63  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/44] param: handle NULL gracefully in bobject_get_param
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows using bobject_get_param with non-existent parameter names
without risking a crash inside bobject_get_param().

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/parameter.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index 73cc3701b938..0f9164386c6d 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -71,8 +71,14 @@ struct param_d *get_param_by_name(bobject_t _bobj, const char *name)
 const char *bobject_get_param(bobject_t _bobj, const char *name)
 {
 	struct bobject *bobj = _bobj.bobj;
-	struct param_d *param = get_param_by_name(bobj, name);
+	struct param_d *param;
 
+	if (!bobj) {
+		errno = ENODEV;
+		return NULL;
+	}
+
+	param = get_param_by_name(bobj, name);
 	if (!param) {
 		errno = EINVAL;
 		return NULL;
-- 
2.39.5



