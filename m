Delivery-date: Fri, 25 Nov 2022 11:34:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oyW21-0010ZU-Kg
	for lore@lore.pengutronix.de; Fri, 25 Nov 2022 11:34:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oyW20-0006nQ-LI
	for lore@pengutronix.de; Fri, 25 Nov 2022 11:34:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MHiwEMq96jyHFUpxt7BtaajfJqDgkfOJQ+Zu7HE1j40=; b=0mtQDqGL3mgvDLIVBNCftjSQGJ
	6QjfXxEXLdPuVDZVQDYGbF4AWIhn56VHsQZ2dh+hLASM6rlHxzOBJT9Hkhw3XviYHItNVMx9NjYYi
	4UVHyPSjNRfTMlAeBPpViNrbXTTzVLX3aFXBTfSbzGMbL5yugpZg15rw2Vao3z8W8gVs3Kt8wKcIt
	yQ7o4362ohcDmtBb0WYQwiDwv1aY3TVlfe0FWt6ARkIe7KZyR7M8JUnD1vmpIsQd5O1jtvGt3cArx
	dtTUUKvz1gH4lb2hkIsOp6siohdm8Bbhzmn6KIZw5eUHvJrkV3wSE/oRSljs+6+dlqn+pc77RVdpn
	2GMQ1jpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyVzm-00FStE-Ds; Fri, 25 Nov 2022 10:31:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyVes-00FFLq-EQ
	for barebox@lists.infradead.org; Fri, 25 Nov 2022 10:10:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oyVek-00034b-FW; Fri, 25 Nov 2022 11:10:02 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oyVej-000Cw8-0g; Fri, 25 Nov 2022 11:10:01 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oyVei-00GhoV-SL; Fri, 25 Nov 2022 11:10:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 25 Nov 2022 11:09:59 +0100
Message-Id: <20221125100959.3981619-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_021010_531366_0F58AFB7 
X-CRM114-Status: GOOD (  10.32  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM64: asm: mark __barebox_arm64_head as function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Calling objdump -d on the PBL ELF file will not disassemble the
instructions comprising __barebox_arm64_head and instead will just
print a hexdump. This is because we use linker magic to get the section
in front of the text segment and GAS fails to detect that
__barebox_arm64_head too is of function type. This is no longer the case
with ENDPROC as it uses the GAS .type directive to explicitly mark
a symbol as being a function:

  #define ENDPROC(name) \
    .type name, @function; \
    END(name)

This only has effect on the ELF and introduces no functional change for
the objcopied image.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/head_64.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/head_64.S b/arch/arm/cpu/head_64.S
index f934e96c6eaf..398c4d3471e0 100644
--- a/arch/arm/cpu/head_64.S
+++ b/arch/arm/cpu/head_64.S
@@ -30,4 +30,4 @@ ENTRY(__barebox_arm64_head)
 	.rept 8
 	.word 0x55555555
 	.endr
-END(__barebox_arm64_head)
+ENDPROC(__barebox_arm64_head)
-- 
2.30.2



