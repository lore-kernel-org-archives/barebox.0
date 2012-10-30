Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTIxH-0008Uw-8F
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 21:02:36 +0000
Received: from mail643.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 52AF3104E866
 for <barebox@lists.infradead.org>; Tue, 30 Oct 2012 22:09:38 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 30 Oct 2012 22:00:16 +0100
Message-Id: <1351630822-20803-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351630822-20803-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121030205459.GE29599@game.jcrosoft.org>
 <1351630822-20803-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/8] w1: introduce helper to generate mac address from 1-wire
 id
To: barebox@lists.infradead.org

use the first 3 byte of the id of a 1-wire
or 6 if no OUI provided device to provide an Ethernet address

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/w1_mac_address.h |   65 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 include/w1_mac_address.h

diff --git a/include/w1_mac_address.h b/include/w1_mac_address.h
new file mode 100644
index 0000000..89dd914
--- /dev/null
+++ b/include/w1_mac_address.h
@@ -0,0 +1,65 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#ifndef __W1_MAC_ADDRESS_H__
+#define __W1_MAC_ADDRESS_H__
+
+/**
+ * w1_local_mac_address_register - use the first 3 byte of the id of a 1-wire
+ * or 6 if no OUI provided device to provide an Ethernet address
+ * @ethid: ethernet device id
+ * @oui: Ethernet OUI (3 bytes)
+ * @w1_dev: 1-wire device name
+ *
+ * Generate a local Ethernet address (MAC) that is not multicast using a 1-wire id.
+ */
+static inline int w1_local_mac_address_register(int ethid, char * oui, char *w1_dev)
+{
+	char addr[6];
+	const char *val;
+	u64 id;
+	int nb_oui = 0;
+	int i, shift;
+	char *tmp = NULL;
+	int ret = 0;
+
+	if (oui) {
+		nb_oui = 3;
+
+		for (i = 0; i < nb_oui; i++)
+			addr[i] = oui[i];
+	}
+
+	tmp = asprintf("%s.id", w1_dev);
+	if (!tmp)
+		return -ENOMEM;
+
+	val = getenv(tmp);
+	if (!val) {
+		ret = -EINVAL;
+		goto err;
+	}
+
+	id = simple_strtoull(val, NULL, 16);
+	if (!id) {
+		ret = -EINVAL;
+		goto err;
+	}
+
+	for (i = nb_oui, shift = 40; i < 6; i++, shift -= 8)
+		addr[i] = (id >> shift) & 0xff;
+
+	addr[0] &= 0xfe;	/* clear multicast bit */
+	addr[0] |= 0x02;	/* set local assignment bit (IEEE802) */
+
+	eth_register_ethaddr(ethid, addr);
+
+err:
+	free(tmp);
+	return ret;
+}
+
+#endif /* __W1_MAC_ADDRESS_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
