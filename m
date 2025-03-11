Delivery-date: Tue, 11 Mar 2025 13:42:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tryw9-00Cg1D-1p
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 13:42:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tryw6-0006L3-E7
	for lore@pengutronix.de; Tue, 11 Mar 2025 13:42:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=epbI/l9TFqASAxthhPdWwKW2nqH3wKfp7qP2Z9hhjhE=; b=HqBEKughz8aUI/VklyIVASudk8
	HUP5tkBt6EEpmGKRfmtqLT6sOjyvINv1HhPpfTkrVQp00V+4Pfg9xYGeAusfAYIDZRArwMe4dJRoW
	u5MtrxdiH06i/oqwBU1rmDWvq7SW3W8iHZ+JFA/upGuAnNZonpDc+Qozd/KMVr3raPdbBZKRsTSdM
	MbVX8G5tS2wTDdQQMHVO/etvwqBxxQ3KnrzBg1tgi/7fD/JlILbmQ0jqnM7g2lSI46WYDhjkwh9xS
	W9gCWF5/tk8Tw9ELb+ED+cSpWO19YTrcMMPI6G02zAOBezmt+MYm40Z2ixlOcOU8eewBPp8Q91Lry
	Ty1NBlyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tryvV-00000005gub-3LfT;
	Tue, 11 Mar 2025 12:41:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tryfd-00000005d1k-1B87
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 12:25:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfc-0003BB-10; Tue, 11 Mar 2025 13:25:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-005B6Q-1d;
	Tue, 11 Mar 2025 13:25:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-000oVs-1C;
	Tue, 11 Mar 2025 13:25:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Mar 2025 13:25:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-am625-secure-v2-6-3cbbfa092346@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
In-Reply-To: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741695915; l=802;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=TqvGU2NPyZX/DRABNFvoqHTIXkPUSnNZahSu2FlHuuA=;
 b=EYh1G13kTg3IvGl2zfSmtO1cpc4Tq/8oa7lowf4oHhyMZsms28yWr+VxVP+VJy7neQW2gfPll
 ZAaYUwqQkBTCz4BcigGIjLApIZ7ATqx2tVGb00OcSwjFxCn0OZFVcpR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_052517_405490_468800F5 
X-CRM114-Status: GOOD (  10.43  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/14] fip: fix wrong function call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fip_parse_buf() is to be called when a buffer shall be parsed that is
allocated externally and thus shall not be freed in fip_free(). This
is not what we want in fip_parse(), we want exactly the buffer to be
freed, so call fip_do_parse_buf() instead.

Fixes: 748ba06276 ("fip: add function to parse FIP from a buffer")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/fip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/fip.c b/lib/fip.c
index aab2795476..8086b43412 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -274,7 +274,7 @@ int fip_parse(struct fip_state *fip,
 		return ret;
 	}
 
-	ret = fip_parse_buf(fip, buf, size, toc_header_out);
+	ret = fip_do_parse_buf(fip, buf, size, toc_header_out);
 
 	if (ret)
 		free(buf);

-- 
2.39.5



