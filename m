Delivery-date: Tue, 10 Aug 2021 07:32:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDKN5-0006AF-Vj
	for lore@lore.pengutronix.de; Tue, 10 Aug 2021 07:32:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDKN1-0006y8-ON
	for lore@pengutronix.de; Tue, 10 Aug 2021 07:32:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EclxAEsEuu9a7Nw5n7w/JpLio2lW7E9ndfBUqNnipWg=; b=T3p62Y1/8MY5Kl
	hQOOM7PWfMgViAmK3KEvrdEDOKAXbIZSBiRs+Prd1uN4Q4LBLJXhSDcYr0FqDRbBs3M2OMJFgp1sh
	rDY0OaRnDKlUazV0dto959z6V0fX3+1H+z3hkL5TzcTMSWe83+2g6FZ6qwv0jXggRV5hOagRm/WZC
	rHcneD6uE9xBso4Ka/urKceWt2tofPobqskDd/AJ87PliIYqtn1XXENcZSBc4OR61o4DCroTp13uZ
	JlosSewj5DVh4L+Xxa01NX7hXNdMi9ufKhT3At4p6O3iDe8F1/qxwy72MpolL5XbcbsxcO7ttvJQ6
	kQ1qdSOfZLcJtle8VmhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDKKh-002YKC-Kq; Tue, 10 Aug 2021 05:29:47 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDKKc-002YIm-PF
 for barebox@lists.infradead.org; Tue, 10 Aug 2021 05:29:44 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 26AAF8ADBE; Tue, 10 Aug 2021 07:29:34 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:215f:be02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id CC16E8A9DF;
 Tue, 10 Aug 2021 07:29:32 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 10 Aug 2021 07:29:28 +0200
Message-Id: <20210810052928.101783-2-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210810052928.101783-1-r.czerwinski@pengutronix.de>
References: <20210810052928.101783-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_222943_027127_46F254CE 
X-CRM114-Status: GOOD (  12.75  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] fastboot: use file_list_parse_null()
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
v2: remove left over braces
---
 common/fastboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 75f6691b08..04a8573b4a 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -919,7 +919,7 @@ bool get_fastboot_bbu(void)
 struct file_list *get_fastboot_partitions(void)
 {
 	if (fastboot_partitions && *fastboot_partitions)
-		return file_list_parse(fastboot_partitions);
+		return file_list_parse_null(fastboot_partitions);
 	if (!system_partitions_empty())
 		return system_partitions_get();
 	return NULL;
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

