Delivery-date: Fri, 14 Jan 2022 17:54:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqH-002DG8-HO
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 17:54:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqF-0004Pa-AC
	for lore@pengutronix.de; Fri, 14 Jan 2022 17:54:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JutiwDA6+BqAZZXxIEFlsvHe3d5JLUj7oU5sxue/fi8=; b=wjga7GO4Fb+3W8
	Sx823vgFfkljfX7wkOnlw86npwdJ32c0w8FKQRsXiNHyNuiS1vtMTCz80q2QxgMVBWYsxb9sg4RdT
	GhYCWLOrsH+OSjZ6MHN81ySGGaTsyMZKJKK8U3C52KYqj0FbFcFkvO6jnatDRb1T+Rp989YwgOhMq
	q0U3SfGFVm3dnuby6CaLnr9jYehrnNOjJvCfC/j67eNA44IJQtdqEW5Wn9EjH+fmZCw4yEZLxBGQE
	xHJ+pOFVKhxoa0TWbr4VPixrOYRUPRjmcshiWLCNRImvjse2RjTO07Ix3+CXJ0x5hKb/2FQrr27nu
	75qU+V1lpLpu79WNVaRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Poc-009qLU-HL; Fri, 14 Jan 2022 16:52:38 +0000
Received: from mxout.security-mail.net ([85.31.212.48]
 helo=fx304.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8PoR-009qGl-0K
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 16:52:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id 8882D62867
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 17:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642179144;
 bh=xVCrmouBAynr/t1rSAZerssIymvmskddRqgZO9Sq2ME=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ClQl+44H71pJcwnBGruw9gqLbufI5A4MnG1XqFYXafoQGWKXCvhbNM3UatAU35JJK
 O9fNUwZFoDZ/ree+LC8xHVbSi8JtnOEUgAddWDPOI4NI06tKPQrqykaoXRBTMuXyA+
 WdbdhOtOHS9bvhX097LBxa31XwxojXdUNR9LEw5w=
Received: from fx304 (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id 42E0362859;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <8ddb.61e1aa47.eb095.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx304.security-mail.net (Postfix) with ESMTPS id EB78E62820;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id D089D27E03CB;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B661027E03A2;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu B661027E03A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642179143;
 bh=tGnjhuZxcLaPwdKxALUckK/LbhgV7GTRLOawj9/v604=;
 h=From:To:Date:Message-Id;
 b=GIHSav5QdBSfKJsRcfMsnJV2FJEEyg8SgIcjCXeaP330wKL49t41lWgS1qQxnQ0g8
 IsW24XETaUc4IFZ1t+g1zL3odqqMnohiYO833hQUcKGJZfqRU2SNwaibG8HeEKq4eR
 wjS0shX6Egw+fYoCKwYuK7GrlDx35mn4EHAQhn4M=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id s5G9g9wC3ku7; Fri, 14 Jan 2022 17:52:23 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id A073027E03CB;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 14 Jan 2022 17:52:02 +0100
Message-Id: <20220114165208.9980-4-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220114165208.9980-1-jmaselbas@kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_085227_277391_35F49244 
X-CRM114-Status: GOOD (  10.26  )
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
Subject: [PATCH 03/13] kvx: Accept LINUX_BOOT_PARAM_MAGIC as a valid magic
 value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Both defines FSBL_PARAM_MAGIC and LINUX_BOOT_PARAM_MAGIC have a similar
uses and yet have different values. Making barebox accept both as valid
magic boot param will make it possible to use qemu-system-kvx to boot a
barebox image as a normal kernel.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/cpu/cpu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/kvx/cpu/cpu.c b/arch/kvx/cpu/cpu.c
index 788d3194fe..4b0d4d2d96 100644
--- a/arch/kvx/cpu/cpu.c
+++ b/arch/kvx/cpu/cpu.c
@@ -16,7 +16,7 @@ void kvx_lowlevel_setup(unsigned long r0, void *dtb_ptr)
 {
 	uint64_t ev_val = (uint64_t) &_exception_start | EXCEPTION_STRIDE;
 
-	if (r0 == FSBL_PARAM_MAGIC) {
+	if (r0 == FSBL_PARAM_MAGIC || r0 == LINUX_BOOT_PARAM_MAGIC) {
 		boot_dtb = dtb_ptr;
 		pr_info("Using DTB provided by FSBL\n");
 	}
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

