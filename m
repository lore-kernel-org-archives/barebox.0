Delivery-date: Tue, 13 Apr 2021 00:37:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5Bd-0006HU-M3
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 00:37:41 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5Bc-0007VA-Qu
	for lore@pengutronix.de; Tue, 13 Apr 2021 00:37:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7lPZBJpfw4ePkqWmHEY0u9SOI8wtRNWcOpIQlDAS5pg=; b=f5uz5D2uJLIEylQud1j6hI4nv
	G/cuR0t74XRQRI2iCkpJjJcDcf2155NnNIqBkXksQqriIY6iIOjx/IohejRSm/XtAhpknZfTJLJ3D
	lp+SJE8ylTo5vNVanX7q+M5LyD7NnBxqCwc3GZ0DDzzwr9YLLYwMxAm/VA4JETnZf6LNfiDZRAYDR
	h+JX9ZZNgQwi1Dxed3FzUGX50EntvEEhLScp4okrr18glZ3ZsH3TxAGce9eSL0502SmLcAZCE5YDY
	GnCzgmtOSvG7w0Mvi+7gwJMY+ItQ5pwMA1wHJYAwRpn27cCHD7+3rM5atSZhUvCGHoYtdfMZ/nUGq
	mhmuD46KA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW5AW-007nZU-BH; Mon, 12 Apr 2021 22:36:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59R-007n9A-6o
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 22:35:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=KMjbc+7lWbV5v11LYHRYfFbZ/p89LrfKdRmKltzwY80=; b=XL5DuRsCKfQjHLhQ1L6cay8T+A
 iYc4FNhXn4cdkJuvk597JzAj6LmP1D0gc36eSWs1Y8A84hQqNZLdLCmyxJn+vY58yr0F92dkiQfvX
 tk4qQig7Mya3LFztFQdkywRJWpkhwrQtwOjS82m64GeeOXlNl6PuWc+CZw8gO2O3VYx5Ie9VdOTkY
 49rXspYKFY3MtNca6FXfdGiW54DNJZ/dO6uK62R+X7QKYebiybUxhlRA5TaQr4KXPvtoAL/Vd6EUI
 kT2T71dCjuVRd8Q6Q9s7ha+31diDNqAWk/nEfpnyBPEpf3C5of5aE8I7BMbZ0YraL6j5TWsDdHSAf
 ghHjWM+g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59O-006at6-JD
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 22:35:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW597-0006BT-C4; Tue, 13 Apr 2021 00:35:05 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW596-0003tt-Gq; Tue, 13 Apr 2021 00:35:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Apr 2021 00:35:01 +0200
Message-Id: <20210412223502.29691-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412223502.29691-1-a.fatoum@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153522_646995_4242CC7C 
X-CRM114-Status: GOOD (  11.83  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 13/14] file_list: add file_list_detect_all()
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

