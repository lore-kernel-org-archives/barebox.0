Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSGhu-0000Pk-Ns
 for barebox@lists.infradead.org; Sun, 28 Oct 2012 00:26:31 +0000
Received: from mail409.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id CBF4EFFA50A
 for <barebox@lists.infradead.org>; Sun, 28 Oct 2012 02:33:29 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 28 Oct 2012 02:24:06 +0200
Message-Id: <1351383852-8488-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351383852-8488-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121028002134.GD28904@game.jcrosoft.org>
 <1351383852-8488-1-git-send-email-plagnioj@jcrosoft.com>
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

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/w1_mac_address.h |   64 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 include/w1_mac_address.h

diff --git a/include/w1_mac_address.h b/include/w1_mac_address.h
new file mode 100644
index 0000000..ed93e0e
--- /dev/null
+++ b/include/w1_mac_address.h
@@ -0,0 +1,64 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#ifndef __W1_MAC_ADDRESS_H__
+#define __W1_MAC_ADDRESS_H__
+
+static inline int w1_mac_address_register(int eth_num, bool local,
+					 char * oui, char *w1_dev)
+{
+	char buf[6];
+	const char *val;
+	u64 id;
+	int nb_oui = 0;
+	int i, shift;
+	char *tmp = NULL;
+	int ret = 0;
+
+	if (!local && !oui)
+		return -EINVAL;
+
+	if (oui) {
+		nb_oui = strlen(oui);
+		if (!local && nb_oui != 3)
+			return -EINVAL;
+
+		nb_oui = min(nb_oui, 3);
+
+		for (i = 0; i < nb_oui; i++)
+			buf[i] = oui[i];
+	}
+
+	tmp = asprintf("%s.id", w1_dev);
+	if (!tmp)
+		return -ENOMEM;
+
+	val = getenv("w1-1-0.id");
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
+		buf[i] = (id >> shift) & 0xff;
+
+	if (local)
+		buf[0] |= 0x2;
+
+	eth_register_ethaddr(eth_num, buf);
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
