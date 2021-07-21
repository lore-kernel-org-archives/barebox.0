Delivery-date: Wed, 21 Jul 2021 10:42:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m67nv-0003wU-05
	for lore@lore.pengutronix.de; Wed, 21 Jul 2021 10:42:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m67nt-0000ED-Kb
	for lore@pengutronix.de; Wed, 21 Jul 2021 10:42:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Koaa0Ai27DEWXTiB+h6wNEE6WnvKkbjDRG9k4tPg8LE=; b=a1qXPoaN/i1sEn
	cEM6KrQ8GBtkTYoGXt+1J70Bxx7fd3emLMF+LWtxe+1E8e0wfrJAkfSjJ4UvoCPvFNFaHftdBDXkT
	ZYIMhJkmWY2jWg3bRQjUhIRLy1y1DWYTl+FKNFttZmGSMF+hVk9P+5Tw+dU7zKuz5+zdbDm8cJfgC
	A2DTtA8Zd1QyRxuedayJLckBs9B73aGohSJi0KVyxFsg5wi5+QgIqkYKcHlLLzAf6CPNdh5eMJKrL
	rluu5yBMh6e75U9iVAGPQrVFi36bx162/mpEAnbthEzz3jylO5gVNcc6HLCxqY0EIQt/e6+uKsp6y
	ByKGOGIWwNsaXqI10vQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m67mN-00Ewed-5K; Wed, 21 Jul 2021 08:40:36 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m67mA-00EwaB-Rw
 for barebox@lists.infradead.org; Wed, 21 Jul 2021 08:40:24 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id DDD7B88A54; Wed, 21 Jul 2021 10:40:20 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:2179:3a02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 34B8088A28;
 Wed, 21 Jul 2021 10:40:19 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 21 Jul 2021 10:40:17 +0200
Message-Id: <20210721084017.401081-2-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210721084017.401081-1-r.czerwinski@pengutronix.de>
References: <20210721084017.401081-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210721_014023_114159_542299C4 
X-CRM114-Status: GOOD (  13.31  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fastboot: use file_list_parse_null()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In case an invalid file list is passed to file_list_parse(), it will
return an error, i.e. by passing "/dev/mmc1(emmc) /dev/mmc1.1(root)",
the error here being that the entries are not comma separated and
file_list_parse will try to parse ' ' as a flag. The fastboot code
didn't handle this, leading to the following error:

  ERROR: file_list: Unknown flag ' '
  ERROR: file_list: parse error
  unable to handle paging request at address 0xfffffff2
  pc : [<8fe26a20>]    lr : [<8fe0f965>]
  sp : 8ffeff50  ip : 8ffef714  fp : 00079bda
  r10: 001b9ff8  r9 : 8fea7eec  r8 : 00000001
  r7 : 00000000  r6 : 00000001  r5 : 00000000  r4 : 8813eab0
  r3 : ffffffea  r2 : 00020000  r1 : 00000001  r0 : 8813eab0
  Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
  WARNING: [<8fe26a20>] (usb_multi_count_functions+0xc/0x2a) from [<8fe0f965>] (usbgadget_register+0x79/0xf4)
  WARNING: [<8fe0f965>] (usbgadget_register+0x79/0xf4) from [<8fe0fa13>] (usbgadget_autostart_set+0x33/0x4c)
  WARNING: [<8fe0fa13>] (usbgadget_autostart_set+0x33/0x4c) from [<8fe4d437>] (param_int_set+0x4b/0xb0)
  WARNING: [<8fe4d437>] (param_int_set+0x4b/0xb0) from [<8fe4d899>] (dev_set_param+0x4d/0x64)
  WARNING: [<8fe4d899>] (dev_set_param+0x4d/0x64) from [<8fe066f1>] (globalvar_add_bool+0x49/0x54)
  WARNING: [<8fe066f1>] (globalvar_add_bool+0x49/0x54) from [<8fe0f8dd>] (usbgadget_autostart_init+0x15/0x24)
  WARNING: [<8fe0f8dd>] (usbgadget_autostart_init+0x15/0x24) from [<8fe01081>] (start_barebox+0x35/0x6c)
  WARNING: [<8fe01081>] (start_barebox+0x35/0x6c) from [<8fe62ed9>] (barebox_non_pbl_start+0x121/0x164)
  WARNING: [<8fe62ed9>] (barebox_non_pbl_start+0x121/0x164) from [<8fe00005>] (__bare_init_start+0x1/0xc)

  WARNING: [<8fe64e3d>] (unwind_backtrace+0x1/0x78) from [<8fe01385>] (panic+0x1d/0x34)
  WARNING: [<8fe01385>] (panic+0x1d/0x34) from [<8fe62723>] (do_exception+0xf/0x14)
  WARNING: [<8fe62723>] (do_exception+0xf/0x14) from [<8fe62791>] (do_data_abort+0x21/0x34)
  WARNING: [<8fe62791>] (do_data_abort+0x21/0x34) from [<8fe624d4>] (do_abort_6+0x48/0x54)

Use file_list_parse_null instead of file_list_parse to get a NULL
pointer if there is a parse error.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/fastboot.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 75f6691b08..00a50813a7 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -918,8 +918,9 @@ bool get_fastboot_bbu(void)
 
 struct file_list *get_fastboot_partitions(void)
 {
-	if (fastboot_partitions && *fastboot_partitions)
-		return file_list_parse(fastboot_partitions);
+	if (fastboot_partitions && *fastboot_partitions) {
+		return file_list_parse_null(fastboot_partitions);
+	}
 	if (!system_partitions_empty())
 		return system_partitions_get();
 	return NULL;
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

