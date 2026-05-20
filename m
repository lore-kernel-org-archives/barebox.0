Delivery-date: Wed, 20 May 2026 10:34:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPcO4-001num-0J
	for lore@lore.pengutronix.de;
	Wed, 20 May 2026 10:34:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPcO3-0003B7-BI
	for lore@pengutronix.de; Wed, 20 May 2026 10:34:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=khOvWCWMW7TrTBSxYeEXcPzBaUiIi7TadPvOCU4s3GY=; b=UwVr48OsQ0bUaD6tLHODaYVWMZ
	3YBmyNHUuc9TQT9+5m/TKWq2/K6uYfrtalx7Y0QzFnLax9v4KWD58wy4zwJOJbklyIVU8DV78PdQL
	Yqv6MWQ+4J5kalI771YSlgOyIPpYWbgDDJr7BUgPTOIAMfO3gdYbu7S252l3hoL9jcis16Ne8+BLo
	yP5NH8QcXShHY8KTSW8yzuJFGTa+mOvWA31xfzpokFMI1f3v/J/e9isBIAMxTCEj+ttVFNRAGApQ4
	BCh5sBNtt51WmV0gB+RjfMwOE8EbMsqysCMGfPGUvOzze+Ato4vhxR5ZPZRLAMNzMnXkF9/AB9pGB
	nmHkoWBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPcMd-00000003y1P-3aEU;
	Wed, 20 May 2026 08:33:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPcMa-00000003xyV-3n2t
	for barebox@lists.infradead.org;
	Wed, 20 May 2026 08:33:15 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pfitzner@pengutronix.de>)
	id 1wPcMY-0002uz-5u; Wed, 20 May 2026 10:33:10 +0200
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Date: Wed, 20 May 2026 10:32:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260520-fpf-bootsource-instance-index-v1-1-29942f0e8f2f@pengutronix.de>
References: <20260520-fpf-bootsource-instance-index-v1-0-29942f0e8f2f@pengutronix.de>
In-Reply-To: <20260520-fpf-bootsource-instance-index-v1-0-29942f0e8f2f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_013312_954915_D86C8630 
X-CRM114-Status: GOOD (  13.49  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] bootsource: add bootsource instance index variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bootsource instance index variable shows us,
from which image on the instance we have booted from.
This is a useful information, when there a multiple boot images contained
on one flash (e. g. primary and recovery).

Add a C interface to set and get the bootsource instance:

    int bootsource_get_instance_index(void);
    void bootsource_set_instance_index(int index);

Also export the shell variable "bootsource_instance_index".

Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
 Documentation/user/variables.rst |  1 +
 common/bootsource.c              | 20 ++++++++++++++++++++
 include/bootsource.h             | 11 +++++++++++
 3 files changed, 32 insertions(+)

diff --git a/Documentation/user/variables.rst b/Documentation/user/variables.rst
index 61808f1d72de29477b02b53ad11ecf530b4ebc80..c8b34679068cff4356fec306942b85561187652f 100644
--- a/Documentation/user/variables.rst
+++ b/Documentation/user/variables.rst
@@ -112,6 +112,7 @@ of all active variables with special meaning along with a short description:
   bootargs                         Linux Kernel parameters
   bootsource                       The source barebox has been booted from
   bootsource_instance              The instance of the source barebox has been booted from
+  bootsource_instance_index        Tells us whether we have booted from primary(0) or secondary(1)
   global.boot.default              default boot order
   ...
 
diff --git a/common/bootsource.c b/common/bootsource.c
index f608019bb758f820eea19213c75b389df6b4158c..53549d4171ff33bfcdd7436261cd8f4d3598099a 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -33,6 +33,7 @@ static const char *bootsource_str[BOOTSOURCE_MAX] = {
 
 static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
 static int bootsource_instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+static int bootsource_instance_index = BOOTSOURCE_INSTANCE_INDEX_UNKNOWN;
 
 const char *bootsource_to_string(enum bootsource src)
 {
@@ -226,6 +227,17 @@ int bootsource_set(enum bootsource src, int instance)
 	return alias_id;
 }
 
+void bootsource_set_instance_index(int index)
+{
+	if (index < 0 || index > 1)
+		pr_err("Invalid index: %d, expected either 0 or 1", index);
+
+	char str[1];
+
+	sprintf(str, "%d", index);
+	setenv("bootsource_instance_index", str);
+}
+
 enum bootsource bootsource_get(void)
 {
 	return bootsource;
@@ -240,11 +252,19 @@ int bootsource_get_instance(void)
 
 BAREBOX_MAGICVAR(bootsource_instance, "The instance of the source barebox has been booted from");
 
+int bootsource_get_instance_index(void)
+{
+	return bootsource_instance_index;
+}
+
+BAREBOX_MAGICVAR(bootsource_instance_index, "Tells us whether we have booted from primary(0) or secondary(1)");
+
 static int bootsource_init(void)
 {
 	bootsource_set_raw(bootsource, bootsource_instance);
 	export("bootsource");
 	export("bootsource_instance");
+	export("bootsource_instance_index");
 
 	return 0;
 }
diff --git a/include/bootsource.h b/include/bootsource.h
index 0d3cb7a333075305a6ae4ee24a66163fe2fa0360..fc53e2e345b87333120cb82b030b37a882e201c0 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -24,11 +24,13 @@ enum bootsource {
 };
 
 #define BOOTSOURCE_INSTANCE_UNKNOWN	-1
+#define BOOTSOURCE_INSTANCE_INDEX_UNKNOWN	-1
 
 enum bootsource bootsource_get(void);
 enum bootsource bootsource_get_device(void);
 int bootsource_get_instance(void);
 const char *bootsource_get_alias_name(void);
+int bootsource_get_instance_index(void);
 const char *bootsource_to_string(enum bootsource src);
 const char *bootsource_get_alias_stem(enum bootsource bs);
 int bootsource_of_alias_xlate(enum bootsource bs, int instance);
@@ -72,4 +74,13 @@ void bootsource_set_raw(enum bootsource src, int instance);
  */
 void bootsource_set_raw_instance(int instance);
 
+/**
+ * bootsource_set_instance_index - set bootsource_instance_index as-is
+ * @index: bootrom reported index
+ *
+ * Set the index that depicts the boot image we have booted from.
+ * This is either 0 (primary) or 1 (secondary)
+ */
+void bootsource_set_instance_index(int index);
+
 #endif	/* __BOOTSOURCE_H__ */

-- 
2.47.3



