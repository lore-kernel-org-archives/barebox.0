Delivery-date: Tue, 27 Jan 2026 09:46:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeig-005q76-10
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 09:46:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeie-00013C-Rl
	for lore@pengutronix.de; Tue, 27 Jan 2026 09:46:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=twwVhCVYfZE/bEANe0WNdzDBPn5WDaGXmAE6JdvmKlY=; b=UQQwZ1niLS1lLYZpNChEiO95ik
	nnM1JKgo1ZTtjt+kMmt4NLZk/QM2/OlLoIuTAgxRIXLXIDi9cWZOZYFpJI1yOFU6TDjj11YCiiaZT
	xicEi05tVZe0/LCZg6hK0l4Yw672oLLA0qKhL/nvlywsL9iJY8n2/mNrkNAjcU+fWkA1AgHcwVHdz
	oSmtw+NmcUFeV52VBv2sZzH2a4B0UfQCwjhuRBoyIgSRjH2V76bo60lPfF0kDkobHBb5+lgJRuIZu
	BbEgRKpMDvCOfcDbqKEJ1d7pUEBkhpx99EN/W+bbO/XZxjxDPmmF7wrLlaYe473SeaTK/wi42O/o3
	gXc4A+WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkei2-0000000DrQY-0F83;
	Tue, 27 Jan 2026 08:46:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkehu-0000000DrDx-1ZG0
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 08:45:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-0000WT-Sd; Tue, 27 Jan 2026 09:45:52 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkeht-002ig3-0x;
	Tue, 27 Jan 2026 09:45:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkeht-0000000FmwP-0Bw2;
	Tue, 27 Jan 2026 09:45:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 Jan 2026 09:39:18 +0100
Message-ID: <20260127084546.3751357-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_004554_801698_BBBA10F3 
X-CRM114-Status: GOOD (  14.06  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/15] libfile: factor out zero-page resistant read_file as __read_full_anywhere
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function will be useful for the incoming loadable support, so factor
it out of file_to_sdram().

While at it, make it a bit safer as well: Only the first page needs to
be copied with zero_page_memcpy if at all, so copy at most one page if
the zero page is overlapped and then copy the rest as usual.

file_to_sdram() is intentionally left as-is as it's going to be removed
in a later commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/libfile.h |  1 +
 lib/libfile.c     | 29 +++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/include/libfile.h b/include/libfile.h
index f44046fb0f7b..f61c45563c01 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -11,6 +11,7 @@ int pread_full(int fd, void *buf, size_t size, loff_t offset);
 int pwrite_full(int fd, const void *buf, size_t size, loff_t offset);
 int write_full(int fd, const void *buf, size_t size);
 int read_full(int fd, void *buf, size_t size);
+int __read_full_anywhere(int fd, void *buf, size_t size);
 int copy_fd(int in, int out, size_t size);
 
 ssize_t read_file_into_buf(const char *filename, void *buf, size_t size);
diff --git a/lib/libfile.c b/lib/libfile.c
index 3be410855d2e..966350674a83 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -798,6 +798,35 @@ int cache_file(const char *path, char **newpath)
 	return 0;
 }
 
+/*
+ * __read_full_anywhere - read from filedescriptor, even into zero_page
+ *
+ * Like read_full, but this function will temporarily remap the zero
+ * page if data is to be placed there. You should not need to use this
+ * outside of boot code!
+ */
+int __read_full_anywhere(int fd, void *buf, size_t size)
+{
+	ssize_t now = 0;
+
+	if (unlikely(zero_page_contains((ulong)buf))) {
+		void *tmp = malloc(PAGE_SIZE);
+		if (!tmp)
+			return -ENOMEM;
+
+		now = read_full(fd, tmp, min_t(size_t, size, PAGE_SIZE));
+		if (now > 0)
+			zero_page_memcpy(buf, tmp, now);
+
+		free(tmp);
+
+		if (now <= 0)
+			return now;
+	}
+
+	return now + read_full(fd, buf + now, size - now);
+}
+
 #define BUFSIZ	(PAGE_SIZE * 32)
 
 struct resource *file_to_sdram(const char *filename, unsigned long adr,
-- 
2.47.3



