Delivery-date: Mon, 03 May 2021 13:52:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX88-000355-4o
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:52:52 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX87-00014q-A8
	for lore@pengutronix.de; Mon, 03 May 2021 13:52:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3s0zSfCtHotvaBvDTAhqbIA6+D9dSIq5HOmUVM+rRV8=; b=DzD58Y++/0SkANOjAXlSwnWzN
	EGZyeiCVzi4Iqa8MXG5+f+NMag5rOVEAZcyAWW662UdxEa7UiTAx5U/cHk/HfvpPETgYB4mjA41iU
	BnheMYbRT6Z0U+U+P23Ja5xpgN15M5Ttr09uC8kM6LY+p7Q8Z4G8vZNrmYBG21m5bDC/ccZ80P0CN
	UJrXCMAHOutqEAk6xZ2oHzXWIFin4Gq9XhnJwRfCpazQxFaQvRWExszfo30TncMkAnHEHx20vtCZV
	/mlJRXIkPArtk6gfJNWhENLQJwtcUqkThCZdxLHbplOS8wP3M7cvHsgex4PhHGY3cKyl8LpQDtiR/
	96h+e0ySQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldX70-00DnOp-93; Mon, 03 May 2021 11:51:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX55-00DmiU-8T
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=49tBiImK9a9tKjx+ifnXqRYZx5zWVaoEhudvIrgHtYY=; b=UB1P2oA2qcGzOUCj+CVdSFN5my
 50iS65ZR3xTbgU7TRMoN0UpPVY5NH/vBhLL5jHAKImxiKXy2mZT7SGCqRxxcy4z8UajgEJqg0/JFp
 /6/6h96hUVlzav/QkJaCtC8diSOLYwuzXlUUkD44d95lIKQse1t1LKaT5xiVJlf9kGX4Hdq2nny7C
 XFYK6zfCpN6aIMM6jGhOD7TGyjgBY8akyGYFYrvK+J0kXqWrhomBR0/EVR4+lBoxxR0YmeNuAgr1q
 GInmzlusB2aG0b/3wSFndzv78Y2t/Wuu91xvQa0M8OLCQaXd47PRvhag3gxkdS+HEXFdJnp4B7X8R
 vCNXj9fw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX52-0031eY-Ra
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:49:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4d-0007pq-JU; Mon, 03 May 2021 13:49:15 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4c-0003bu-Ie; Mon, 03 May 2021 13:49:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 May 2021 13:48:59 +0200
Message-Id: <20210503114901.13095-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210503114901.13095-1-a.fatoum@pengutronix.de>
References: <20210503114901.13095-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_044940_908351_3B248D52 
X-CRM114-Status: GOOD (  12.18  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 14/16] file_list: add file_list_detect_all()
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
index 55e6f0e6b6c0..05f44514fb09 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -8,6 +8,7 @@
 #include <file-list.h>
 #include <stringlist.h>
 #include <linux/err.h>
+#include <driver.h>
 
 #define PARSE_DEVICE	0
 #define PARSE_NAME	1
@@ -217,3 +218,19 @@ out:
 
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
+		if (stat(fentry->filename, &s))
+			continue;
+		if (device_detect_by_name(devpath_to_name(fentry->filename)) == 0)
+			i++;
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

