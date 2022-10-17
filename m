Delivery-date: Mon, 17 Oct 2022 09:11:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHd-00BNhl-P1
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 09:11:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHa-0005qa-QW
	for lore@pengutronix.de; Mon, 17 Oct 2022 09:11:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gxsC711NnZs2LssfJvCkrwSjZrrWz2JSJCnTeU1XLc8=; b=ROG12SL/v08dlbjHnaDQbRw3my
	juvUH9fbsgr/sx5HhW5omsqMlO/+pk5fpNADOu977KJProwdkt0WTaC0duLsi0jv/ksrf5R2s0th1
	1A+bjnQUY4qVugnKu4ybnWtEPfjRbvGXMIt8ImNd2dles+5erhMp/fclJt08hjTyEdf+dZS+PxC5b
	7lxaC6oLac5YFtwJOn//QYeagVHzqWe8vjQXGexamJd0iDDOY8Cvp/kz7jFFUAGltKw51g3vlCv1v
	64T8Ao3BMluc98bzWdbCsrfyWOG2sn2+pOH4RAMfyic2XzRNzZwjtjOsD0ManZi3G9Wa/smMrKV+C
	U3XcDp/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGM-008MeI-Qv; Mon, 17 Oct 2022 07:10:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGD-008MZk-1l
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 07:10:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGB-0004xr-9Y; Mon, 17 Oct 2022 09:10:03 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGA-0021UO-IQ; Mon, 17 Oct 2022 09:10:02 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKG8-0067Oa-Ob; Mon, 17 Oct 2022 09:10:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 09:09:53 +0200
Message-Id: <20221017071000.1458292-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
References: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_001005_149839_F9E2FBC4 
X-CRM114-Status: UNSURE (   7.12  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/8] restart: make restart.h header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Code may fail compile depending on include order. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/restart.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/restart.h b/include/restart.h
index 2d15c7598acc..27fab1b80dfb 100644
--- a/include/restart.h
+++ b/include/restart.h
@@ -2,6 +2,11 @@
 #ifndef __INCLUDE_RESTART_H
 #define __INCLUDE_RESTART_H
 
+#include <linux/compiler.h>
+#include <linux/types.h>
+
+struct device_node;
+
 void restart_handlers_print(void);
 void __noreturn restart_machine(void);
 struct restart_handler *restart_handler_get_by_name(const char *name);
-- 
2.30.2



