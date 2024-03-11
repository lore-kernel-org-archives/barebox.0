Delivery-date: Mon, 11 Mar 2024 10:11:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbgm-000pt3-0G
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 10:11:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbgi-0001WA-Cc
	for lore@pengutronix.de; Mon, 11 Mar 2024 10:11:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y1T82DDRvYOHC1OTjSlfEg4WKwMOysO6fz2VgSm7C6s=; b=T51RPc10A8B8OXkLFSCVsLqzzv
	o+X20IUDm3CUDDJZtbKxp4xpusJrEhX5WKZaKXbMWn7cYukJgH8F6O6WXavAoJgvy+sqmQSJWVbDa
	riofQuw9vBJPYl8ez+Xrl1IFvVjd6g5Jq3OUT2aUrIJBOj1L61IPlWDBmb2a+QPkgtUk4wmfHLJ+O
	6DwKSf3H6rvds2rAhkYiLoyEKmBaOdI9NSh069jx3GyHx7+ujWYtSMzp43+Bfkj0iqVVQXFqpY+82
	EJzZdG1cvic3as+nqP5OvYfddvCMpUjWa4+iKuzssARy3mGA2ET4cuxBHo5w4hSfSwaP+4gyfPk6O
	aFp2kysw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbfw-00000000kLO-20tG;
	Mon, 11 Mar 2024 09:10:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbfp-00000000kHw-3OBX
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 09:10:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfi-0000gN-Hx; Mon, 11 Mar 2024 10:10:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfi-005g47-2m; Mon, 11 Mar 2024 10:10:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfh-00ANLu-1g;
	Mon, 11 Mar 2024 10:10:14 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 11 Mar 2024 10:10:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-karo-imx8mp-som-board-upstreaming-v1-1-7c77f9ba02e5@pengutronix.de>
References: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
In-Reply-To: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_021021_994904_CC4426F0 
X-CRM114-Status: UNSURE (   7.78  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/6] of: introduce of_property_read_s32
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sebastian Reichel <sre@kernel.org>

Introduce signed 32bit integer of_property_read method.

Signed-off-by: Sebastian Reichel <sre@kernel.org>
Signed-off-by: Grant Likely <grant.likely@linaro.org>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 include/of.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/of.h b/include/of.h
index 9cd2c9aee2..9eef6d7f13 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1138,6 +1138,13 @@ static inline int of_property_read_u32(const struct device_node *np,
 	return of_property_read_u32_array(np, propname, out_value, 1);
 }
 
+static inline int of_property_read_s32(const struct device_node *np,
+				       const char *propname,
+				       s32 *out_value)
+{
+	return of_property_read_u32(np, propname, (u32*) out_value);
+}
+
 /**
  * of_property_read_u64_array - Find and read an array of 64 bit integers
  * from a property.

-- 
2.39.2



