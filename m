Delivery-date: Wed, 11 Sep 2024 10:23:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIde-003QF8-2p
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:23:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIdd-0000w4-Pl
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:23:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aL4d5Mcga/IILki+WnP90NYVjP0abzH2kBAxZzPlzRc=; b=S/daB6cz/xb4cXV90PEqD/gB8n
	prCs+wEMfXdOZ4mwx2pA5h1fAElU30SsTQ9ESXU01Ky3PtRaSQsWSVKhRfaC0RErkMZDLowXL6q4m
	psIuMY7tA2dR3xL7lE2sj89uWD9CM0lzBBpKivDb171SH+Xm7Z54aEchx9seNY6EYI6pxV+rvH1+x
	QQ7cCSEy27tKMLHQY2gPmnGmWAuyFUUH8xDDPJxZPBbbtpQ2S3bypOpMlxIK9toHkvE5Ut9KySvcu
	wxE6GMqyV3IF3Sn3hYEHlqYTV/HegkUwcFs7v3omKcvNa5rU+epAbskR2cZbcsBORzd9Gaqbn4Ubi
	T/VjwNlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIcw-00000008ccX-2vYb;
	Wed, 11 Sep 2024 08:23:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIXU-00000008bB3-1gzl
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:17:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXT-0006cO-6O; Wed, 11 Sep 2024 10:17:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXS-0075kI-Px; Wed, 11 Sep 2024 10:17:22 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXS-006OFc-0p;
	Wed, 11 Sep 2024 10:17:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Sep 2024 10:17:22 +0200
Message-Id: <20240911081722.1523162-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_011724_474617_504F5432 
X-CRM114-Status: UNSURE (   8.16  )
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
Subject: [PATCH] PWM: core: make pwm.h header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The file has references to DIV_ROUND_CLOSEST_ULL and struct device_node,
which so far only worked because of headers previously included.

Fix this to make the header self-contained.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/pwm.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/pwm.h b/include/pwm.h
index b90ac1de4220..e3a432b85252 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -3,8 +3,10 @@
 #define __PWM_H
 
 #include <dt-bindings/pwm/pwm.h>
+#include <linux/math.h>
 #include <errno.h>
 
+struct device_node;
 struct pwm_device;
 struct device;
 
-- 
2.39.2



