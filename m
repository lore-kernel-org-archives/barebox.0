Delivery-date: Tue, 27 May 2025 23:32:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1ty-000yQ4-0J
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:32:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tv-0005t2-Sd
	for lore@pengutronix.de; Tue, 27 May 2025 23:32:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YtY0CsW83QWtV0bQd1ynMdByW3bpAqSTEidMIJPed8s=; b=HUj5z/35C4ZKyVB4TnqrdoNoxe
	FGTPCx8YKHQEorIiTajigQzgQGekxI62k6XLt3ihVb9uY1ArD8LURpfEWZUjx7M/RbcskKlwEPOFu
	lY69YAKZAQF6c02xfJhVEZTW056yT1izoFi5D7vqrozmDokzjpE/0joleoFLlvPDGQxRxw3P+m80S
	6QyC/HTG4VEvnL+aes7UN01WAS1bGghmVKiZd+Q7kPyLUf34w8rFj31ikDJTvPIQ3+l7eI4f+wqfH
	9fWBDJZMn+mbLm8zp5fi9gMduUDOaKDB6+lvdJPHuzjBB8REmyZUDAUJ4UgjcyrlZ3L2DuHiZcYBt
	umDOz5hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tP-0000000Bbve-2ije;
	Tue, 27 May 2025 21:31:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lW-0000000Bb0a-3w0W
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lV-00015n-J9; Tue, 27 May 2025 23:23:17 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 27 May 2025 23:23:00 +0200
Message-Id: <20250527212300.575031-16-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142318_974301_EDC97B85 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-7.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/15] efi: payload: use ktime_to_us to avoid plain 64-bit division
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

The nanosecond time is a 64-bit quantity and dividing them by 1000
worked out so far, because we only did EFI on 64-bit systems.
Now that we want to start compiling it for 32-bit as well, make
the division work there as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/payload/image.c | 3 ++-
 efi/payload/init.c  | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index f039b8a8d26a..33c5e18dac27 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -8,6 +8,7 @@
 #include <clock.h>
 #include <common.h>
 #include <linux/sizes.h>
+#include <linux/ktime.h>
 #include <memory.h>
 #include <command.h>
 #include <magicvar.h>
@@ -302,7 +303,7 @@ static int do_bootm_efi(struct image_data *data)
 	}
 
 	efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
-			      get_time_ns()/1000);
+			      ktime_to_us(ktime_get()));
 
 	shutdown_barebox();
 	linux_efi_handover(handle, boot_header);
diff --git a/efi/payload/init.c b/efi/payload/init.c
index 6a616161e884..239c5ce9ec18 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -14,6 +14,7 @@
 #include <linux/linkage.h>
 #include <common.h>
 #include <linux/sizes.h>
+#include <linux/ktime.h>
 #include <memory.h>
 #include <clock.h>
 #include <command.h>
@@ -310,7 +311,7 @@ static int efi_postcore_init(void)
 		EFI_LOADER_FEATURE_DEVICETREE;
 
 	efi_set_variable_usec("LoaderTimeInitUSec", &efi_systemd_vendor_guid,
-			      get_time_ns()/1000);
+			      ktime_to_us(ktime_get()));
 
 	efi_set_variable_printf("LoaderInfo", &efi_systemd_vendor_guid,
 			"barebox-" UTS_RELEASE);
-- 
2.39.5



