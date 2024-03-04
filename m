Delivery-date: Mon, 04 Mar 2024 20:06:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDdR-008dGI-2T
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:06:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDdQ-000198-7e
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:06:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KyijlLQtpePLsMhW5E+cPHlaMynNWy1dxeKJW3fGLDw=; b=d9gdlJKxVJNmK463YzJJe6Y2Xd
	bXJODi8zi0XLfjww6woFaxVx/bnxZXYNqs6rQskdcTjfBtY7RbZqAAvciOWZC4GXxdFpkaaPSotsv
	AtHmKTIgRigziZx8BOGHQSdoglIjKv3H8X7gXfkAml/AbPmZ831YhUHDTdRGGGr7JotV8VPC+LO+X
	Rk2fRvWH/NAhWivu6wolHYD/rRLaomcU/V6CpI73jWyWueyq2VGsy01c1wm/QnjE5zudBX+r1neOd
	UfgWczV8qmaoW0s+acYV0YnHxG/3HaONvO/Bdzef9mOBQs8kLTaDccH5cj8syx4sS5zaunCP4oL4I
	mq+if2qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDcr-0000000AKBH-0mTk;
	Mon, 04 Mar 2024 19:05:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaS-0000000AITW-32ll
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=KyijlLQtpePLsMhW5E+cPHlaMynNWy1dxeKJW3fGLDw=; b=BFRaIqxrs527/mozCSacAWvT+J
	qNlfd/62Vt3rmQCexpyTHREiiGOHTJ2DwlIcF/rc6FWOfvhtNM8W1c4Ang3UPVBg/MZFy5gJ8F828
	WxWgwYN5r1homB326lUq9EUM7R/c57/dFlDBN/okdQwpXtE8Bew3BjJi337/xVjIumFdjc0J6MFlz
	Ie5ESdkrHK9eDElokb6vUFNO4vjTOjSEdlqpbH0PgB1aM3W62Xe6WeH43f2NjDuUBo7faDd1MZg5H
	BXaBv2tTUcdojvkPmEs3Po6tUzf9sxPRjW/TybGS1oUBX+N1yRZgMv8XugcQCaCl5tNvP/hQihaBK
	p5Dhhrkw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaL-000000051vm-35Yk
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-0006GE-Io; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-004PLt-3Z; Mon, 04 Mar 2024 20:02:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-28;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:58:58 +0100
Message-Id: <20240304190038.3486881-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190249_789543_A4B29898 
X-CRM114-Status: GOOD (  14.11  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 013/113] efi: payload: image: allocate image via loader if it exceeds malloc area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox allocates at maximum 256M for its own use when running as EFI
payload. With bigger kernel images and initrds, this may exceed the
space barebox has available, especially if decompression needs to happen
within barebox.

In that case, instead of failing with -ENOMEM, let's ask the EFI
firmware for a suitably sized buffer and read into that if the
allocation succeeds.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/image.c | 49 +++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 47 insertions(+), 2 deletions(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index 8d29bf9bb434..b7f4b7560b4b 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -76,6 +76,51 @@ struct linux_kernel_header {
 	uint32_t handover_offset;	/** */
 } __attribute__ ((packed));
 
+static void *efi_read_file(const char *file, size_t *size)
+{
+	efi_physical_addr_t mem;
+	efi_status_t efiret;
+	struct stat s;
+	char *buf;
+	ssize_t ret;
+
+	buf = read_file(file, size);
+	if (buf || errno != ENOMEM)
+		return buf;
+
+	ret = stat(file, &s);
+	if (ret)
+		return NULL;
+
+	efiret = BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES,
+				    EFI_LOADER_CODE,
+				    DIV_ROUND_UP(s.st_size, EFI_PAGE_SIZE),
+				    &mem);
+	if (EFI_ERROR(efiret)) {
+		errno = efi_errno(efiret);
+		return NULL;
+	}
+
+	buf = (void *)mem;
+
+	ret = read_file_into_buf(file, buf, s.st_size);
+	if (ret < 0)
+		return NULL;
+
+	*size = ret;
+	return buf;
+}
+
+static void efi_free_file(void *_mem, size_t size)
+{
+	efi_physical_addr_t mem = (efi_physical_addr_t)_mem;
+
+	if (mem_malloc_start() <= mem && mem < mem_malloc_end())
+		free(_mem);
+	else
+		BS->free_pages(mem, DIV_ROUND_UP(size, EFI_PAGE_SIZE));
+}
+
 static int efi_load_image(const char *file, efi_loaded_image_t **loaded_image,
 		efi_handle_t *h)
 {
@@ -84,7 +129,7 @@ static int efi_load_image(const char *file, efi_loaded_image_t **loaded_image,
 	efi_handle_t handle;
 	efi_status_t efiret = EFI_SUCCESS;
 
-	exe = read_file(file, &size);
+	exe = efi_read_file(file, &size);
 	if (!exe)
 		return -errno;
 
@@ -106,7 +151,7 @@ static int efi_load_image(const char *file, efi_loaded_image_t **loaded_image,
 
 	*h = handle;
 out:
-	free(exe);
+	efi_free_file(exe, size);
 	return -efi_errno(efiret);
 }
 
-- 
2.39.2



