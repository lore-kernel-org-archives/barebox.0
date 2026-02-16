Delivery-date: Mon, 16 Feb 2026 10:17:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujk-002GxB-1q
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:17:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujf-0007cf-Im
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:17:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5zFUtOc6LngGyl+TW9hf6tHHte6LwL98kFLi7HBJz3Y=; b=vAzu0rVBKs8t6Et1AqPUs4Cfso
	hojNtCWDRoZi45m7nbcD7Isul7s407jTJXA6LefQeGEwPnDa9Av2E5m4NWeuxd1cSv2+rW//jOVXu
	1Qgc3N43KJ9GR9wRNN8S6ldJq7YsBBZJ9XdkvywLbY/UTHy3m+tKLN9qhOlfoWtp6CZ2tSvBNZkJt
	w86ltJUD4z3E2/qxf2BXpbMs3DIe+xChDifAhEInxe5Wyml4YlINFXjYrB3Dad3pxt7sN26wSCHFG
	mIM6FILHtKKIu/ISA/vWRF3BLwCnS30Gik29yj4+X2AeRcaix3wCJrTMnNKG3IDadPkTPw6bwejOB
	ce8ZXuFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruis-00000006EhI-0RJz;
	Mon, 16 Feb 2026 09:16:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruih-00000006ERw-0p6I
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruif-0006Vt-GM; Mon, 16 Feb 2026 10:16:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruid-0012XH-2q;
	Mon, 16 Feb 2026 10:16:41 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH1-0000000Eudd-0Ynq;
	Mon, 16 Feb 2026 09:48:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:31 +0100
Message-ID: <20260216084758.3548990-32-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_011643_230263_4FE7266D 
X-CRM114-Status: UNSURE (   8.65  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 31/39] efi: payload: fix possible memory leaks during init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi_get_boot(): buf from efi_get_global_var() is never freed after
parsing the Boot variable. Add free(buf) before return.

efi_late_init(): the flat DTB blob from read_file() is never freed
after of_unflatten_dtb() creates the unflattened tree. Free it
immediately after unflattening.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/init.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/efi/payload/init.c b/efi/payload/init.c
index f74ac4966fb1..03f831840de7 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -96,6 +96,8 @@ static struct efi_boot *efi_get_boot(int num)
 
 	printf("path: %s\n", device_path_to_str(boot->path, true));
 
+	free(buf);
+
 	return boot;
 }
 
@@ -301,6 +303,8 @@ static int efi_late_init(void)
 	}
 
 	state_root = of_unflatten_dtb(fdt, size);
+	free(fdt);
+
 	if (!IS_ERR(state_root)) {
 		struct device_node *np = NULL;
 		struct state *state;
-- 
2.47.3



