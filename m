Delivery-date: Mon, 12 Jun 2023 09:03:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8ba4-003WMM-W4
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 09:03:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8ba2-0007i8-GW
	for lore@pengutronix.de; Mon, 12 Jun 2023 09:03:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H9fBmftwRYX3vYJ23vn6Yf9+JDM8tRssXMIqlaPoJhc=; b=2Wx4AucVHAf54atKVP6FX6LdNO
	kPvmAmKbZkRiyGyPNrtfKxyH995AjBQOnihEGeWmx2eBtinKTTFcJG6S3qy3q2vkUmXiwlzCLh9XZ
	kqaWebEwWkcV8WqVN+xoFCyqrDJyWO1BwLYmL9aAtBCE1GY7Qjr2yv6azL4VvVjeubfs8gzVr8Vr5
	uJluv+K5xJ0/C+lBoodI0kVOtV7vgpgh6m2mJr2KDm36DedekFmZqLg89+7LW0Xxs0qWMTEH3hAPF
	bPTciVFr1ygnXx8U0sodZ9ijcH8PSysJYtz3DkFZWAcuKda1NHKYDbJs5wlRLNx80zyXt+vk/+azY
	Ad2o9xxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8bYw-002qQ6-2p;
	Mon, 12 Jun 2023 07:02:02 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8bYt-002qOV-0p
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 07:02:00 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id EBA56FF808;
	Mon, 12 Jun 2023 07:01:48 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 12 Jun 2023 09:01:43 +0200
Message-Id: <20230612070143.468743-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230612065626.387660-1-ahmad@a3f.at>
References: <20230612065626.387660-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_000159_446390_090377D5 
X-CRM114-Status: UNSURE (   7.88  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! scripts: add container.sh as simple podman wrapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

fix typos. The toolchains in the container have no libc, so it's
probably easiest to just set test/kconfig/disable_target_tools.kconf
globally, so ./MAKEALL mostly works.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 scripts/container.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/container.sh b/scripts/container.sh
index 4ddee7d0a90c..eb1e87b59baa 100755
--- a/scripts/container.sh
+++ b/scripts/container.sh
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 CONTAINER=${CONTAINER:-ghcr.io/barebox/barebox/barebox-ci:latest}
-KCONFIG_ADD="$test/kconfig/disable_target_tools.kconf KCONFIG_ADD"
+export KCONFIG_ADD="test/kconfig/disable_target_tools.kconf $KCONFIG_ADD"
 
 while getopts "c:uh" opt; do
 	case "$opt" in
-- 
2.40.1



