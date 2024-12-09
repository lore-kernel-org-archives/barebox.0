Delivery-date: Mon, 09 Dec 2024 15:28:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKeks-00602T-0G
	for lore@lore.pengutronix.de;
	Mon, 09 Dec 2024 15:28:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKeks-0004eq-1H
	for lore@pengutronix.de; Mon, 09 Dec 2024 15:28:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GmELCSYcB2+RLpvUioKWaLZQwRTTp9QkgOkxeYu3u/Q=; b=H3xE06dnUNoVbSikJjw1xcXbWr
	LCrcTjwnDOLDxdMNTE7zMNO4yXI3od8RakAGQASeEMgmMArWDdQDso79oKw+X0Vfb/irvRHh5Td7n
	0GGGiObV9NxHIeiqCv1dJWc31XPWC8BsFSwdKQc5CIiZeW/sbH2weOJKLGPgsxnPD/MpE57sL0PbO
	EcYAjKE48AFDQJnIiD6KFr9Vh9dvpl2uiFv6f0chH4yKNPM35M8DBMjWfBK2F7L+eIRlIRyZa3NQe
	YxOJvPSTiF3yYGK1aVCVChQBONNLhX6uMTG4u3JhUskBmt9WpAahSlgI4+o8jWVbRmtJX9pIU3RNO
	YQZxiqAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKekS-00000008Cgy-0uFz;
	Mon, 09 Dec 2024 14:28:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKekP-00000008Cf7-0snb
	for barebox@lists.infradead.org;
	Mon, 09 Dec 2024 14:28:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKek8-0004MS-1v; Mon, 09 Dec 2024 15:28:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKek7-002Wtp-02;
	Mon, 09 Dec 2024 15:28:11 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKek7-005Elf-2J;
	Mon, 09 Dec 2024 15:28:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 09 Dec 2024 15:28:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-ext-dt-handoff-v1-2-e61052d5d437@pengutronix.de>
References: <20241209-ext-dt-handoff-v1-0-e61052d5d437@pengutronix.de>
In-Reply-To: <20241209-ext-dt-handoff-v1-0-e61052d5d437@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733754491; l=1480;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=D8/J/UxzfSUHRqIx/l6DpxT/J9G5xgb8p/nTa+jHf9U=;
 b=yiPnwahonJaY9+wM2T5XMIWm9myAMypb0LNkJwx0iPKOymQKTAVWNsfbeMQVfk4sX3aCa/liI
 gn9TtcMqGx4ClpWMU2qP3SvPPE3YnZblTl8jmkBTE2G/I/1x6teU5Po
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_062829_254563_5A3DBFD0 
X-CRM114-Status: GOOD (  13.43  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] store external device tree as file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When barebox is chainloaded from another bootloader it usually gets
passed a device tree from the previous bootloader. While this external
device tree is normally not used by barebox, its contents can still be
interesting, so store the device tree at /external-devicetree when
found. This needs board support to pass the external device tree in
handoff data, i.e. a board has to call
handoff_data_add(HANDOFF_DATA_EXTERNAL_DT, dtb, size);

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/common/startup.c b/common/startup.c
index b311b77418..abdc0c2db0 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -40,6 +40,8 @@
 #include <net.h>
 #include <efi/efi-mode.h>
 #include <bselftest.h>
+#include <pbl/handoff-data.h>
+#include <libfile.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
@@ -246,6 +248,8 @@ static int run_init(void)
 	struct stat s;
 	glob_t g;
 	int i, ret;
+	size_t size;
+	void *ext_dtb;
 
 	setenv("PATH", "/env/bin");
 	export("PATH");
@@ -289,6 +293,10 @@ static int run_init(void)
 		globfree(&g);
 	}
 
+	ext_dtb = handoff_data_get_entry(HANDOFF_DATA_EXTERNAL_DT, &size);
+	if (ext_dtb)
+		write_file("/external-devicetree", ext_dtb, size);
+
 	/* source matching script in /env/bmode/ */
 	bmode = reboot_mode_get();
 	if (bmode) {

-- 
2.39.5



