Delivery-date: Thu, 07 May 2026 13:50:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKxFo-001x8m-0q
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 13:50:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKxFj-0001KN-6A
	for lore@pengutronix.de; Thu, 07 May 2026 13:50:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Xf3DtvOK3HodRbb22Qam9FTYGbq+YsQMWfBZ1CfyNmE=; b=lGOGz3Oa1vRMWF9TWyYW5EBa95
	YfCzpvPVwDKaBWBMl+Z/csWWsqmIWBODVom8+dpaambv9Af0xbw6h8wo/TXmo3tj/OMQ6tM5k3Dzn
	SNO2kF8eVog2RF6SgG/ywXDkOUBJnU3mXqNlVwchTRnX8cbFr6SzenRLbrpGwMVfxe0ScXn50BOQL
	X5ynLbjNTbvchZaoGwEP9xzfv04jMDHvD2lKwZVDufRp5uLaCyHv5n7CjMYtlZvq3B80dZFNL9L/A
	vT/aIV54H5DERjpnXNZebQlWqRm/7sqM9dEubbyA9D/HQUffIgQH6W/5iR6d+r4F61xhMniBEF8q1
	opASh2eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKxEM-00000003hlh-1XuE;
	Thu, 07 May 2026 11:49:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKxEK-00000003hkQ-0DBG
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 11:49:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wKxEG-0000SZ-O8; Thu, 07 May 2026 13:49:20 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  7 May 2026 13:49:18 +0200
Message-ID: <20260507114919.1366520-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_044924_093268_3DD3BAF4 
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] param: return error when assigning empty string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The fallback path that allows specifying enum values by index returns an
error if *endp != '\0' to account for invalid values like my.enum.param=1z.

This fails to account for the corner case of the empty string which
would also have *endp == '\0; with idx being the default 0.

Check for that explicitly and return an error.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/parameter.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index f4e62cc1ae87..e98739725fe2 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -593,7 +593,7 @@ static int param_enum_set(struct bobject *bobj, struct param_d *p,
 		char *endp;
 		unsigned long idx = simple_strtoul(val, &endp, 0);
 
-		if (*endp || idx >= pe->num_names || !pe->names[idx])
+		if (*endp || endp == val || idx >= pe->num_names || !pe->names[idx])
 			return -EINVAL;
 
 		pr_warn("setting %s.%s by index is not stable, use \"%s\" instead\n",
-- 
2.47.3



