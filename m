Delivery-date: Fri, 05 Mar 2021 12:05:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lI8H7-0002Z4-Jr
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 12:05:41 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lI8H6-0001iF-Mm
	for lore@pengutronix.de; Fri, 05 Mar 2021 12:05:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RT0aHA6LhqhjfIlq18c8KqRTpl5LrJ/6l4S5upk89n4=; b=Muz0X+1VcMbZMX
	Eh3t/uGl+8EJqx24j0QIaVqBlRB6X6rJLMdqEPXfeQyVaraNuSOreSEM5uZpqL0vFRWI2hUCk/chL
	lycnxDXhu7Ug7xTZ24sStPNF90wxXCFDI/6/TuD3BYwQjS4KIDAWpJol2sgyl23xvOifPOIR8jTs3
	K/7tkb5GVg6QeAMMyiGyrTLIBW0H3ICGpXcw6JSwe4Vesyc2b+Gtk1RBaQb3nk/kyWC+PllxN39m3
	41PAMqmqh0bpvI7U9JX27vin6j7ANsVJl4MSHMWYc401sm3726FxLK05b0q9F3uRecCWW544H23cy
	EGqbwAy+sytjhWDv32HA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lI8Fv-00EgHM-5z; Fri, 05 Mar 2021 11:04:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lI8F1-00Eg0O-Ix
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 11:03:34 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lI8F0-0001U1-UI; Fri, 05 Mar 2021 12:03:30 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lI8F0-0008Ei-Jn; Fri, 05 Mar 2021 12:03:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  5 Mar 2021 12:03:27 +0100
Message-Id: <20210305110329.31046-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_110332_117853_6DAD863C 
X-CRM114-Status: GOOD (  13.27  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] stringlist: Add adding sort uniq
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Function to add an entry sorted to a string list only when it doesn't
exist.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/stringlist.h |  1 +
 lib/stringlist.c     | 23 +++++++++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/include/stringlist.h b/include/stringlist.h
index 5cd452ca5f..dbf159da91 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -12,6 +12,7 @@ struct string_list {
 int string_list_add(struct string_list *sl, const char *str);
 int string_list_add_asprintf(struct string_list *sl, const char *fmt, ...);
 int string_list_add_sorted(struct string_list *sl, const char *str);
+int string_list_add_sort_uniq(struct string_list *sl, const char *str);
 int string_list_contains(struct string_list *sl, const char *str);
 void string_list_print_by_column(struct string_list *sl);
 
diff --git a/lib/stringlist.c b/lib/stringlist.c
index 8e92c1b207..719fecdaa4 100644
--- a/lib/stringlist.c
+++ b/lib/stringlist.c
@@ -60,6 +60,29 @@ int string_list_add_sorted(struct string_list *sl, const char *str)
 	return 0;
 }
 
+int string_list_add_sort_uniq(struct string_list *sl, const char *str)
+{
+	struct string_list *new, *entry = sl;
+
+	string_list_for_each_entry(entry, sl) {
+		int cmp = strcmp(entry->str, str);
+
+		if (cmp < 0)
+			continue;
+		if (cmp == 0)
+			return 0;
+
+		break;
+	}
+
+	new = xmalloc(sizeof(*new));
+	new->str = xstrdup(str);
+
+	list_add_tail(&new->list, &entry->list);
+
+	return 0;
+}
+
 int string_list_contains(struct string_list *sl, const char *str)
 {
 	struct string_list *entry;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

