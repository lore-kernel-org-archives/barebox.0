Delivery-date: Sat, 24 Aug 2024 22:03:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shwyp-00D0nH-1F
	for lore@lore.pengutronix.de;
	Sat, 24 Aug 2024 22:03:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shwyo-0005gj-Nv
	for lore@pengutronix.de; Sat, 24 Aug 2024 22:03:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lEGiSvz6CMf0eArDDSax+/Vc3D7/le1hWMmgRt81NLM=; b=yJ3EaNyXBGBimIyB23VQY3BIZQ
	N0MSXvcgoHL4x5Ve7TIu/Ts6SIblQWE/sDHVAOjos+DYums4xtmTVxB3CMkXyyuwO1XrfsTe3f/Qc
	fFw/6411MLHJzLtSkvuFqEnxGp6qu1SNZWoAQMPK9GSxzxXLSxf/H+k4WGuUpHbjG28UBfVE5w1BQ
	luH6tINJP9v7YUJeh2GU2rXWJNC25rXceMmPkMtCS+56+xb/R7bMWdu2VDCIbSLOizMi3usK6BAUO
	xJPJ+s8Oxgp/mtizdIjHF8a0nKmBGj/cmjEx8xlRhzRuRRxLl4CTp/PG81HGDfbcU+uHCP5CvGfIK
	XlHrzHvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shwyO-00000002qID-18mk;
	Sat, 24 Aug 2024 20:02:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shwyK-00000002qHI-2k6i
	for barebox@lists.infradead.org;
	Sat, 24 Aug 2024 20:02:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwyJ-0005Pa-7N; Sat, 24 Aug 2024 22:02:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwyI-002mrR-QX; Sat, 24 Aug 2024 22:02:50 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwyI-0093w9-2N;
	Sat, 24 Aug 2024 22:02:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 24 Aug 2024 22:02:50 +0200
Message-Id: <20240824200250.2160073-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_130252_712705_8F275580 
X-CRM114-Status: GOOD (  10.16  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] input: don't report depressed keys that were never pressed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The USB keyboard driver remove callback sends a depress event for all
keys. This is relayed to all input notifiers and can confuse them by
reporting keys that were never pressed in the first place.

Instead of expecting input notifiers to keep track themselves of whether
keys have been pressed, have the core only report depress event for
previously pressed keys.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/input/input.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/input/input.c b/drivers/input/input.c
index 1a4792935114..e5509bf90d3e 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -44,10 +44,11 @@ void input_report_key_event(struct input_device *idev, unsigned int code, int va
 		pr_print(MSG_DEBUG, "Event. Dev: %s, Type: %d, Code: %d, Value: %d\n",
 			 dev_name(idev->parent), EV_KEY, code, value);
 
+	/* Only report depressed keys, if we registered them being pressed */
 	if (value)
 		set_bit(code, idev->keys);
-	else
-		clear_bit(code, idev->keys);
+	else if (!test_and_clear_bit(code, idev->keys))
+		return;
 
 	event.code = code;
 	event.value = value;
-- 
2.39.2



