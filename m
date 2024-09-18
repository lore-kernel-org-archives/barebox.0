Delivery-date: Wed, 18 Sep 2024 15:46:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sqv0o-005jIo-18
	for lore@lore.pengutronix.de;
	Wed, 18 Sep 2024 15:46:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sqv0n-0004b3-AV
	for lore@pengutronix.de; Wed, 18 Sep 2024 15:46:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sWxN+4dgD3kEyOPtFtTMYdP6z+2M8cB+L7BsoRREXt8=; b=QQhe0VCBURCUxP0A8ZwO05c8GC
	48XD886O030rCcx0LOR3L1mf5RQBTnWrLjDTnZJFklJ0DACiFj3e3jH6YuMpmE7IHhGEUQbwPBe3o
	DSuz1UX6+TwMOuiRtWWll1Tt2+E76dSdpv7OuL3FahoB+cVK/glkKQdSUnwE9z7U8D88qyWHE3ec6
	sMamxjlWm0jjZUT0ZCsNLCTKC6nJQU3FHSUemGDjniMfySfBF2F40505VMlR/nrvP4RVCnXLSgk8O
	HdGUqplQgkqwAjKCtdn0LXN04mEvTXL9LkAbVl+NLE9tmeDujmGuEl3/1/+ZcoVVjivhvLNGujKzM
	ACZTSJRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqv09-00000008Mff-2ehe;
	Wed, 18 Sep 2024 13:45:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqv06-00000008Mf7-2CwG
	for barebox@lists.infradead.org;
	Wed, 18 Sep 2024 13:45:48 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1sqv03-0004MA-Sl; Wed, 18 Sep 2024 15:45:43 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Wed, 18 Sep 2024 15:45:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240918-jre-remove-watchdog-list-v1-1-e56f1769e45e@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAHrZ6mYC/22OywrCMBBFf6XM2sE2lVT9FXGRx9iMaCIzpQql/
 27q2uWBew53ASVhUjg3CwjNrFxyhW7XQEguj4QcK4NpzaE9dUe8C6HQs8yEbzeFFMuID9YJB2v
 tEPvQe2Oh6t4poReXQ9oC1dv/87bpS+jGn9+Ly3Vdv+sL/EWVAAAA
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.12.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_064546_600042_5B952BA3 
X-CRM114-Status: UNSURE (   8.88  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] wd_core: remove obsolete watchdog list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

this patch fixes a null pointer derefence on imx28 related to the
incomplete removal of the watchdog list in 061e10.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 1 -
 include/watchdog.h         | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index adb4c63909..d4de213fa5 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -237,7 +237,6 @@ int watchdog_deregister(struct watchdog *wd)
 	}
 
 	class_remove_device(&watchdog_class, &wd->dev);
-	list_del(&wd->list);
 
 	return 0;
 }
diff --git a/include/watchdog.h b/include/watchdog.h
index 2a0e9d1b41..eaea07910c 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -28,7 +28,6 @@ struct watchdog {
 	uint64_t last_ping;
 	int seconds_to_expire;
 	struct poller_async poller;
-	struct list_head list;
 	int running; /* enum wdog_hw_running */
 };
 

---
base-commit: 894166924badc0dea06c96476fb86f186e03c779
change-id: 20240918-jre-remove-watchdog-list-76667d3c3b26

Best regards,
-- 
Jonas Rebmann <jre@pengutronix.de>



