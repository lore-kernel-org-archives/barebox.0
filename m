Delivery-date: Fri, 13 Mar 2026 14:34:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12el-000DPa-14
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:23 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eU-0000GG-K8
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PRHxCasbWDnLMT4SP7JEShGTXwIqr73lG9tl9HUg13U=; b=gxCzjUGWXv+3XhySK9RsK6vc47
	1LCzWWVCujnzqWwUU5K19sceETT1e8e7Dq6q60J6a345vuML3QgjFTaX8ApRXYWoSzJKSQggSgdYM
	AOA2vi6LwoO3mLR5oX3jVU881/yPv1dS6E5oF61UsHue/9SAT0CE0kr8MrFlo2Lpi0EF/Yav9eLjZ
	qmNdhug8UuH+TTpwuwOxZyCKGAWAP1P7lW9FpvM5DLtjYSP3Eb8TCq2qwq0nmKd20zJu65ZfkCN/L
	E/hVzs9SVW14aAs8Pjgh6IeZznWM8eXvbde5VQKuOug7RXtw+462Tcp8JPYzEaWrN+LVNz9rUeWeQ
	ydPwEFlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dG-00000000FmG-3B7F;
	Fri, 13 Mar 2026 13:32:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d8-00000000FXm-31EH
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PRHxCasbWDnLMT4SP7JEShGTXwIqr73lG9tl9HUg13U=; b=HAAcpITyAbjKZrD6Qw+ZmaMkzq
	szoQFAEEi89CHtdqBE6nnymvkd2fDeDHU18wmfBhu2SyQ9/42Qjxc35jcYVm/h+uvRQoKmaxRTzRI
	ThiMZWlyQckRarQmMnXLioXNcS11MKrj44EDzYkBibaQuyHEDFPrd8+Inn30b98rMOWydAKvG1iTX
	wcZfzeuWfkfp7ihX2pZPO9uIwz4c+cm6ABXKpfc0XnO3R7NY/QFHR0NhBf0yyts2QHO8Wr+Jhofa/
	vH0K7NopCV3jgCxmxaB9uuAqFldHJIP1v8eVn7QPnMNj3fR/wt9jSrNuluVfaBNiQoHKovBCIAfSl
	N/Q3+mHQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cy-00000003OSg-3nZ6
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0006om-FM; Fri, 13 Mar 2026 14:32:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0005T2-0b;
	Fri, 13 Mar 2026 14:32:32 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-0F35;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 13 Mar 2026 14:25:02 +0100
Message-ID: <20260313132631.2257573-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_183713_722CE8F2 
X-CRM114-Status: UNSURE (   9.62  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 18/58] scripts: Makefile.lib: suppress graph_port warnings for overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

In overlays, often only part of a graph is applied with the rest in the
base device tree, so this warning is seldom useful. Disable it.

(cherry picked from commit c28e8f55611cf8c3d104a245bdffb33ccae5f90e)

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20260112085548.2952525-2-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 1c8a5ed06c53..b44cb3b9ea8a 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -390,7 +390,7 @@ ifeq ($(CONFIG_OF_OVERLAY_LIVE), y)
 DTC_FLAGS.dtb += -@
 endif
 
-DTC_FLAGS.dtbo += -Wno-avoid_default_addr_size -Wno-reg_format
+DTC_FLAGS.dtbo += -Wno-avoid_default_addr_size -Wno-reg_format -Wno-graph_port
 
 # Generate an assembly file to wrap the output of the device tree compiler
 quiet_cmd_dt_S_dtb = DTB     $@
-- 
2.47.3



