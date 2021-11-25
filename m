Delivery-date: Thu, 25 Nov 2021 17:12:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHMf-0001jT-J3
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 17:12:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHMe-0001fK-LZ
	for lore@pengutronix.de; Thu, 25 Nov 2021 17:12:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eIK5DxcYgLkEUD/OVQkKYpqpp7/rHXHP+B4/AmPr7gc=; b=RUagEN92MKgojD
	DW6qRhKvc3uaLAnuEaURtgwS2tHDosmadBbtgziAKurCPV/zU2lzzhIqcLD3Ob5hBYKl9u7+ZDpnT
	mI/ZFAf/XvaxWRp337vBWC+MCGcO7vndII8NpN5VGCAByz7UTBSubOoWWxDWJWzy+pOlYLKw1I4z+
	7unmKwUIDgFsVzRFQNK6GKx9G1nCSOqEyOzGTQBl4Nqb+SRJJSAsw3WpeIXIQ2LrJ88yMJgVQf/MU
	iknXKlnAhTFm/4KcNgpjnusYCKEBC2+FsSMANX4wXmpBCi7WJvwEt0xmn7wpKEQzt8wg9MLwhUHfZ
	MpCnq4L9vcWFPNBitoAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqHKw-008DX5-Uc; Thu, 25 Nov 2021 16:11:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqHKh-008DPx-QB
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 16:10:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKe-0000bi-N2; Thu, 25 Nov 2021 17:10:44 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKd-00G4X2-S7; Thu, 25 Nov 2021 17:10:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Nov 2021 17:10:38 +0100
Message-Id: <20211125161042.3829996-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
References: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_081047_875147_7A3A63FE 
X-CRM114-Status: GOOD (  10.58  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] of: overlay: rescan aliases calling of_overlay_apply_tree
 on live tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Couple of drivers in-tree, like state, depend on aliases for correct
operation. If state node is added via overlay and oftree -p is called,
driver would start probing, but fail because aliases weren't reloaded.

Fix this corner case by always just calling of_alias_scan() on every
successful of_overlay_apply_tree to the live tree. No functional change
yet, as the only user of this function is overlay application code of
ARM QEMU machine, which happens at pure_initcall level, making
of_alias_scan a no-op. Follow-up commit will move overlay application to
happen after device tree is registered, necessitating this change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/overlay.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index e6f6634d6042..20a43f5170c8 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -199,6 +199,10 @@ int of_overlay_apply_tree(struct device_node *root,
 			pr_warn("failed to apply %s\n", fragment->name);
 	}
 
+	/* We are patching the live tree, reload aliases */
+	if (root == of_get_root_node())
+		of_alias_scan();
+
 out_err:
 	of_delete_node(resolved);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

