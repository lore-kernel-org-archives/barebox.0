Delivery-date: Sun, 21 Mar 2021 16:20:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzsl-00023E-Qa
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:20:47 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzsk-0002R7-DM
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:20:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8xIZdbIdQqk2nFhpaezSbKvJSipOdyJxU37grIwb5bA=; b=HxsdVSVSI/F99AVZb7QofToj6
	ujkL1Jz+p2mlrT16hsWZ7qPdcsFxpwrC2sNYHoHVZojNDj929j9YUELVMp/TnuJLUB7is+1TPSVsQ
	OP7OKpNSkB5JrtLvqrSqQsJwNdMHHVDVCPB7iFyqh9ArXy1yfFwPNn4nyQCt5x1E7cwyTCDdRGvjD
	lwjx/yl6SEhI6Rdva70+q30MvpdgPx9P0RU5yQxXBmXpNSs+IXj3glR51IM+RNch36nucyMGFjzOP
	iLupHCbnnRHQXMyyVXn1LaD6H5NBBYHjp9yZpV7wQJmUzonwWp7rKFfNPMLnPmZBbBiOYHhHxY7FX
	xfz3CaPAQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzrV-00A4YD-D1; Sun, 21 Mar 2021 15:19:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzmE-00A41q-8A
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:14:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm2-00011R-3u; Sun, 21 Mar 2021 16:13:50 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm0-0007wG-Uc; Sun, 21 Mar 2021 16:13:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 21 Mar 2021 16:13:31 +0100
Message-Id: <20210321151344.5810-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210321151344.5810-1-a.fatoum@pengutronix.de>
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151441_875658_BB7D63CF 
X-CRM114-Status: UNSURE (   7.64  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
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
Subject: [PATCH v3 08/21] RISC-V: drop duplicate or unneeded cflags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

-pipe -Wall is specified in top-level Makefile. Disabling warnings is
unneeded on the arch and is a left-over from MIPS port probably.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Makefile | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 8cd5f51e3052..edf3a971e615 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -7,9 +7,7 @@ ifeq ($(CONFIG_ARCH_RV32I),y)
 	riscv-ldflags-y += -melf32lriscv
 endif
 
-cflags-y += -fno-pic -pipe
-cflags-y += -Wall -Wstrict-prototypes \
-	-Wno-uninitialized -Wno-format -Wno-main -mcmodel=medany
+cflags-y += -fno-pic -Wstrict-prototypes -mcmodel=medany
 
 LDFLAGS_barebox += -nostdlib
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

