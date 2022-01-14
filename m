Delivery-date: Fri, 14 Jan 2022 17:54:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqM-002DId-J4
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 17:54:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqJ-0004SN-MS
	for lore@pengutronix.de; Fri, 14 Jan 2022 17:54:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j02CWMRgjeE1Aoza9bbtsz/aH6zCbPjYTM3hp8Z22P8=; b=uat99RNzqSJy6k
	N4k83TnyXUTy6FeqTdD7vxjk0rnS5qmLDkVOwWlhd7kcFY+WA3zvVLTQV9Wqhutou41yas8wSYcWY
	Yf2rAphn7aZqLfODM12zVzHUwiNoE9a7V96XyGSLDFDfYcOV5b46zizEMV46WI3G9JjExj2/oCJ+L
	rlA9SXpGdXsTlzPe3X+gDyAjT763SG3bE4fLgpaQVxsMRBq5RKRFoUP5aEsIh5kxlXf3Rat9d9iId
	KoeWTk7+7aNX5v59pNmVwZzX2dUQi8V6mkjW/uxtzLn3ltCQl0/2p7vWA9ObgCHnSBlSeeZl65srw
	YlUuav2XSd+XHfeM5T3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Pol-009qNx-Lt; Fri, 14 Jan 2022 16:52:47 +0000
Received: from smtpout30.security-mail.net ([85.31.212.37]
 helo=fx306.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8PoR-009qGn-0G
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 16:52:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx306.security-mail.net (Postfix) with ESMTP id 92B63399517
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 17:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642179144;
 bh=/C2cZyh0bRma/6EK7AZTkE/JBJkzA46jrU4ynryGOj8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=j0sHgXYt2Tt919qaQ3dAYHw5QTHsDEY/LASd5H5zwgPXk63mixxNShMj66XPzmZZa
 L6hU4SZObLgQ6hfSPVIX161jK6WV3FqwlLP0Y24Gc42JaPaMGHSWUIPCoOT+SPKfn1
 ULYWsLNFS9WBkHpM89Hxasr0xSXgrQO876N2gk6o=
Received: from fx306 (localhost [127.0.0.1])
 by fx306.security-mail.net (Postfix) with ESMTP id 52C123994C8;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <1625.61e1aa48.665e.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx306.security-mail.net (Postfix) with ESMTPS id 0720E399567;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id DEA2527E03F8;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id C7CDA27E03FA;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C7CDA27E03FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642179143;
 bh=gmndJaT1jRhyP/AyRJ282axsNV8c93xn++cdd/oVBaI=;
 h=From:To:Date:Message-Id;
 b=mKDNl5hjnrUh0r0DZSiDNm1pIZT7kch1pFIYcVoRGHvNBZKhZIP+Xh1PU1LrVj9Kn
 ZhnOy04v7nWeWJrHtnl5VoogO5oZcDNoAUPyRQwiuyRhqFAJtQL7M9F+Va8haYRMsU
 Dlko+xc1aoaD3kHMzQHq1bBtYAa4Gu8uS+Bz+tFM=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id bjplDvB3WBzt; Fri, 14 Jan 2022 17:52:23 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id A6D7127E03DD;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Clement Leger <cleger@kalray.eu>,
 Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 14 Jan 2022 17:52:03 +0100
Message-Id: <20220114165208.9980-5-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220114165208.9980-1-jmaselbas@kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_085227_278386_C95C6E20 
X-CRM114-Status: GOOD (  14.54  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/13] common: elf: add elf_load_binary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Clement Leger <cleger@kalray.eu>

In order to load elf from a binary buffer, add elf_load_binary. This
will be used by FIT support to allow loading an elf from FIT.

Signed-off-by: Clement Leger <cleger@kalray.eu>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 common/elf.c  | 83 +++++++++++++++++++++++++++++++++++++--------------
 include/elf.h |  1 +
 2 files changed, 62 insertions(+), 22 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index af22be37e6..f10fb77953 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -101,15 +101,17 @@ static int elf_section_cmp(void *priv, struct list_head *a, struct list_head *b)
 static int load_elf_to_memory(struct elf_image *elf)
 {
 	void *dst;
-	int ret, fd;
+	int ret, fd = -1;
 	u64 p_filesz, p_memsz, p_offset;
 	struct elf_section *r;
 	struct list_head *list = &elf->list;
 
-	fd = open(elf->filename, O_RDONLY);
-	if (fd < 0) {
-		pr_err("could not open: %s\n", errno_str());
-		return -errno;
+	if (elf->filename) {
+		fd = open(elf->filename, O_RDONLY);
+		if (fd < 0) {
+			pr_err("could not open: %s\n", errno_str());
+			return -errno;
+		}
 	}
 
 	list_for_each_entry(r, list, list) {
@@ -118,21 +120,26 @@ static int load_elf_to_memory(struct elf_image *elf)
 		p_memsz = elf_phdr_p_memsz(elf, r->phdr);
 		dst = (void *) (phys_addr_t) elf_phdr_p_paddr(elf, r->phdr);
 
-		ret = lseek(fd, p_offset, SEEK_SET);
-		if (ret == -1) {
-			pr_err("lseek at offset 0x%llx failed\n", p_offset);
-			close(fd);
-			return ret;
-		}
-
 		pr_debug("Loading phdr offset 0x%llx to 0x%p (%llu bytes)\n",
 			 p_offset, dst, p_filesz);
 
-		if (read_full(fd, dst, p_filesz) < 0) {
-			pr_err("could not read elf segment: %s\n",
-			       errno_str());
-			close(fd);
-			return -errno;
+		if (fd >= 0) {
+			ret = lseek(fd, p_offset, SEEK_SET);
+			if (ret == -1) {
+				pr_err("lseek at offset 0x%llx failed\n",
+				       p_offset);
+				close(fd);
+				return ret;
+			}
+
+			if (read_full(fd, dst, p_filesz) < 0) {
+				pr_err("could not read elf segment: %s\n",
+				       errno_str());
+				close(fd);
+				return -errno;
+			}
+		} else {
+			memcpy(dst, elf->hdr_buf + p_offset, p_filesz);
 		}
 
 		if (p_filesz < p_memsz)
@@ -202,6 +209,37 @@ static int elf_check_image(struct elf_image *elf, void *buf)
 	return 0;
 }
 
+static void elf_init_struct(struct elf_image *elf)
+{
+	INIT_LIST_HEAD(&elf->list);
+	elf->low_addr = (void *) (unsigned long) -1;
+	elf->high_addr = 0;
+	elf->filename = NULL;
+}
+
+struct elf_image *elf_open_binary(void *buf)
+{
+	int ret;
+	struct elf_image *elf;
+
+	elf = calloc(1, sizeof(*elf));
+	if (!elf)
+		return ERR_PTR(-ENOMEM);
+
+	elf_init_struct(elf);
+
+	elf->hdr_buf = buf;
+	ret = elf_check_image(elf, buf);
+	if (ret) {
+		free(elf);
+		return ERR_PTR(-EINVAL);
+	}
+
+	elf->entry = elf_hdr_e_entry(elf, elf->hdr_buf);
+
+	return elf;
+}
+
 static struct elf_image *elf_check_init(const char *filename)
 {
 	int ret, fd;
@@ -213,9 +251,7 @@ static struct elf_image *elf_check_init(const char *filename)
 	if (!elf)
 		return ERR_PTR(-ENOMEM);
 
-	INIT_LIST_HEAD(&elf->list);
-	elf->low_addr = (void *) (unsigned long) -1;
-	elf->high_addr = 0;
+	elf_init_struct(elf);
 
 	/* First pass is to read elf header only */
 	fd = open(filename, O_RDONLY);
@@ -299,7 +335,10 @@ void elf_close(struct elf_image *elf)
 {
 	elf_release_regions(elf);
 
-	free(elf->hdr_buf);
-	free(elf->filename);
+	if (elf->filename) {
+		free(elf->hdr_buf);
+		free(elf->filename);
+	}
+
 	free(elf);
 }
diff --git a/include/elf.h b/include/elf.h
index 7970fd2c95..12673e93ed 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -414,6 +414,7 @@ static inline size_t elf_get_mem_size(struct elf_image *elf)
 	return elf->high_addr - elf->low_addr;
 }
 
+struct elf_image *elf_open_binary(void *buf);
 struct elf_image *elf_open(const char *filename);
 void elf_close(struct elf_image *elf);
 int elf_load(struct elf_image *elf);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

