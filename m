Delivery-date: Thu, 27 Mar 2025 08:49:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txhzW-004mQd-1u
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 08:49:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txhzW-0001Qy-2l
	for lore@pengutronix.de; Thu, 27 Mar 2025 08:49:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Y42SGsK2bfUHTGlUhZjDvOMqOPayX8HByB8XUIZc/0Y=; b=VchOpgKLHefbKAbWD5yU6P9O+7
	V4zU8vLIQwad7ysx8MNd5AirkqylyDajAySjimSYkzENNPgQqLP4T6gOfSd+39MdYiCmjHABaYGeu
	7GfPFx6Q2o4xysFcRy/P1/AYrNqVzmgVS50jbcv0sMPNJe8BGybLGQREGKpBVLttEwTJUsunNoMiC
	8INjXChjoQP7AgId8UM6RiPOi2agVjXkz3fTSdF4wZH8MRRpcQBGqCsGKUHsNjSK5hSMcF9lRE8Ix
	ysDmoiEvafGAk+rsApcvBfgMz0RpsQyBj5h2nwhsX1qyeiTy9q5m5Edd2mRvMxzCseipyzPul0aL2
	8F64Eo3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txhz0-0000000ANFj-1v6z;
	Thu, 27 Mar 2025 07:48:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txhyL-0000000ANA5-3ejV
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 07:48:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txhyK-00017E-9w; Thu, 27 Mar 2025 08:48:16 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txhyK-001t8e-0M;
	Thu, 27 Mar 2025 08:48:16 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txhyK-00FaCZ-04;
	Thu, 27 Mar 2025 08:48:16 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 Mar 2025 08:48:14 +0100
Message-Id: <20250327074814.3714019-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_004817_910167_982B6D13 
X-CRM114-Status: GOOD (  10.17  )
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
Subject: [PATCH] fixup! complete: give device_param_complete a flags parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When completing an existing variable, we want a trailing assignment, so
the use can just start typing the value.

This was the behavior before the commit being fixed up broke it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/complete.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/complete.c b/common/complete.c
index 6cb674a0cc9c..5327944ca93b 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -469,7 +469,7 @@ int complete(char *instr, char **outstr)
 		} else {
 			command_complete(&sl, instr);
 			path_command_complete(&sl, instr);
-			env_param_complete(&sl, instr, 0);
+			env_param_complete(&sl, instr, DEVPARAM_COMPLETE_ASSIGNMENT);
 		}
 		if (*instr == '$')
 			env_param_complete(&sl, instr + 1, DEVPARAM_COMPLETE_DOLLAR);
-- 
2.39.5



