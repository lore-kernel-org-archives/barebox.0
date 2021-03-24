Delivery-date: Wed, 24 Mar 2021 09:28:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOysa-0006C4-Db
	for lore@lore.pengutronix.de; Wed, 24 Mar 2021 09:28:40 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOysZ-0003Lr-BZ
	for lore@pengutronix.de; Wed, 24 Mar 2021 09:28:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NkD3twK8KsQxVKIzcMxZ08FzEuLitglagI0X7Zws2zM=; b=jo8TwrrlCnK0wu/M3ESddUMpb
	SxDtE30dAG64zlXMFsGKi79Cjf9JF/XazX3ctWavjXDMNmdrPxZGpCOst8wwwnCHNmJbihVuuKcIR
	nRX8/9eB4k7UeNCb02kUOTIwBvotZkB41U5y9Z8PeUEBtWW5NJUv57R40FL97dA9ldd/OXrkDXSDS
	oEuiH5jp8iYkUZrSPZZhQWoHBxKlsWecVbH6kBD4BSAKWQM8vR7LdtAshzqoIJku/yb8hv3VINT1o
	SLLy1660BFRiGhihFv/J+ADFwEK49whcdA43WjRq7W0ZemNbhXy+ZNTQxjlYlTWoyEBdtE4pabg63
	B/SKMDJeQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOyrC-00Gbrz-VT; Wed, 24 Mar 2021 08:27:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOynH-00GaAN-2O
 for barebox@lists.infradead.org; Wed, 24 Mar 2021 08:23:15 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOynF-0002Fu-DD; Wed, 24 Mar 2021 09:23:09 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOynF-00082z-4W; Wed, 24 Mar 2021 09:23:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 24 Mar 2021 09:23:04 +0100
Message-Id: <20210324082304.30858-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210324082304.30858-1-a.fatoum@pengutronix.de>
References: <20210324082304.30858-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_082311_994346_B3373B40 
X-CRM114-Status: GOOD (  13.33  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH master 3/3] RISC-V: boot: move stack top to very end of memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that the generic DT entry point used for QEMU virt takes care to
prevent the PBL common code from overwriting the FDT, we can remove
the 2M wasteland after the stack top.
This reduces fragmentation on low memory platforms like erizo.

Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Fix for master to reduce memory fragmentation on erizo
---
 arch/riscv/include/asm/barebox-riscv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
index 948a562c5c1f..bb1d15308b48 100644
--- a/arch/riscv/include/asm/barebox-riscv.h
+++ b/arch/riscv/include/asm/barebox-riscv.h
@@ -36,7 +36,7 @@ void *barebox_riscv_boot_dtb(void);
 static inline unsigned long riscv_mem_stack_top(unsigned long membase,
 						unsigned long endmem)
 {
-	return endmem - SZ_2M;
+	return endmem;
 }
 
 static inline unsigned long riscv_mem_stack(unsigned long membase,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

