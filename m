Delivery-date: Mon, 16 Feb 2026 10:17:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruja-002GtZ-12
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:17:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujW-0007R7-8t
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:17:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/VbNHXF4LN23BJSU1QYor316vAJ018MJ2jdyb0KuaZI=; b=mnPJiMEUjWiiHl/IzC/wWrOCJk
	UlLjEnXYYZ/6vutkxFfOe6vC2jyxnXm59SJ1j+XUzzzVKvlEahPrlo+uX1aqj45fpDZGp7kDo8DMA
	4uZvntufAUSIo0ISDZ/4pfG4CcRK0grsULyTv/4ARF6nBpUu6RLqoRFEoRlKXnn/EH8ly+/GRNt82
	EPDrAYL2+fm/OtNyx2uNheLyzGk920MdDI8F+dbdYmxahxnZJKxXPKqMy+gpv411uUJPS0nk4lQLe
	6fbllR+DYw0NQ0dzhgUMoJ0KT6pxmCf3hiVfy1sJ8K63nNw5RgjTHumwh08W1omFGBiv4VNzHlhdH
	gTMfbe9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruin-00000006Eaq-418Z;
	Mon, 16 Feb 2026 09:16:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruig-00000006ERq-2kfN
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruif-0006Ui-1j; Mon, 16 Feb 2026 10:16:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruid-0012Wy-1U;
	Mon, 16 Feb 2026 10:16:40 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-2AdL;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:17 +0100
Message-ID: <20260216084758.3548990-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_011642_719196_D20BA837 
X-CRM114-Status: GOOD (  10.58  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 17/39] efi: payload: fix missing NULL check after read_file in handover
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

read_file() can return NULL on failure, but the result is used
without checking, leading to a NULL pointer dereference in the
subsequent xmemalign/memcpy. Additionally, 'size' would be
uninitialized, causing xmemalign to allocate an arbitrary amount.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/handover.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/efi/payload/handover.c b/efi/payload/handover.c
index c7f1deabfffa..bef726ae303c 100644
--- a/efi/payload/handover.c
+++ b/efi/payload/handover.c
@@ -142,6 +142,10 @@ static int do_bootm_efi(struct image_data *data)
 
 	if (data->initrd_file) {
 		tmp = read_file(data->initrd_file, &size);
+		if (!tmp) {
+			ret = -errno;
+			goto err_free;
+		}
 		initrd = xmemalign(PAGE_SIZE, PAGE_ALIGN(size));
 		memcpy(initrd, tmp, size);
 		memset(initrd + size, 0, PAGE_ALIGN(size) - size);
@@ -169,10 +173,8 @@ static int do_bootm_efi(struct image_data *data)
 	printf("...\n");
 
 	if (data->dryrun) {
-		BS->unload_image(handle);
-		free(boot_header);
-		free(initrd);
-		return 0;
+		ret = 0;
+		goto err_free;
 	}
 
 	efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
@@ -182,6 +184,12 @@ static int do_bootm_efi(struct image_data *data)
 	linux_efi_handover(handle, boot_header);
 
 	return 0;
+
+err_free:
+	BS->unload_image(handle);
+	free(boot_header);
+	free(initrd);
+	return ret;
 }
 
 struct image_handler efi_x86_linux_handle_handover = {
-- 
2.47.3



