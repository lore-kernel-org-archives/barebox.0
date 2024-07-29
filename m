Delivery-date: Mon, 29 Jul 2024 16:43:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYRaz-004A2u-1V
	for lore@lore.pengutronix.de;
	Mon, 29 Jul 2024 16:43:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYRay-0001zD-SG
	for lore@pengutronix.de; Mon, 29 Jul 2024 16:43:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1WwSVtVFfsk61iiJbX0GbGNjpMujvbdq71/I1RDbWcg=; b=mVLcHutCc4S5IOrrBoLb4a3Ski
	k1JDfo1UFEQL2gWMa/LrQmwbhnPQRmQ/QvBqwrpHV4XjMmCtOg3FDa4Hj4+fOC6QjUzaFHxhNy+fl
	/OyS21zpn26HzGZ15T9ZzaFUp8xHQdEMsmPl8bUGhG67T5b9abbvgIBIOvOTTVRm5tJ4OEqaBknio
	/agiksFSzd3zPlO2ImSmzEfMSnfPx+MorBd5gg/uSRJBib+T4qiQparir7+GmhlVOeT9kcn77Sf8y
	CsZ9CRGfT0nLDpXSX+cD/KvIdjNnZrmOseszkXD0Zv8qOCsk0iFje719gYn0Ne6U/xevwAtL31JMy
	lBFYbuEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYRaW-0000000BhRq-2FU0;
	Mon, 29 Jul 2024 14:43:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYRQS-0000000Bcjd-1lm9
	for barebox@lists.infradead.org;
	Mon, 29 Jul 2024 14:32:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYRQQ-0000ZB-UK; Mon, 29 Jul 2024 16:32:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYRQQ-00349a-HX; Mon, 29 Jul 2024 16:32:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYRQQ-006ZHH-1S;
	Mon, 29 Jul 2024 16:32:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 29 Jul 2024 16:32:33 +0200
Message-Id: <20240729143233.1565563-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_073236_477066_8357EF18 
X-CRM114-Status: GOOD (  10.78  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] bbu: report what device caused the handler to be unavailble
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current message only lists the handler name, but to understand why
the operation failed, it's useful to print also the path of the device
that wasn't found. Change the info message to list both.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bbu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index ba2566acdfad..f71747aa2f6d 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -55,8 +55,8 @@ void bbu_append_handlers_to_file_list(struct file_list *files)
 		if (stat(devpath, &s) == 0) {
 			append_bbu_entry(handler->name, devpath, files);
 		} else {
-			pr_info("Skipping unavailable handler bbu-%s\n",
-				handler->name);
+			pr_info("Skipping handler bbu-%s: %s unavailable\n",
+				handler->name, devpath);
 		}
 
 		free(devpath);
-- 
2.39.2



