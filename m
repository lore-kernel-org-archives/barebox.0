Delivery-date: Fri, 19 Nov 2021 10:56:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0dD-00014Q-Bd
	for lore@lore.pengutronix.de; Fri, 19 Nov 2021 10:56:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0dC-0006UB-0E
	for lore@pengutronix.de; Fri, 19 Nov 2021 10:56:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svq+Wfbofoxv4e4s1x/xz4artKn2gHhNBaQgSt1q0RY=; b=GKj9YU0K4uoyz9
	azmsroGfHwwMkFsObp04YaMjR0XUi39X+OQ+xhtTv15HQ26bozx2vNH3zDUAUQewnztJE4GK6ZHTL
	vDzIns88evxUBxDA/Zqzv1IDh/A4Myk9bEjM0hAE9fcti+A/TAqKFOQhGbKV5eaK3HRPcx7bwTgPS
	b8R+wCQ2/+xKUC4Gg/RuWfWK88fYEVtmynJV5xt/ILXtfHXo/PQ5WiPfaeBvsqEeJDif6QamKafzX
	loyYwKEmrB0JqISLWE6iBKC8dLViiowb38vUhbWUwFuv5XNvBlTcaTq8hsZxReQuNJ7g/Jy06EbGm
	Abanc3JX+a+unJGKKMdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo0bw-00A2g7-Nh; Fri, 19 Nov 2021 09:55:12 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo0bd-00A2ZK-1Q
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 09:54:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R5oDU3DBG6voemKecoBDq9CzzmiSzDks9E/cg9fuVYk=; b=aHPYXxJJGBgJjMa2bk4cPSFk4H
 l+c+3dUYLo8eNmLDrw2WtZX/KjpGkuypLHB2FPdHBRAXXQtsxFYBRo9ib3hyASt6BHWGSWve5JbaZ
 hY1gwpbzkAcbdSqts7haXpc3a7XwIuA2CEkUAfPBkjWNG+Rw/PmTpMgV5w2MmkuJLAr7K6xR9g20j
 sG210O6xYhGSpWHROASCYiEnpMuGjJfV5E3TQBTTDWWwoR7jGBUtLH/qZURHZkTbneZbzv32Vekjs
 dxR2Kv2XtzkExmymTb4xqasWiDLrUTxkZym2aur9Tbsc0V+PbMzrsLGTjlwI6E4JgxpmBvl2pvREv
 WNokXfrQ==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:53856
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1mo0bM-00E4Y4-9v
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 10:54:44 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Fri, 19 Nov 2021 10:54:27 +0100
Message-Id: <20211119095429.1905473-5-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211119095429.1905473-1-andrej.picej@norik.com>
References: <20211119095429.1905473-1-andrej.picej@norik.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_015453_463700_845EA189 
X-CRM114-Status: GOOD (  12.01  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/6] regulator: allow use of dummy regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The idea of devicetree property which allows use of dummy regulator is
not new but has not been implemented until now.
This implementation uses barebox specific devicetree property
"barebox,allow-dummy-supply" to allow switching to a dummy power
regulator in cases where proper regulator driver is not available. This
property can be set for regulator or for PMIC regulators nodes, which
then allow use of dummy regulator for all its child nodes. Basically
just catch the regulators ensure_probed error, if
"barebox,allow-dummy-supply" property is set and return dummy regulator.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
Changes in v2:
 - node is now added on regulator side, so check for property on
   provider side
---
 drivers/regulator/core.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 097f7d779..4f45c23cd 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -197,7 +197,7 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 {
 	char *propname;
 	struct regulator_internal *ri;
-	struct device_node *node;
+	struct device_node *node, *node_parent;
 	int ret;
 
 	propname = basprintf("%s-supply", supply);
@@ -231,8 +231,24 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 	}
 
 	ret = of_device_ensure_probed(node);
-	if (ret)
+	if (ret) {
+		/* 
+		 * If "barebox,allow-dummy-supply" property is set for regulator
+		 * provider allow use of dummy regulator (NULL is returned).
+		 * Check regulator node and its parent if this setting is set
+		 * PMIC wide.
+		 */
+		node_parent = of_get_parent(node);
+		if (of_get_property(node, "barebox,allow-dummy-supply", NULL) ||
+		    of_get_property(node_parent, "barebox,allow-dummy-supply", NULL)) {
+			dev_dbg(dev, "Allow use of dummy regulator for " \
+				"%s-supply\n", supply);
+			ri = NULL;
+			goto out;
+		}
+
 		return ERR_PTR(ret);
+	}
 
 	list_for_each_entry(ri, &regulator_list, list) {
 		if (ri->node == node) {
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

