Delivery-date: Mon, 13 Apr 2026 12:07:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCECo-00BgDf-0z
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:07:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCECn-0000Nk-N1
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:07:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uv0QpmLLrqEml2TanShbCWWrV7SGxLkcMLt307IBr30=; b=30KtlVOghDfdBrIQ1gGocr2gNR
	KmwrCnmDEW4zqICod8askUaNZsCCAM4EuHU634BcyU/5k5giNTEPibG31PNj/CR3EKAx73yvjw1w5
	z2P6VmAI7OXlxhQHz/FmfFqEUOjZH8Z5uaPO9Cvj6NWYosbszTUGWNveJmlE2VZSLI4xpBg/Q34VO
	e/8CPZJL6fht5GyJuFK1jTlwbEirrPkhvEH1rbsyontZ+uJIHwd2XJYsK7+eYCdY9PGOd++Ba8jxW
	VJHZicmf+hR4GHL651cqWm7ovw+dU6EutBVRe9XOUae9W3sO2ZuiRynr9TX+Xz9QgJK54wikegYVv
	2pZOPkig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECO-0000000FPZA-2eQh;
	Mon, 13 Apr 2026 10:07:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECK-0000000FPXp-3Zv8
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:07:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCECI-00008e-Hg; Mon, 13 Apr 2026 12:07:14 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:06:58 +0200
Message-ID: <20260413100710.1459468-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413100710.1459468-1-a.fatoum@barebox.org>
References: <20260413100710.1459468-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_030716_942315_492B99BA 
X-CRM114-Status: GOOD (  11.79  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] parameter: allow enum params to be set by numeric index
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When no name matches the input string, fall back to parsing it as a
decimal index into the names array for backwards compatibility.

This lets scripts and users write e.g. "0" or "1" in addition to the
symbolic name, which can be useful if a boolean is turned into an enum
to allow for more options.

As the index isn't stable, we emit a warning to point out that this is
just to simplify migration.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/parameter.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index 5c8b86d0dff3..f4e62cc1ae87 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -589,8 +589,17 @@ static int param_enum_set(struct bobject *bobj, struct param_d *p,
 		if (pe->names[i] && !strcmp(val, pe->names[i]))
 			break;
 
-	if (i == pe->num_names)
-		return -EINVAL;
+	if (i == pe->num_names) {
+		char *endp;
+		unsigned long idx = simple_strtoul(val, &endp, 0);
+
+		if (*endp || idx >= pe->num_names || !pe->names[idx])
+			return -EINVAL;
+
+		pr_warn("setting %s.%s by index is not stable, use \"%s\" instead\n",
+			bobj->name, p->name, pe->names[idx]);
+		i = idx;
+	}
 
 	*pe->value = i;
 
-- 
2.47.3



