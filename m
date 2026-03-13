Delivery-date: Fri, 13 Mar 2026 14:33:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eN-000DLm-0j
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:33:59 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12e2-00087b-PD
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:33:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2p8LisPzl5U75eOYefWpMjTDv3/PJa+XyqdjWIPLDX8=; b=IeiLLwTYNv+i8+WXfMHYmYqJyL
	QviCq1yDO4ofh3lVURI7JbvP8Hhhr0I6jRfoW68wZGHkYYAsiN1yBnsX5ceu6ixJVelRBD4+FNiSU
	t9XDMQNogPcXdUpxDkiFRRQ7VsBzTENB2cNo9EtwqDyUQ1elZTLdfkBOnvDgnOWoUh6SUHIlkgqbJ
	Ic1ej0MAcin5GehqhI1Hw7Q2eyZMssMjBCaOaqcqZCbuyUhPktMpUhPTFGiFHj8JSorG8imUE/+N8
	Kjswj0BKfTobS+VFDd22ky0NhOopJdg9D9qL4uRwcvOx8GzAzcp/xcxDoPDCJFzqgmYodxk/QKCYh
	nYYAaBYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d9-00000000FZN-0wGV;
	Fri, 13 Mar 2026 13:32:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d6-00000000FVz-0bF0
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2p8LisPzl5U75eOYefWpMjTDv3/PJa+XyqdjWIPLDX8=; b=TKkUsICZnWOSJo7kMaCb7qf++V
	iKCGb1CWCNv47Mt8Ieg5X5rLI+lC/2gjQYNgHCOBIp6SqqdOyscp3XE9qseqNdNBMEetI7P1fIUsl
	x4XEi6gbUI6NkmgT4Ed3wm9w5Pvlcb9lb292ZIDk9TM34V6BerN7nw0Wt6khniPtCIHWq21/cbdUY
	YUSBFw/yQIpZgO7XR/eAhROTKVlk2Nfv/rKGKV3HuxjRJCoY9Z3MmqLHELg1J8sDnKdWLLpll+e/E
	Lp8c/nZd4mFNFZf3vRAbotOMpvjjz6DhYeEULak4om5uDGuFrpe5kq/CVpZoZgsM+yEBOpajk6osq
	C/NSQ2Yg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d2-0000000D9wA-0oOG
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0006ru-Jc; Fri, 13 Mar 2026 14:32:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0005Ts-1J;
	Fri, 13 Mar 2026 14:32:33 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-3orj;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:21 +0100
Message-ID: <20260313132631.2257573-38-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133236_329606_1BBD6061 
X-CRM114-Status: UNSURE (   9.01  )
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
Subject: [PATCH v2025.09.y 37/58] pmdomain: fix dereference before NULL check in genpd_get_from_provider
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

genpd_get_from_provider() dereferences genpdspec->np in the variable
declaration before checking whether genpdspec itself is NULL.

(cherry picked from commit de2124f33968f8167f5371e5f8d7f6b0f2563fc5)

Fixes: abf97f3993 ("pmdomain: look up pmdomain even if not have_genpd_providers")
Reported-by: GCC 14.2 -fanalyzer
Co-authored-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260216084253.3547270-4-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/power.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index 66ad6d05e815..b641e11ef3c3 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -255,13 +255,15 @@ static struct generic_pm_domain *genpd_get_from_provider(
 					struct of_phandle_args *genpdspec)
 {
 	struct generic_pm_domain *genpd = ERR_PTR(-ENOENT);
-	struct device_node *node = genpdspec->np;
 	struct of_genpd_provider *provider;
+	struct device_node *node;
 	int ret;
 
 	if (!genpdspec)
 		return ERR_PTR(-EINVAL);
 
+	node = genpdspec->np;
+
 	ret = of_device_ensure_probed(node);
 	if (ret) {
 		struct device_node *parent;
-- 
2.47.3



