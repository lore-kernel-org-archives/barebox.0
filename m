Delivery-date: Fri, 10 Nov 2023 23:05:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Zd7-006VHs-2X
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 23:05:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Zd7-0008JJ-Rm
	for lore@pengutronix.de; Fri, 10 Nov 2023 23:05:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R5cDMIAph3om1PwSaIhy33x4cCTAefxofbBMYY7l7WY=; b=rNVBVCNXq63hzIFO0dq8ZQRFdL
	HUhuEEPlbTCx1KoWYxxrtuihOEtwMu/hT1elc1AhNGpxMfP+VuytCarAPZyCKGxfSzJkGVdr9qn+C
	Xj4iG9Kerd8gD5dxX/EeuC62a3AwftccaxZSAfVRwiUcZLFeOxYuHcZfMWngl40d2J6NNCYpQkvV0
	g47TsR80EOBENzIQN2rxvZcaKrn1QiYLYGtLAxuePqyAyL5lloGzKQrmXR2CM/u4kqZ4Gzkc91S8D
	Nkgi0EuKouxy30osRnDo5fx2H7Faj+G79gfTrj+gqyMhWBQHv+jsCMtyPCAiYMUOD7y/2or6zYzgo
	eHzoNomQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Zc6-009WSf-0n;
	Fri, 10 Nov 2023 22:04:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Zc0-009WPB-1J
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 22:04:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zbz-0007mo-3K; Fri, 10 Nov 2023 23:04:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zby-00872a-N7; Fri, 10 Nov 2023 23:04:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-00BRGz-2g;
	Fri, 10 Nov 2023 22:44:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 10 Nov 2023 22:44:20 +0100
Message-Id: <20231110214421.2726093-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_140424_525260_D1ABF9B6 
X-CRM114-Status: GOOD (  10.09  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 17/18] of: define of_devices_ensure_probed_by_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We will need to ensure probe of OP-TEE from SCMI code in a follow-up
commit, so add a small helper to facilitate this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/of.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/of.h b/include/of.h
index a7a1ce125fc0..7ebf1f02cc68 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1220,6 +1220,16 @@ int of_device_disable(struct device_node *node);
 int of_device_disable_path(const char *path);
 int of_device_disable_by_alias(const char *alias);
 
+static inline int of_devices_ensure_probed_by_compatible(char *compatible)
+{
+	struct of_device_id match_id[] = {
+		{ .compatible = compatible, },
+		{ /* sentinel */ },
+	};
+
+	return of_devices_ensure_probed_by_dev_id(match_id);
+}
+
 phandle of_get_tree_max_phandle(struct device_node *root);
 phandle of_node_create_phandle(struct device_node *node);
 int of_set_property_to_child_phandle(struct device_node *node, char *prop_name);
-- 
2.39.2



