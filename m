Delivery-date: Sat, 03 Apr 2021 09:04:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaKn-00017Q-09
	for lore@lore.pengutronix.de; Sat, 03 Apr 2021 09:04:41 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaKm-0001zZ-5e
	for lore@pengutronix.de; Sat, 03 Apr 2021 09:04:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5sECO6ivc2FAHkYDGKASBAzd6SHst8B6autUBlyWonM=; b=qALkq8bIQap96Q70nmoT6NaDGL
	IeonPcj/5X3LpDe9I58QWM7rFtk5YHLqfDFXyCLXrCHPhnahqCyxfW5BIAxy/hmQHfHxFBInd5dZT
	f2Pumbu0bDv0pFcnmbLQBwS3WSd3OKcGWt2GsSk9xUDPMhVJCbSsw2jXstpHY2dFidfo7q7a2qDI1
	/gk3XNBdj0kyvd7OMq0SHuB1eKW4CAQUEGNvKZVUw1HVvsrosTkvNMA0T+JWZEAXjWvGtvFNCmxuy
	6i3VU7YZe4QOu5w1lySm6sokStAJTS1Lzj1DQX/0Tdnwd91E0P9UvwmUv6qs98Q7PeZ9sCTgUU4Lg
	+wRAGNgA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSaJr-00ENsb-DA; Sat, 03 Apr 2021 07:03:43 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSaJm-00ENru-6C
 for barebox@lists.infradead.org; Sat, 03 Apr 2021 07:03:40 +0000
Received: from geraet.fritz.box (muedsl-82-207-194-145.citykom.de
 [82.207.194.145]) (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 2DDD6100003;
 Sat,  3 Apr 2021 07:03:36 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Sat,  3 Apr 2021 09:03:32 +0200
Message-Id: <20210403070332.3642879-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210403_080338_896984_D77DB44B 
X-CRM114-Status: GOOD (  16.03  )
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
Cc: Ahmad Fatoum <ahmad@a3f.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] RISC-V: boot: uncompress: determine piggy data bounds
 before relocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like on ARM, the PBL common code does not relocate the piggy data and
instead keeps pointers into the old image's location.

For relocate_to_current_adr, this doesn't matter, because both
destination and source address are the same, but when running from ROM
or flash relocate_to_adr will only copy up to __bss_start, so
determining the piggy data bounds _must_ happen before relocation.

We did so, but input_data_len, which references the image end was
executed after relocation unearthing two bugs at once:

  - The compiler cached input_data_end from before relocation, so
    the runtime offset wasn't being added

  - Even with runtime offset added, we were pointing at the new
    address, but the old piggy data wasn't copied there (On erizo,
    it's still in ROM)

Fix these by evaluating the bounds before relocation and add a comment,
why it needs to be there. The same comment will also be added at the
code's origin in the ARM architecture support.

Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
Please apply to master.
---
 arch/riscv/boot/uncompress.c      | 6 +++---
 arch/riscv/include/asm/sections.h | 4 +++-
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
index 411cefb0e31b..b4e010998a4a 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -32,8 +32,11 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	void *pg_start, *pg_end;
 	unsigned long pc = get_pc();
 
+	/* piggy data is not relocated, so determine the bounds now */
 	pg_start = input_data + get_runtime_offset();
 	pg_end = input_data_end + get_runtime_offset();
+	pg_len = pg_end - pg_start;
+	uncompressed_len = input_data_len();
 
 	/*
 	 * If we run from inside the memory just relocate the binary
@@ -45,9 +48,6 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	else
 		relocate_to_adr(membase);
 
-	pg_len = pg_end - pg_start;
-	uncompressed_len = input_data_len();
-
 	barebox_base = riscv_mem_barebox_image(membase, endmem,
 					       uncompressed_len + MAX_BSS_SIZE);
 
diff --git a/arch/riscv/include/asm/sections.h b/arch/riscv/include/asm/sections.h
index 725fd8db474e..6673648bcd58 100644
--- a/arch/riscv/include/asm/sections.h
+++ b/arch/riscv/include/asm/sections.h
@@ -15,9 +15,11 @@ extern char __dynsym_end[];
 extern char input_data[];
 extern char input_data_end[];
 
+unsigned long get_runtime_offset(void);
+
 static inline unsigned int input_data_len(void)
 {
-	return get_unaligned((const u32 *)(input_data_end - 4));
+	return get_unaligned((const u32 *)(input_data_end + get_runtime_offset() - 4));
 }
 
 #endif
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

