Delivery-date: Fri, 17 Feb 2023 18:52:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4ui-00AIjE-2O
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:52:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4ug-0007pi-VN
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:52:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NoPyvwTr3Y0icIEVOyfanXuAdB+V+lwL5zMik7dkrKE=; b=WFuwrx/nh2jf8eAtxUYM5dAXEc
	wyacdBKddD5eyhc5aeVmfKgPOyIJ0q+3FgxG9tVzui2+OIAjjZnitTtAu0mB6uDIAOkhda0G9HiY8
	cKLUb5P3igXYLODt5321LTZS/0jpsgLdzWbB+qp8Bw2it/t/1MD3UiVIB14pFOz3P+98/+ZyKQEwr
	AX2WjFG3tNyQo9eT6Qx8Yul9J5U/c6gCL9IRf6fkRmWWwKWzGe9ECVpw+XH1cB98MUga6Oy245QUz
	VxXDaG/amRfhNxazpdPFgkbzwRAloavvbpr+ckqIovs96knlvojGxxXM0vvDdh0f0dVM2HoDeef4V
	dnSgUiJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4tR-00FKWX-D8; Fri, 17 Feb 2023 17:51:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4tM-00FKVs-DP
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:51:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4tK-0007l8-R3; Fri, 17 Feb 2023 18:51:26 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4tJ-005dYb-0H; Fri, 17 Feb 2023 18:51:26 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4tI-007xff-SQ; Fri, 17 Feb 2023 18:51:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:51:24 +0100
Message-Id: <20230217175124.1897402-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_095128_467296_7A594AD4 
X-CRM114-Status: GOOD (  16.04  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: stm32mp: much enlarge very early stack size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The barebox stack is always located at a fixed offset from the end of
SDRAM. To determine end of SDRAM, barebox may need a stack setup, so
at that early time, either stack pointer set up by BootROM is reused
or we set up a temporary stack on some on-chip SRAM .

On STM32MP1, TF-A runs after BootROM, so barebox runs in normal world
without prepared stack and TF-A is located on on-chip SRAM.

So what we did so far was have a small stack of 64 bytes starting behind
end of barebox image to cover the first function call to determine
actual memory size. This may have been chosen that small with the thought
that an overflow would give an error message anyway, because of failed
decompression. An overflow of exactly 4 bytes overwrites just the barebox
proper image size though located at the end of the barebox image, thereby
overflowing the size and leading to out-of-bounds access during decompression
in 1 of 4 cases depending on barebox size, because we align barebox
proper size to 16 bytes...

Let's just use a fully sized stack even in the early state. That's
usually 32K and we expect a barebox loaded into DRAM to always have
that much bytes following it. Another way would've been to use
some of the other SRAMs, but I decided to leave those alone, as not
to clobber data used by the coprocessor, when reloading barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/include/mach/entry.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-stm32mp/include/mach/entry.h b/arch/arm/mach-stm32mp/include/mach/entry.h
index f8d981cca7cd..8d3adb4bdaf9 100644
--- a/arch/arm/mach-stm32mp/include/mach/entry.h
+++ b/arch/arm/mach-stm32mp/include/mach/entry.h
@@ -11,7 +11,7 @@ static __always_inline void stm32mp_cpu_lowlevel_init(void)
 	unsigned long stack_top;
 	arm_cpu_lowlevel_init();
 
-	stack_top = (unsigned long)__image_end + get_runtime_offset() + 64;
+	stack_top = (unsigned long)__image_end + get_runtime_offset() + CONFIG_STACK_SIZE;
 	stack_top = ALIGN(stack_top, 16);
 	arm_setup_stack(stack_top);
 }
-- 
2.30.2



