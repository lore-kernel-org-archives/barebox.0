Delivery-date: Wed, 16 Oct 2024 11:02:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zvN-004zyN-2a
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:02:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zvN-0005go-1s
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:02:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DLd34ATwwEvE//hXUOoiOAatQ2pzC9E5gM5Y89N5npM=; b=KWSCFQqeE8gs08l9IJZmZ/Or6w
	OnQooIK9c07a1hBjYQUBvo2DRsptmub+jwFixKIA3vUnkfX5GCdaWhaY5WGi6TY+Pj/ld1NJ89QUP
	PziHgkBvnyThvf4lFZ9nDcA58jLvwdw3Y/PJRhYzz4YQdYcdAfi+beWWR5Vry/9A+vP9i+qiFp9b+
	N3mIHWk+L0msWK3PC7gwkw43MRwFQbo8in8zmaDHAcAtwqETxXxIYuYSuBak/TgGdSK71l6qqVQE2
	5zMHY56kxpF/RAv795/SXpv/F6/1+2ZaJoHhmXZ0hNBrk4rO1KsWzj4QkVFKRvbPH3IiQ/nUaaY6V
	5l/yWxPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zuq-0000000B9Fc-3cKp;
	Wed, 16 Oct 2024 09:02:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zui-0000000B9B0-3eFm
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:01:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zuh-0005La-DZ; Wed, 16 Oct 2024 11:01:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zug-002EMF-OY; Wed, 16 Oct 2024 11:01:50 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zug-00GdhR-2A;
	Wed, 16 Oct 2024 11:01:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2024 11:01:38 +0200
Message-Id: <20241016090150.3963002-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
References: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_020153_037654_79E48C15 
X-CRM114-Status: GOOD (  12.88  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/13] kconfig: add IS_PROPER helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We depend on -ffunction-sections -fdata-sections at a lot of places and
fail the link without due to undefined references. This is especially
needed for obj-pbl-y code as the files usually have other functions
depending on barebox proper infrastructure, but that is never called.

This works so far, but breaks for two things: LTO and using PBL on
sandbox. Both I have not managed to get the linker not to complain about
the undefined references in the ultimately unreferenced code.

Therefore, let's solve this a different way: Add an IS_PROPER macro and
have the stubs defined when !IS_PROPER.

This has the nice side effect of compile testing the stubs during PBL
build, so forgotten semicolons are more likely to be noticed during
development instead of CI run.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/kconfig.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/kconfig.h b/include/linux/kconfig.h
index 58f68adbbadf..8d31584c0c2a 100644
--- a/include/linux/kconfig.h
+++ b/include/linux/kconfig.h
@@ -33,4 +33,14 @@
  */
 #define IS_ENABLED(option) __or(IS_BUILTIN(option), IS_MODULE(option))
 
+/*
+ * IS_PROPER(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'y', or 'm'
+ * and file is being compiled for barebox proper, 0 otherwise.
+ */
+#ifndef __PBL__
+#define IS_PROPER(option) IS_ENABLED(option)
+#else
+#define IS_PROPER(option) 0
+#endif
+
 #endif /* __LINUX_KCONFIG_H */
-- 
2.39.5



