Delivery-date: Mon, 17 Jan 2022 23:21:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNl-004zFy-3W
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 23:21:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNj-0005OM-6Y
	for lore@pengutronix.de; Mon, 17 Jan 2022 23:21:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JutiwDA6+BqAZZXxIEFlsvHe3d5JLUj7oU5sxue/fi8=; b=0y9rDr/T9Q3G8t
	WuFwFhjVEaNLZBI6Pj2fpYOmSA1Y+j3wtJwWJKGwDtlonB0d/SLfKionNq8voHPRKrF6NM5i+2VuO
	ZYH1/vSh3FuOIw/uE0hVHy9LPWJtPGa8+XJXq5CXd4c5Q+mKgamY1173YbvFZ22DuiBE51/q66zJL
	3vqrgNIH2LiKwyYfXW9Pr3Si3THOoVC3InaBXNtyItstdYj27sz9J4tMMcNvk0TWAreW4TbZ/n7L4
	Fgjci3GW/6C3LCkvHJULAtk2DDdsXKMxAS9DBUX0ky2/RVfLUk7vljhc7tSS/7aJS+gP1w8R2jz/H
	B27JWULcGbkUUQgr47sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9aMF-00GTBr-Uy; Mon, 17 Jan 2022 22:20:12 +0000
Received: from mxout.security-mail.net ([85.31.212.42]
 helo=fx302.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9aM3-00GT6g-8j
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 22:20:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id 710283D3B03A
 for <barebox@lists.infradead.org>; Mon, 17 Jan 2022 23:19:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642457997;
 bh=xVCrmouBAynr/t1rSAZerssIymvmskddRqgZO9Sq2ME=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=PuQ4R98u80o/wEnX6DSJsoIttAbhEVLoGOHWHdCo3MKTX/Y2wH629zNJylx1lkg6v
 NLiMCotU1HaaErQR0a7bt7j+KCnuuBMLIAuP4k8Ps0nEPvSAjNCftCmqoKtaLtCR69
 Yzm5UufOvbP+eb9xHpR5XCNcJQVszykN511CqF48=
Received: from fx302 (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id 27B173D3B021;
 Mon, 17 Jan 2022 23:19:57 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <10c45.61e5eb8b.efe7e.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx302.security-mail.net (Postfix) with ESMTPS id C71C63D3B00E;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id D382227E040D;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id BD54B27E03F9;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu BD54B27E03F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642457995;
 bh=tGnjhuZxcLaPwdKxALUckK/LbhgV7GTRLOawj9/v604=;
 h=From:To:Date:Message-Id;
 b=d4HqASeg41rvTDSoFhPLek9FvgUgWKMEVhzMIaGQ/fxxJbW3bVmsQglEJQUf98aHD
 xabKKLnLiukrMBm1GxNdJjkVubhYugKRjRmWbT5828wtVYUW3CBuWctZeCmRkLepz2
 HPCLkSrlBirh+8iyXdW/JSCD9ej2NzElWEtOmefE=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ZEVjxjWIOn4R; Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 9D16927E03EB;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jan 2022 23:19:09 +0100
Message-Id: <20220117221917.26970-4-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220117221917.26970-1-jmaselbas@kalray.eu>
References: <20220117221917.26970-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_141959_482138_D88E89CD 
X-CRM114-Status: GOOD (  10.78  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/11] kvx: Accept LINUX_BOOT_PARAM_MAGIC as a valid magic
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

