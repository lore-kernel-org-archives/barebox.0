Delivery-date: Tue, 11 Mar 2025 13:48:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trz2R-00CgAt-09
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 13:48:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trz2P-0007cH-R4
	for lore@pengutronix.de; Tue, 11 Mar 2025 13:48:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UgO/eqd6tRFLVTDQCFSNPdAxLmhHzx0OZggVmxdVyRU=; b=uSSVoRhnjAkvcqgr6YLDo7/NMx
	Z4pSaqTfrvq9qgeiZ0q/v5GA+Os1VCAKhYdVMQOjNBACe+np+aUjOj28+i+kqDp24tBlWiuMRbn0F
	uFhT3eht0aX4/DqAStUnZsTfVeI199TpBWh6Rg3HZJuKWfJuYLPOmiDpBeWPSW4qgcAwVNvg/xZOg
	NxXcpKEM26PEjZUsecEsre6jsTAq75T++mOxcV0kD9poATCkANL3qfNiadihcP9wHaC+Bvy5yyECd
	4RAE36e3Zau5dV8WIpMSyzfCJKp09Qz7LRr4xPQSx3UUAJTyXC2NuKLoM8y2I9uWyjIA5L/yRSwOd
	L3QkkNJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trz22-00000005jOv-105Q;
	Tue, 11 Mar 2025 12:48:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trynT-00000005f5c-0erD
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 12:33:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trynS-0004hZ-0I; Tue, 11 Mar 2025 13:33:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trynR-005B8G-2d;
	Tue, 11 Mar 2025 13:33:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-000oVs-1I;
	Tue, 11 Mar 2025 13:25:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Mar 2025 13:25:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-am625-secure-v2-12-3cbbfa092346@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
In-Reply-To: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741695915; l=894;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9I0+XkkOhyEpvImIS4rluyKHJXanlR5o7B2QGu+f30M=;
 b=EwiPT9ozkodIxPPYytdrI4R3W+g4SakwVy27pKN+jjgQw8E45pLlpCW1KmP3mBI9L7f1EGl2f
 0TVKMLPyiEKCy5DTM0N1Cs9O4tTwYOhkoCLDzahoA0IQI9zEMZRTklP
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_053323_222276_0F120387 
X-CRM114-Status: UNSURE (   9.47  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 12/14] scripts/k3img: remove temporary files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Remove temporary files when exiting the script. While at it add a "set
-e" to exit the script when a command fails.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/k3img | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/scripts/k3img b/scripts/k3img
index 048da82b92..a514852fcd 100755
--- a/scripts/k3img
+++ b/scripts/k3img
@@ -1,5 +1,7 @@
 #!/bin/bash
 
+set -e
+
 TEMP=$(getopt -o '' --long 'sysfw:,sysfwdata:,dmdata:,out:,sbl:,key:,innerdata:' -n 'k3img' -- "$@")
 
 if [ $? -ne 0 ]; then
@@ -76,8 +78,11 @@ dmdatasize=$(stat -c%s $dmdata)
 
 total=$(($sblsize + $sysfwsize + $sysfwdatasize + $dmdatasize))
 
-certcfg=$(mktemp k3img.XXXXXXX)
-cert=$(mktemp k3img.XXXXXXX)
+TMPDIR="$(mktemp -d)"
+trap 'rm -rf -- "$TMPDIR"' EXIT
+
+certcfg=${TMPDIR}/certcfg
+cert=${TMPDIR}/cert
 
 num_comp=4
 

-- 
2.39.5



