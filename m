Delivery-date: Thu, 07 Apr 2022 11:17:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOGy-00AI3A-Bm
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 11:17:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOGu-00020t-Vk
	for lore@pengutronix.de; Thu, 07 Apr 2022 11:17:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SXCeGuT61QuVnwfeU/5QS1zEiUpX7Yl1Dfh7wEPbv8=; b=lq7952Fc3Ly5hh
	MnMjl0LJKCjmUvTarEsCpiaCUUfDeRVyZBidZw06vi2go3j9xQ/GZoDDBfcLRgFoRh288G6dkALpW
	6X6ZdWIuCdTr9twCaEMhHNXya3+VzQUjdzgiLAf5tbasqzJx3zh2ia78M2mVqNXS60yfJ8SfJAFtk
	Y2EmAZ6BA7gqr5629KoFNjabJeTsPXvB7cKYhh6hvwzPUqvPnpXCto49juD+/1txpIYRyxglQxSC4
	8k6vaj6v9ymItwYR/vSfuMNBQE2uWkixbgjtFuNaASmF5nLEmo06CP6Q2NyaHTP44mvkmXPKtZRRB
	kUh5vUC7q8uOKoQU2Bew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOFL-00Al3V-Qe; Thu, 07 Apr 2022 09:16:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncNx2-00Acvm-L8
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 08:57:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNwz-0005pF-IM; Thu, 07 Apr 2022 10:57:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNx0-001ZtH-5I; Thu, 07 Apr 2022 10:57:08 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNww-003zUW-KW; Thu, 07 Apr 2022 10:57:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Apr 2022 10:56:58 +0200
Message-Id: <20220407085705.951285-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220407085705.951285-1-o.rempel@pengutronix.de>
References: <20220407085705.951285-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_015712_753632_BAD73EB3 
X-CRM114-Status: GOOD (  13.72  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 05/12] net: port part of if_vlan header from kernel v5.17
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This header is needed for SJA11xx switch driver

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/linux/if_vlan.h | 56 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 include/linux/if_vlan.h

diff --git a/include/linux/if_vlan.h b/include/linux/if_vlan.h
new file mode 100644
index 0000000000..9e54685064
--- /dev/null
+++ b/include/linux/if_vlan.h
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * VLAN		An implementation of 802.1Q VLAN tagging.
+ *
+ * Authors:	Ben Greear <greearb@candelatech.com>
+ */
+#ifndef _LINUX_IF_VLAN_H_
+#define _LINUX_IF_VLAN_H_
+
+#define VLAN_HLEN	4		/* The additional bytes required by VLAN
+					 * (in addition to the Ethernet header)
+					 */
+#define VLAN_ETH_HLEN	18		/* Total octets in header.	 */
+#define VLAN_ETH_ZLEN	64		/* Min. octets in frame sans FCS */
+
+/*
+ * According to 802.3ac, the packet can be 4 bytes longer. --Klika Jan
+ */
+#define VLAN_ETH_DATA_LEN	1500	/* Max. octets in payload	 */
+#define VLAN_ETH_FRAME_LEN	1518	/* Max. octets in frame sans FCS */
+
+#define VLAN_MAX_DEPTH	8		/* Max. number of nested VLAN tags parsed */
+
+/*
+ * 	struct vlan_hdr - vlan header
+ * 	@h_vlan_TCI: priority and VLAN ID
+ *	@h_vlan_encapsulated_proto: packet type ID or len
+ */
+struct vlan_hdr {
+	__be16	h_vlan_TCI;
+	__be16	h_vlan_encapsulated_proto;
+};
+
+/**
+ *	struct vlan_ethhdr - vlan ethernet header (ethhdr + vlan_hdr)
+ *	@h_dest: destination ethernet address
+ *	@h_source: source ethernet address
+ *	@h_vlan_proto: ethernet protocol
+ *	@h_vlan_TCI: priority and VLAN ID
+ *	@h_vlan_encapsulated_proto: packet type ID or len
+ */
+struct vlan_ethhdr {
+	unsigned char	h_dest[ETH_ALEN];
+	unsigned char	h_source[ETH_ALEN];
+	__be16		h_vlan_proto;
+	__be16		h_vlan_TCI;
+	__be16		h_vlan_encapsulated_proto;
+};
+
+#define VLAN_PRIO_MASK		0xe000 /* Priority Code Point */
+#define VLAN_PRIO_SHIFT		13
+#define VLAN_CFI_MASK		0x1000 /* Canonical Format Indicator / Drop Eligible Indicator */
+#define VLAN_VID_MASK		0x0fff /* VLAN Identifier */
+#define VLAN_N_VID		4096
+
+#endif /* !(_LINUX_IF_VLAN_H_) */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

