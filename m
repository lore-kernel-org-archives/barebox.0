Delivery-date: Fri, 30 Apr 2021 15:32:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTFZ-00052L-S0
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:32:09 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTFZ-0007Tu-2c
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:32:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7lPZBJpfw4ePkqWmHEY0u9SOI8wtRNWcOpIQlDAS5pg=; b=ei0J8TJfhXV8+QPGgJR8XKwIy
	cNDCY9e4TujCCu+DaVYeXnDacBzZzwNg7psTq6Z1ty58lmgPqPgXUlYrBidso/zW5yZ63qFiBMvu5
	xfJHDVEU7xZCxpq66QJxf+peRPF6i7sCaBANguz0FAhuCZYAkmsMl5ANx9B+og37WDt9ohSo5SuaW
	kdl4W8utZgXzR4MOpDAmXtAFDcu95AZxIzBzuFQnz/9HqbBX6lr7OERHzqYSjW/Zyg7PpvRZB52jB
	pO/hw5iHCVkC3QQvkwqgo9nBXIoRJ/48eZaqKc59G9gtuKxIVlLG4wYqZHwZSM6uC72Vgz6NIbDQC
	/Dc2c7osA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTEe-007uyB-Vz; Fri, 30 Apr 2021 13:31:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDp-007ubu-Ri
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:30:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=KMjbc+7lWbV5v11LYHRYfFbZ/p89LrfKdRmKltzwY80=; b=uOTiv6cAX4cQWRlmBibXD/O8W5
 9KAw/OClFTb2bn9Xiqr6/8cc/3TLlqb78/oUT4LxSd7r5334DiNOw5iZT2FfMh/wtgJQEdJ3VkQVJ
 H3Ox6HDwzE3B3El5F1Wxk8j7VNcivp8O+Y6Er2EzgHP55e0Khkn3h3eQ0Elu9e9rwauUlO4vv7DL5
 QFrYhChUEeqBsBd1D6J3dzJuUlrh6w+8adcIkh4hv/wj+aMDiErHzrbJ/X7iIAcbY0UXR0Hf5QAuP
 ffzmJVirwkicxRCkflYsVH8C6mN0+DSC/5DrORm9bHgIIyqLDvo75WGdZKDlRC8SW6lKHcwppIX4G
 raEF2HkA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDn-001PLy-Gd
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:30:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDO-00069y-9M; Fri, 30 Apr 2021 15:29:54 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDN-0003ra-6q; Fri, 30 Apr 2021 15:29:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Apr 2021 15:29:47 +0200
Message-Id: <20210430132949.14617-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430132949.14617-1-a.fatoum@pengutronix.de>
References: <20210430132949.14617-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_063019_567935_9F37654B 
X-CRM114-Status: GOOD (  12.01  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 13/15] file_list: add file_list_detect_all()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a common theme along the code that uses file_lists.
Add a function that abstracts it. This could later be used
to simplify this operation in the fastboot code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/file-list.c  | 17 +++++++++++++++++
 include/file-list.h |  2 ++
 2 files changed, 19 insertions(+)

diff --git a/common/file-list.c b/common/file-list.c
index 580423aef72d..bf1db94e798a 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -8,6 +8,7 @@
 #include <file-list.h>
 #include <stringlist.h>
 #include <linux/err.h>
+#include <driver.h>
 
 #define PARSE_DEVICE	0
 #define PARSE_NAME	1
@@ -214,3 +215,19 @@ out:
 
 	return str;
 }
+
+int file_list_detect_all(const struct file_list *files)
+{
+	struct file_list_entry *fentry;
+	struct stat s;
+	int i = 0;
+
+	list_for_each_entry(fentry, &files->list, list) {
+		if (stat(fentry->filename, &s)) {
+			if (device_detect_by_name(devpath_to_name(fentry->filename)) == 0)
+				i++;
+		}
+	}
+
+	return i;
+}
diff --git a/include/file-list.h b/include/file-list.h
index be97a49b7a2b..7e2a4d9205d7 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -30,6 +30,8 @@ int file_list_add_entry(struct file_list *files, const char *name, const char *f
 
 struct file_list *file_list_dup(struct file_list *old);
 
+int file_list_detect_all(const struct file_list *files);
+
 struct file_list_entry *file_list_entry_by_name(struct file_list *files, const char *name);
 
 #define file_list_for_each_entry(files, entry) \
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

