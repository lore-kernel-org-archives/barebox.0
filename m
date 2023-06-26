Delivery-date: Mon, 26 Jun 2023 17:35:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDoFI-004fKq-NV
	for lore@lore.pengutronix.de; Mon, 26 Jun 2023 17:35:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDoFG-0006RD-Dj
	for lore@pengutronix.de; Mon, 26 Jun 2023 17:35:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+0mi4VO9RmFVOODOEETY5KcOmTMpobSK0hZ8GHqTb4=; b=1kTetGm1Eixb3Q
	FZKzp80Iu+8D1BNYwp5bn5PBvg6VsIwnqOLk4s6QZ7yQZWtPDUmQ+gUP5hCzmlhCzZHPoSONohha3
	mtA2WFMUtidw+7QQgui0r4+BPMv6/SxegKy3esOf0wpyRftNDQJJlvJK9iYd0w4qFbwXIXWT6IpSD
	rj5jUsDtabl+vbcGrrIH0qzbQP1MWQFPmGPXQc287qQuWFSbzOklkjDeZ+iBSuN7ZJaUrOogTkgnV
	LUHTwJ3PtrMH26xZ2jmQgRwbl/Gj2eiJ+irYKY2wv2kKjqIGmsjCyuAwlT4bjcyHRZrJbEzACMPh5
	ctnMwReSkkjiUN7sLHUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDoDz-00AV0D-0O;
	Mon, 26 Jun 2023 15:33:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDoDw-00AUzH-2A
	for barebox@lists.infradead.org;
	Mon, 26 Jun 2023 15:33:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qDoDt-0005yG-Qs; Mon, 26 Jun 2023 17:33:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qDoDt-00AF89-6V; Mon, 26 Jun 2023 17:33:49 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qDoDs-00F5Np-2k;
	Mon, 26 Jun 2023 17:33:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 26 Jun 2023 17:33:32 +0200
Message-Id: <20230626153335.3592017-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230626153335.3592017-1-a.fatoum@pengutronix.de>
References: <20230626153335.3592017-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_083352_706840_8B38C374 
X-CRM114-Status: UNSURE (   8.27  )
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
Cc: uol@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master v1 1/6] firmware: reference pointer alignment defined in <asm-generic/pointer.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already define pointer size constants for use in assembly. Make use
of this header. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 firmware/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index efdd5c0da541..8050d0418d33 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -41,13 +41,13 @@ obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
 
 FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
 FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
-ASM_ALIGN = $(if $(CONFIG_64BIT),3,2)
 
 filechk_fwbin = { \
 	echo "/* Generated by $(src)/Makefile */"		;\
+	echo "\#include <asm-generic/pointer.h>"		;\
 	echo ".section .note.GNU-stack,\"\",%progbits"		;\
 	echo "    .section $2,\"$3\""				;\
-	echo "    .p2align $(ASM_ALIGN)"			;\
+	echo "    .p2align $(ASM_LGPTR)"			;\
 	echo ".global _fw_$(FWSTR)_start"			;\
 	echo "_fw_$(FWSTR)_start:"				;\
 	echo "    .incbin \"$(fwdir)/$(FWNAME)\""		;\
@@ -57,7 +57,7 @@ filechk_fwbin = { \
 
 __fwbin_sha = { \
 	echo "    .section .rodata.$(FWSTR).sha"		;\
-	echo "    .p2align $(ASM_ALIGN)"			;\
+	echo "    .p2align $(ASM_LGPTR)"			;\
 	echo ".global _fw_$(FWSTR)_sha_start"			;\
 	echo "_fw_$(FWSTR)_sha_start:"				;\
 	echo "    .incbin \"$(fwobjdir)/$(FWNAME).sha.bin\""	;\
-- 
2.39.2



