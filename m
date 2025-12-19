Delivery-date: Fri, 19 Dec 2025 11:37:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrq-00DAWz-2i
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:37:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrg-0005ck-SG
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:37:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FIix8yusVMw5/I8ItTRA1rShmVjUxd+byMGKa3Oizd8=; b=Opc2b7LHnlEh1H9dlB3jXzG8Ed
	Xvsq/fym5wlSkzjfK7mxkzIkX6lul28OQhgfyca7E4krM4SI5LMCt97583tSs5BX9p/lW0gu+TNhB
	xwY3DHPjqxJt4Np8qTout1484EmCo4oJ+q3qXNs2RMBGFAZFej5GbH4VWVMv5J0OwvBJdWqiWGaGf
	UodZjscUxXPOwbZKhwyYIEnMpsufvMCGvwxLTHfbPnp0aAMTYUIr1Z5rHyXbwxYgvqH4aU2K6MbSf
	sb9MumU8XxBr9kUFfVjgp8oS+s+zwKgo978BaNGOlsrgBijR6ZW+GInqPK9HGjuv8RlA4AJBpPmz8
	IH85tVwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqy-0000000A644-24mb;
	Fri, 19 Dec 2025 10:36:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqr-0000000A5uk-3bIq
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-0004aP-BO; Fri, 19 Dec 2025 11:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-006RUQ-0S;
	Fri, 19 Dec 2025 11:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-1lFd;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:20:56 +0100
Message-ID: <20251219101453.2806980-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_023649_905257_4DB8E24D 
X-CRM114-Status: GOOD (  10.90  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 20/49] poller: activate POLLER_WARN_OVERTIME only on third strike
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This warning was meant to address the case that a poller repeatedly
takes too long that interactive usage is impacted.

I frequently see this warning during initial USB gadget set up and that
is not really useful to show every user and developers can use the
poller command, so let's wait until we are on our third (2nd when
counting from 0) overtime to print the one time warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251112151058.540654-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 3c54bb21e0f04805e7b6fb16e6d977900ebfceb0)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig  | 2 +-
 common/poller.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index eb2fb1da1e09..3a2044585a3d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1099,7 +1099,7 @@ config POLLER_WARN_OVERTIME
 	help
 	  Pollers are meant to poll and quickly execute actions.
 	  exceeding the maximum runtime of POLLER_MAX_RUNTIME_MS
-	  will trigger a one-time warning.
+	  three times will trigger a one-time warning.
 
 config BTHREAD
 	bool "barebox co-operative (green) thread infrastructure"
diff --git a/common/poller.c b/common/poller.c
index 5dc2be97211d..ca0d68d6cb27 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -135,8 +135,8 @@ void poller_call(void)
 		duration_ms = ktime_ms_delta(ktime_get(), start);
 		if (duration_ms > POLLER_MAX_RUNTIME_MS) {
 			if (IS_ENABLED(CONFIG_POLLER_WARN_OVERTIME) &&
-			    !poller->overtime)
-				pr_warn("'%s' took unexpectedly long: %llums\n",
+			    poller->overtime == 2)
+				pr_warn("'%s' takes unexpectedly long: %llums\n",
 					poller->name, duration_ms);
 
 			if (poller->overtime < U16_MAX)
-- 
2.47.3



