Delivery-date: Fri, 01 May 2026 11:24:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIk76-000p8c-1l
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 11:24:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIk76-0004Dm-0y
	for lore@pengutronix.de; Fri, 01 May 2026 11:24:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Nqlii6pOs7nCmEKboFVdK931gaKbS6wuiUK4T5A2jsg=; b=Ngjb9XmxLV/0uIHk6ymTPUpwdv
	fDhGzubyrPUU7oa8CtQzSSj0QuJi8nbi9yM9Ust8hv3RFtNycL6M2Ar5iuWSaCbcZku3x19jTfkQN
	ldsTG4qb8nyrbd9NLdgrW1ePJsdflgtM/+F92xgCBCXd3GwkJmq/4BR7V7vTzZ3HtyqoWJ5PnNJ/u
	JXEeDFzHTPVnTK8TXM5IEfnPNOKmbFRmlsN4gxzRxGdjRbrC/ug6e3m13G8ioR1Ol8OyFuLJMLHg0
	xqrI/M45pnKC/hdFF8/ayHnvO13gvbnXkQ8XzruzIcdlNTkP7P+15C5nNSo1+EHQjT29jsThsiIt5
	huIH3xDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIk6Y-00000006Xq1-1iCd;
	Fri, 01 May 2026 09:24:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIk6W-00000006Xpd-2uTt
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 09:24:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIk6T-0003se-Vi; Fri, 01 May 2026 11:24:10 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  1 May 2026 11:23:51 +0200
Message-ID: <20260501092355.1056737-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_022412_752124_8D2FDF05 
X-CRM114-Status: UNSURE (   9.60  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] globalvar: call dev_set_param only once when loading nv vars
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

globalvar_add_simple() accepts NULL as value to mean that a global
variable should be created, but dev_set_param() should not yet be
called.

Instead we pass a non-NULL value, so dev_set_param() is called once when
adding the variable and once more directly after via nv_set().

Fix this, so dev_set_param() is called only once.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/globalvar.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 876379b2538e..00f94d98af3d 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -236,11 +236,11 @@ static int __nvvar_add(const char *name, const char *value)
 		if (IS_ERR(p))
 			return PTR_ERR(p);
 	}
 
 	/* Create corresponding globalvar if it doesn't exist yet */
-	ret = globalvar_add_simple(name, value);
+	ret = globalvar_add_simple(name, NULL);
 	if (ret && ret != -EEXIST)
 		return ret;
 
 	if (value)
 		return nv_set(p, name, value);
-- 
2.47.3



