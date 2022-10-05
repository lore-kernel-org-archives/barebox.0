Delivery-date: Wed, 05 Oct 2022 21:59:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogAXq-0076Fk-5s
	for lore@lore.pengutronix.de; Wed, 05 Oct 2022 21:59:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogAXo-0007IC-Rd
	for lore@pengutronix.de; Wed, 05 Oct 2022 21:59:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8y2mtUc4eMdUev36BhHgV9NCdKksKuznZE2UEQlTcBc=; b=M3J5Ra90BMyNFkBbZ0eFx0DSKP
	MlvX8ZybfF/LVuSGyS3aShDPBUYqOtRHP3lZ4WlVbRF9xXb6q+ccZ1p7dKLAxj595dwl4YUVgmKip
	/gI3+fmUMYDkipGYfvF9rwF+J4RzMM7ldXfDRNNEsWQ64btfHhtIzKq+y+QxacbS/W6wTiMJl2Zdc
	Y4/nq8iiBs9eRSjQ+3p4gT3auulSboCIe10NW4Zs3v7hY2dw6ia7iKMGTg1hKlB5/9WnjsglKCn9X
	WAR0SNQ3OMboVtgKLWBTfBVNR2Xlx+HMbLYJScU/oaIL+Kp0eMdM3Aq2tMWlmLCFBE9V8MW0wQWdf
	jG4751fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogAWP-00Fw96-ME; Wed, 05 Oct 2022 19:57:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogAWM-00Fw8l-1z
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 19:57:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ogAWK-00077k-3y; Wed, 05 Oct 2022 21:57:32 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ogAWK-004olD-SQ; Wed, 05 Oct 2022 21:57:31 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ogAWI-00EI0N-Qm; Wed, 05 Oct 2022 21:57:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  5 Oct 2022 21:57:30 +0200
Message-Id: <20221005195730.3405753-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_125734_140103_58277006 
X-CRM114-Status: GOOD (  11.00  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: ubiformat: print 100 % complete message when done
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

During formatting, current progress is printed every 300ms, e.g.:

  ubiformat: formatting eraseblock 1936 -- 95 % complete

When formatting is done, a single new line is printed. When ubiformat is
called in the fastboot workqueue, the barebox prompt won't be printed
again, so the user may think that update is stuck at the last message
printed. Improve user experience by explicitly printing a 100 % complete
message.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/ubiformat.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/ubiformat.c b/common/ubiformat.c
index e10ce31ce659..1edfc5b2a3b9 100644
--- a/common/ubiformat.c
+++ b/common/ubiformat.c
@@ -444,7 +444,7 @@ static int format(struct ubiformat_args *args, struct mtd_info *mtd,
 	}
 
 	if (!args->quiet && !args->verbose)
-		printf("\n");
+		printf("\rubiformat: formatted all eraseblocks -- 100 %% complete\n");
 
 	if (!novtbl) {
 		if (eb1 == -1 || eb2 == -1) {
-- 
2.30.2



