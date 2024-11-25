Delivery-date: Mon, 25 Nov 2024 16:13:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFalw-000FXn-0w
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:13:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFalv-0007jY-El
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:13:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pNti/wyLVE/CC4YcSIBpHcj/yOgp6wbk3jpX3MnvfCE=; b=cTIqRl4YmweLca+HJ9hzEiqjzT
	73DV1M451WWt1qwDVEUKXNlgz5HEuCZFM+3Tlcgsm8tMQrDsEVFfLbEjlx3SlaFviHKcZPcE/RTAQ
	9354Ec7ZCz9OXVNPLErjVJCbL1s5I9JSJXrRIzjZ6se5qWfkb72bfWTwv7YHryA81ZHyEzvTSx96i
	v9r05W2R+0oslGxBEktY1i3KCDZWP8CEZTr2fWTneRXxjwLUyUbvrT/ZfVnjKLP0lgcre4sqYP15B
	t8RXtnT/lf0DDp6w8KQwT1J2R6dmICYrepVJw8m1HLvskBbHpR+OTZsofwie37c0v7mCcEtJw/AmP
	V1wK9Nkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalS-00000008PiK-2mco;
	Mon, 25 Nov 2024 15:12:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalM-00000008Pb6-1bxh
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:12:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-0007CS-WB; Mon, 25 Nov 2024 16:12:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-0006MU-03;
	Mon, 25 Nov 2024 16:12:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-001lGb-0G;
	Mon, 25 Nov 2024 16:12:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:12:14 +0100
Message-Id: <20241125151228.341441-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125151228.341441-1-a.fatoum@pengutronix.de>
References: <20241125151228.341441-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071232_419286_AD40335B 
X-CRM114-Status: UNSURE (   8.28  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/16] xfuncs: include <malloc.h> for free definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

xfuncs.h defines all the functions that panic on out-of-memory
condition, but doesn't actually define free, so let's fix that by
importing <malloc.h> inside.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/xfuncs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/xfuncs.h b/include/xfuncs.h
index 60ec220bd9b8..9e09b88141a1 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -6,6 +6,7 @@
 #include <linux/compiler.h>
 #include <stdarg.h>
 #include <wchar.h>
+#include <malloc.h>
 
 void *xmalloc(size_t size) __xalloc_size(1);
 void *xrealloc(void *ptr, size_t size) __xrealloc_size(2);
-- 
2.39.5



