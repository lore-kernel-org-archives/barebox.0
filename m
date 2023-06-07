Delivery-date: Wed, 07 Jun 2023 14:08:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryG-00EJW9-Px
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 14:08:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryD-000428-DI
	for lore@pengutronix.de; Wed, 07 Jun 2023 14:08:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PbHOQI1DRbw9PgKzxlpcoFIXpwnZ2PNbXRQqmYeTBEI=; b=qE1NaxyWzC7UWurYjld+PHX6ky
	a2/VR3N8FdI9/kv41ZE3p6y4XZ6F+22DDvvBWcsHcnwqUOI1IN5ISryuWprmlh5p7UU5XlgFmGkFL
	NPo689aA0NgUqbz9l3LNM3pkjtwOcPumxNohBbXC8spU6tmaKdUjnYgoVFF0zNNw/CdWAqOKaLogU
	9klrMh/f+5RYlsR9uanoKv+aRJg1HZm7iT6eh/f4WinUD/Z3ICxZ8NkP+lMdcSZZMzUYlQQv+nM1K
	MMlWb66UbyO6mESHg6P/pLxFuJWeJd6R36Wf+83Do8Dotr/rM/SlqNlwGihUdjVDSLRiNgeEfGi+v
	yhNzd+6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rx4-005l46-1y;
	Wed, 07 Jun 2023 12:07:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwu-005ktR-0e
	for barebox@bombadil.infradead.org;
	Wed, 07 Jun 2023 12:07:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PbHOQI1DRbw9PgKzxlpcoFIXpwnZ2PNbXRQqmYeTBEI=; b=GI56gq5yuPkN4iI0uKxLWjf3O+
	aTLsUFClCNLzDbLBT+YBQD5GEdQKz36H0PePAGWBzQux7PfUoMwEqdd+ufhcxcKcMc2SorjqlYF2A
	0axhQQNPPX3IqMtY3A91sdI4jp7FvYKdUyAfNtCclFW8uifUtctH9siu+4UWZINiB6meEAxai62Pe
	+0ZW2nm/FszDwExsK1qJtV9I/KpGBSWaTPdvW4ATe8+3fVe/Znw/D1aULwgBjLl7SpSocVo+NvSty
	tFI94s7P9tuvbhGL3S9PnJRQOw3VHgEJ0HQLvkjy3RFLjkmwWsUUD9o3Kwj0tW/4RAH3QwXKYsO5O
	oATNDvDQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwn-0058oz-1p
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:07:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwi-00033h-Ri; Wed, 07 Jun 2023 14:07:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwi-005jkX-5M; Wed, 07 Jun 2023 14:07:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwe-00CyMc-Vo; Wed, 07 Jun 2023 14:07:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jun 2023 14:07:00 +0200
Message-Id: <20230607120714.3083182-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
References: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_130729_852017_56CFF06B 
X-CRM114-Status: GOOD (  12.25  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/19] state: fix deep probe handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

State backend doesn't necessarily point at a device tree node that has a
device associated, e.g. when we have a top-level fixed-partitions node
with the barebox-specific partuuid binding. As of_find_path_by_node will
iterate over all available cdev's we need not handle the error and can
just call of_find_path_by_node.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 common/state/state.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 6b4acbb32bcc..85854f564d48 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -618,9 +618,15 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	}
 
 #ifdef __BAREBOX__
-	ret = of_partition_ensure_probed(partition_node);
-	if (ret)
-		goto out_release_state;
+	/*
+	 * On EFI, where devices are not instantiated from device tree, the
+	 * state backend may point at a top-level fixed-partitions partition
+	 * subnode with a partuuid property, which will be looked up globally.
+	 *
+	 * In order to support this binding, we do not early exit when
+	 * of_partition_ensure_probed fails, but instead try the custom binding.
+	 */
+	(void)of_partition_ensure_probed(partition_node);
 
 	ret = of_find_path_by_node(partition_node, &state->backend_path, 0);
 #else
-- 
2.39.2



