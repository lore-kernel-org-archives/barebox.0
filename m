Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMtRi-0008Eq-2T
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 05:40:03 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0ACBADC84E3
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2013 07:39:41 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 20 Sep 2013 07:40:48 +0200
Message-Id: <1379655650-23221-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130920053940.GC1137@ns203013.ovh.net>
References: <20130920053940.GC1137@ns203013.ovh.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] introduce helper to generate mac address with OUI
To: barebox@lists.infradead.org

use random mac address with fixed OUI provided

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/local_mac_address.h | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 include/local_mac_address.h

diff --git a/include/local_mac_address.h b/include/local_mac_address.h
new file mode 100644
index 0000000..3920334
--- /dev/null
+++ b/include/local_mac_address.h
@@ -0,0 +1,40 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#ifndef __LOCAL_MAC_ADDRESS_H__
+#define __LOCAL_MAC_ADDRESS_H__
+
+/**
+ * local_mac_address_register - use random number with fix
+ * OUI provided device to provide an Ethernet address
+ * @ethid: ethernet device id
+ * @oui: Ethernet OUI (3 bytes)
+ *
+ * Generate a local Ethernet address (MAC) that is not multicast using a 1-wire id.
+ */
+static inline int local_mac_address_register(int ethid, char * oui)
+{
+	char addr[6];
+	int nb_oui = 3;
+	int i;
+
+	if (!oui)
+		return -EINVAL;
+
+	random_ether_addr(addr);
+
+	for (i = 0; i < nb_oui; i++)
+		addr[i] = oui[i];
+
+	addr[0] &= 0xfe;	/* clear multicast bit */
+	addr[0] |= 0x02;	/* set local assignment bit (IEEE802) */
+
+	eth_register_ethaddr(ethid, addr);
+
+	return 0;
+}
+
+#endif /* __LOCAL_MAC_ADDRESS_H__ */
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
