Delivery-date: Sat, 19 Mar 2022 12:04:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWsv-00GfWc-Nd
	for lore@lore.pengutronix.de; Sat, 19 Mar 2022 12:04:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWsv-0003Uv-Ge
	for lore@pengutronix.de; Sat, 19 Mar 2022 12:04:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wr8jjXC4jGy0g87mH+1ASwBVP2uINqxTuOgmwQohboQ=; b=DOC4HogBhvM/N2
	DGFP0D2iuLR2quSC9QQoiXME1eI4mMKigc3CW3V5u7WWmDd7cCJl/xmYoUVVoTVx6d9SVgFvFOxVD
	2YNF2wIX8zTZK7kgPXvKKo2g8eJckfLMKDlZsHh96oqLpc1ndesbThmvCakBMI0zjiBsGpMOdFN8Z
	7yGDC9rbsg+G/eaVS6UVj13g9jdPL/et45hb7ueGvXud19B7kX04CZEOTpUUni6qcsxIuUiPAQYrC
	hf8KGyK9Q4BAXKO2QT+gy6/mrOuRTM7ZI+6JlXGggRz8eRza2zJLCBKu65G2JcqV68GwPx3E01C2M
	NgrLwq2y/3zw+4dbQPbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVWrO-003bSF-GS; Sat, 19 Mar 2022 11:03:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVWrG-003bQL-Pe
 for barebox@lists.infradead.org; Sat, 19 Mar 2022 11:02:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nVWrB-0003Cp-Hp; Sat, 19 Mar 2022 12:02:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nVWr9-00Bxqu-9x; Sat, 19 Mar 2022 12:02:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Mar 2022 12:02:42 +0100
Message-Id: <20220319110246.2850396-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
References: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_040254_883236_8E191985 
X-CRM114-Status: GOOD (  11.89  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/6] usb: gadget: don't register UMS with empty function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

system_partitions_get clones the system partitions and passes it along.
DFU and Fastboot use system partitions as a fallback and pass along a
NULL file list if they are empty. This enables e.g. usbgadget -A '' to
work: No files are expored, but fastboot OEM commands are possible.

USB mass storage though does pass along an empty system partitions file
list instead of NULL, which leads to bind failure, because UMS gadget
refuses to bind with no LUNs. Detect this case.

Fixes: 57313f83e83e ("usbgadget: add support for USB mass storage gadget")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/usbgadget.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/usbgadget.c b/common/usbgadget.c
index 92e486199556..2ec6d9226cca 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -52,7 +52,7 @@ int usbgadget_register(const struct usbgadget_funcs *funcs)
 		opts->ums_opts.files = file_list_parse_null(funcs->ums_opts);
 		if (IS_ENABLED(CONFIG_USB_GADGET_MASS_STORAGE) && file_list_empty(opts->ums_opts.files)) {
 			file_list_free(opts->ums_opts.files);
-			opts->ums_opts.files = system_partitions_get();
+			opts->ums_opts.files = system_partitions_get_null();
 		}
 	}
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

