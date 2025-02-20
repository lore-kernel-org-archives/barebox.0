Delivery-date: Thu, 20 Feb 2025 10:18:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl2ha-004etF-26
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 10:18:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl2hZ-0001pu-H4
	for lore@pengutronix.de; Thu, 20 Feb 2025 10:18:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XjT2xTTbnvGSHd+Nk8WAWVDRvfj5KQupoRVtM511Jn8=; b=ydmEqnlr3kTlYwIkqiVgpbs6BX
	poFa2uhmui6AdUDrVPV2m4BgQIpqO2NBe0/JLLAErJjFCgQnWKOyBZgOHfI81jIIWhLrtwz2kRZiH
	I90NOSs/QlPx/3NM6RYcyGFeGMJxc7+heOHXDCK3/ClX54QzuzyS66MBDav+ozu5DYUH67B1YF8sl
	dbKlSNUfsiovdB2L4dG6dkJjZFro6Vk545lVQ1Lz+qYId7Jj+9kGjwzLLhuXIP86zC1NhWFx0SiiU
	Zxm5o9Ln2WgFYri+lDUzCVMOckcOG1Hc7ZUd3BPO6aZxNk12DyJzlrGkN06xciN74jFFYQcIZTquS
	RSY1Qg0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl2h4-0000000HZM9-0bO4;
	Thu, 20 Feb 2025 09:18:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl2gk-0000000HZHV-15Ir
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 09:17:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tl2gj-0001fz-1E; Thu, 20 Feb 2025 10:17:45 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tl2gi-001uaY-2k;
	Thu, 20 Feb 2025 10:17:44 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tl2gi-00Edkb-2O;
	Thu, 20 Feb 2025 10:17:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 20 Feb 2025 10:17:43 +0100
Message-Id: <20250220091743.3489127-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_011746_294915_B66E1AC7 
X-CRM114-Status: GOOD (  10.99  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] boot: fix systemd watchdog command line argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The kernel command line option to specify the watchdog to use is
"systemd.watchdog_device" as specified in [1], not
"systemd.watchdog-device"

[1] https://www.freedesktop.org/software/systemd/man/latest/kernel-command-line.html#systemd.watchdog_sec=

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/oftree.c b/common/oftree.c
index 4afe955719..2ebde791c7 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -172,7 +172,7 @@ static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_nod
 	if (alias_id < 0)
 		return;
 
-	buf = basprintf("systemd.watchdog-device=/dev/watchdog%d", alias_id);
+	buf = basprintf("systemd.watchdog_device=/dev/watchdog%d", alias_id);
 	if (!buf)
 		return;
 
-- 
2.39.5



