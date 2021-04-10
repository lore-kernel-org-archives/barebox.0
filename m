Delivery-date: Sat, 10 Apr 2021 13:07:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBT3-00013x-Us
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 13:07:57 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBT2-0002Bl-Ta
	for lore@pengutronix.de; Sat, 10 Apr 2021 13:07:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ODjn791FafzLiBhskEMdC4fq/nBArIwmfLmFtlH6ReI=; b=hrK4c40ALlHlrV1gJW2X0eD83F
	2RRggks9K9QA+ooF6mesI+VpyHf/oHDDffdsyHTODAlEF8BVbRRYqFIF+FBnQE0jjYa1ieT3Ojq6i
	mf+YR2Yq+uA/1LhdQuIbqEVHOahjhQu5Faopd9xABI/iYix+hyRuIujXJ6jQO5vYREcM1tAKjbMMJ
	WQUTdxVdFdi3QcORaTuNnxnShe3EEKcU1/9RtCtombwTw9eyuvtQeLdPrGoaQ2JUhmszCKd5SoMPh
	ne9M0kJy5GzQz38R6UdVTyk0oPiWZgbTFgMhTypSrZbvLZFsNe2b6zJ6CxR5ZpAVtI/icUcbVE2po
	DNYDR8gg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVBS3-002iHX-05; Sat, 10 Apr 2021 11:06:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBRv-002iGs-Nf
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 11:06:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=hk8TQ0vCkJ2eSih45hmnfKO/3alMKla1INVGnoxwafU=; b=zMCLlx16cRJJqp6Wtf61ctlDoK
 7pVdTIQHj9cqOHRyNY6bYEP6FaxM6yILNK/RrGSY84atTaVyr5OdOP8s1r27sDlGb0JmKWYg03vwM
 Wj0xt4gw28Xa7MpCSTiCd6ofD7qdf6s2q04Pqn6s7C6cfPwoV85fMzW0A1RZCT9cPICdsCWu+0xmt
 Was2pjavxwA2AFUTbB4dgvVeudlXVl3ezmvMEKVZ/j+sC3FwE4MNygao9EseDRBJD2kE+OVQUuXvE
 BSEZo8FJkgcXVVEydwckcZ/zPUVb92iv1K0+FoavLmD517QYWNcfb7RhaSspPsnNUwuezkoTA5GyW
 qsGJLswg==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBRt-0053El-1a
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 11:06:46 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 898F640005;
 Sat, 10 Apr 2021 11:06:42 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 13:06:35 +0200
Message-Id: <20210410110638.2106658-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_040645_245921_FC6336B1 
X-CRM114-Status: GOOD (  13.50  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] PBL: fdt: implement fdt_device_get_match_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently, the generic DT image can't properly have a PBL console,
because it's only known at runtime what system we are running on.

As we already parse the FDT in the PBL to get the memory regions, we
could extract the board compatible as well and determine which UART to
use. Add a helper to achieve this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - use strcasecmp (Jules)
---
 include/pbl.h |  9 +++++++++
 pbl/fdt.c     | 35 +++++++++++++++++++++++++++++++++++
 pbl/string.c  | 12 ++++++++++++
 3 files changed, 56 insertions(+)

diff --git a/include/pbl.h b/include/pbl.h
index 194d5e750839..f58daec7351a 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -34,4 +34,13 @@ ssize_t pbl_fat_load(struct pbl_bio *, const char *filename, void *dest, size_t
 
 void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
 
+struct fdt_device_id {
+	const char *compatible;
+	const void *data;
+};
+
+const void *
+fdt_device_get_match_data(const void *fdt, const char *nodepath,
+			  const struct fdt_device_id ids[]);
+
 #endif /* __PBL_H__ */
diff --git a/pbl/fdt.c b/pbl/fdt.c
index b4a40a514b8b..18ddb9f48a6e 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -68,3 +68,38 @@ err:
 	pr_err("No memory, cannot continue\n");
 	while (1);
 }
+
+const void *fdt_device_get_match_data(const void *fdt, const char *nodepath,
+				      const struct fdt_device_id ids[])
+{
+	int node, length;
+	const char *list, *end;
+	const struct fdt_device_id *id;
+
+	node = fdt_path_offset(fdt, nodepath);
+	if (node < 0)
+		return NULL;
+
+	list = fdt_getprop(fdt, node, "compatible", &length);
+	if (!list)
+		return NULL;
+
+	end = list + length;
+
+	while (list < end) {
+		length = strnlen(list, end - list) + 1;
+
+		/* Abort if the last string isn't properly NUL-terminated. */
+		if (list + length > end)
+			return NULL;
+
+		for (id = ids; id->compatible; id++) {
+			if (!strcasecmp(list, id->compatible))
+				return id->data;
+		}
+
+		list += length;
+	}
+
+	return NULL;
+}
diff --git a/pbl/string.c b/pbl/string.c
index e6c0997ebc6d..e96eb99fc22d 100644
--- a/pbl/string.c
+++ b/pbl/string.c
@@ -7,6 +7,7 @@
 #include <linux/types.h>
 #include <linux/string.h>
 #include <linux/compiler.h>
+#include <linux/ctype.h>
 
 void *memcpy(void *__dest, __const void *__src, size_t __n)
 {
@@ -98,6 +99,17 @@ int strcmp(const char *cs, const char *ct)
 	return res;
 }
 
+int strcasecmp(const char *s1, const char *s2)
+{
+	int c1, c2;
+
+	do {
+		c1 = tolower(*s1++);
+		c2 = tolower(*s2++);
+	} while (c1 == c2 && c1 != 0);
+	return c1 - c2;
+}
+
 void *memchr(const void *s, int c, size_t count)
 {
 	const unsigned char *p = s;
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

