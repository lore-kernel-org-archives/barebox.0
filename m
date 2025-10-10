Delivery-date: Fri, 10 Oct 2025 07:50:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v761M-006Cij-03
	for lore@lore.pengutronix.de;
	Fri, 10 Oct 2025 07:50:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v761L-0003ET-FO
	for lore@pengutronix.de; Fri, 10 Oct 2025 07:50:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5q3rqTODtAvGMlBkuNqfCOPJ0gno5QqXJDLua2rs8iY=; b=lfYiDlW0nCIayckVPgr5O3z45n
	5f/11zp7LP9lk3O6UYuFPNxG0CdD48bFB0SNfAtWRtEkmh/K0I/0lIyvYJM++mC86Qj4W0hWBu9MN
	MwXp/N2nLMGOcWGuMMHHodYnhIDrASSPeTabwcvLd1O1/HlItykP+BiOWOd+/WzGObQ1GofCtI4Zz
	GS8FI67PV0h/2UPlIUZGBoLYzLq5ZXx54Miwuf9GoT1ZgRnucHMoU3OE+WHafE0ykaSx0NWusuei2
	KSoFqC1fKJn5bqSi/8V53J8NVxI6//Q9nMLvMkZzUs9yJ6wyBxWnmkQaHtqwB6nkhTpJ8EgCuuw0z
	puhvqjDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v760k-00000007jLK-1CsU;
	Fri, 10 Oct 2025 05:49:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v760h-00000007jK3-1iwW
	for barebox@lists.infradead.org;
	Fri, 10 Oct 2025 05:49:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1v760d-000373-2z; Fri, 10 Oct 2025 07:49:43 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: jre@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 10 Oct 2025 07:49:33 +0200
Message-ID: <20251010054939.3067504-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_224947_444087_3B86E9BB 
X-CRM114-Status: UNSURE (   9.16  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] FIT: compare key name hint with streq_ptr for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When given a key name hint, we first attempt verification using the key
it describes and fall through to verifying with all other keys.

The code implementing this is not necessarily intuitive and strcmp()
makes it harder to understand.

As we check for NULL pointer anyway, let's use streq_ptr, which returns
true instead of 0 on equality.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/image-fit.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 6b44a79e9d1c..3017ccb5048f 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -290,7 +290,8 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
 	for_each_public_key(key) {
 		fail_reason = "verification failed";
 
-		if (key_name && !strcmp(key->key_name_hint, key_name))
+		/* Don't recheck with same key as before */
+		if (streq_ptr(key->key_name_hint, key_name))
 			continue;
 
 		ret = public_key_verify(key, sig_value, sig_len, hash, algo);
-- 
2.47.3



