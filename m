Delivery-date: Mon, 16 Jan 2023 14:47:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPpg-00DbvH-Qo
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:47:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPpe-0000Fi-4H
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:47:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2V/h+us3Wnz7C+SipjDzal3brRw+j09rMiKMYO/G+h4=; b=ZfsWy7gAur0KGOrCJZz5DUMoPT
	vd96reA85XgPs6LLdRHF7ivHF68NBEhW8W9d8VGOYiybAZ3nEut44V2HLzCvGx3N3LM3HWI0DaWgo
	s3rawK8w33XmgNthTZk5tbop1hCz2KeEj4yw4FpqoSEfZnG8GCSrOsU31U6Xs/kUlVc3gf/xde8TC
	x+x7fEb311+ACtJuHAX/R9eFoHgsfo0GWG7BA7MvfrL5ZU3Z4/8K5x0qhUnDvVbtjOn5U4CPNDW3E
	ESLpaqlhRKzpD+9/Bh1ZTub5ybPA7N2KMsHb9joyNcge0TLebnvr1K+HmpRX4Y86w0/+l4uXu+SVD
	OTsx1+yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPoH-00AYUi-Jj; Mon, 16 Jan 2023 13:46:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPnZ-00AY8R-6A
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 13:45:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnQ-00080E-DO; Mon, 16 Jan 2023 14:45:08 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnP-006SKU-R8; Mon, 16 Jan 2023 14:45:07 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnN-008PyQ-RF; Mon, 16 Jan 2023 14:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 14:44:59 +0100
Message-Id: <20230116134501.2006391-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
References: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_054517_366717_945EE771 
X-CRM114-Status: GOOD (  10.60  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/9] net: dsa: add some helpers to ease porting kernel drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These make port of the realtek driver in a follow-up commit a bit more
similar to the Linux driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/dsa.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/dsa.h b/include/dsa.h
index 3a170475cbb8..001c4899ba41 100644
--- a/include/dsa.h
+++ b/include/dsa.h
@@ -84,7 +84,23 @@ struct dsa_switch {
 	u32 phys_mii_mask;
 };
 
+static inline struct dsa_port *dsa_to_port(struct dsa_switch *ds, int p)
+{
+	if (p >= DSA_MAX_PORTS)
+		return NULL;
+
+	return ds->dp[p];
+}
+
 int dsa_register_switch(struct dsa_switch *ds);
 u32 dsa_user_ports(struct dsa_switch *ds);
 
+#define dsa_switch_for_each_cpu_port(_dp, _dst) \
+	for (_dp = _dst->dp[_dst->cpu_port]; _dp; _dp = NULL)
+
+static inline bool dsa_port_is_cpu(struct dsa_port *port)
+{
+	return port->index == port->ds->cpu_port;
+}
+
 #endif /* __DSA_H__ */
-- 
2.30.2



