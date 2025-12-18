Delivery-date: Thu, 18 Dec 2025 12:13:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBx0-00Co1o-05
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:13:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBwy-0005p7-Sj
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:13:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IX6JaZxE+awaK3twutk/RoZuGME5sCVxpGIJLG6I40Y=; b=nnOPX7DtWZYjqe1wGdAhswiY2C
	c307PMa0jwDr1asYvwtpAjTQXdiV9Bo/t8624lrgpJgbkIeqxgia51lEXCQVqMCm61axe85HM/sed
	rapa0/ZjrxPenHUTbswo3oYUi17U5LdYnK5J+H/DqP8F7Rrw2Qddb/v3aAthXjpvMVEgA/DTOKq1p
	2jbeITTOIrdIUbr4hN6PfdI4v2iZ14rYEeiaekrSowzzaCG8Y3lQWnQOTrtquGe+sR7xh7iLJPxbU
	Dz+iDakFkl6xTTqQhVag2ftqkZQvmjOIt8BZ6EZNewtHYjv7uOiIU2JHwXUsu8n0M0IHA14P0vi6Q
	D61oQU6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBwB-00000008IJE-00PO;
	Thu, 18 Dec 2025 11:12:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBw7-00000008IG3-2bCZ
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:12:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0005N2-AL; Thu, 18 Dec 2025 12:12:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-006GgE-0Q;
	Thu, 18 Dec 2025 12:12:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-09dm;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:21 +0100
Message-ID: <20251218111242.1527495-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_031247_663395_FE353244 
X-CRM114-Status: GOOD (  11.25  )
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
Subject: [PATCH v1 01/54] efi: payload: initrd: fix type mismatch on 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While sizeof(unsigned long) == sizeof(size_t) in barebox, size_t an be
typedeffed as unsigned int on 32-bit, which leads to a mismatch with the
struct efi_load_file_protocol definition we already had.

Switch over to size_t as in the header to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/initrd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/efi/initrd.c b/efi/initrd.c
index 7fd8e021f353..642422b38d2a 100644
--- a/efi/initrd.c
+++ b/efi/initrd.c
@@ -17,7 +17,7 @@
 
 static efi_status_t EFIAPI efi_initrd_load_file2(
 	struct efi_load_file_protocol *this, struct efi_device_path *file_path,
-	bool boot_policy, unsigned long *buffer_size, void *buffer);
+	bool boot_policy, size_t *buffer_size, void *buffer);
 
 static const struct {
 	struct efi_device_path_vendor vendor;
@@ -44,7 +44,7 @@ static struct linux_initrd {
 
 static efi_status_t EFIAPI efi_initrd_load_file2(
 	struct efi_load_file_protocol *this, struct efi_device_path *file_path,
-	bool boot_policy, unsigned long *buffer_size, void *buffer)
+	bool boot_policy, size_t *buffer_size, void *buffer)
 {
 
 	struct linux_initrd *initrd = to_linux_initrd(this);
-- 
2.47.3



