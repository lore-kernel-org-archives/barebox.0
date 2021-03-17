Delivery-date: Wed, 17 Mar 2021 11:48:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMTie-0004C2-DH
	for lore@lore.pengutronix.de; Wed, 17 Mar 2021 11:48:04 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMTid-000860-K5
	for lore@pengutronix.de; Wed, 17 Mar 2021 11:48:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=haU1J3y42Xz7mf0ClnFI7qOWNIkI9DiKYWsAqLgjDxg=; b=iwYBaRkPkoe1QS4BoPz42yMI6/
	DxPSYrz6og23Li14lb/Ora6KVeL2tm/2/IQ+d2DFWC9NtHv1j2kL4dYIsm0GP9utRnsF8JEObD36u
	Ng8CYlslAqSrTrH+qBs9o5W71tZQpDn1bpb0B7otqagWzmTLvWmX1VEPhmNgjt3BgvbGVqVfVfcPe
	acgkzLXqxH/eupyALRUWSB+WMLIZR6iZ7uY1vidS9fS8Jd7D3n0Xo57yvFJRZHxbsV0JlElbTXUKS
	m3ZBSyOKYpCub6nmcwzI5En9C1rYy2ii0QCMEVU+2Y56ekRcx8c/4lct/6Pdl72C4ft0qyz1AazsN
	VHmITfQw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMThk-002xGL-3i; Wed, 17 Mar 2021 10:47:08 +0000
Received: from relay13.mail.gandi.net ([217.70.178.233])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMThY-002xCw-9K
 for barebox@lists.infradead.org; Wed, 17 Mar 2021 10:46:58 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay13.mail.gandi.net (Postfix) with ESMTPSA id BA70280011;
 Wed, 17 Mar 2021 10:46:53 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 17 Mar 2021 11:46:35 +0100
Message-Id: <20210317104643.2058151-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_104656_455340_900C1A4D 
X-CRM114-Status: UNSURE (   4.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/8] <asm/setjmp.h>: Don't use __noreturn without header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

__noreturn is defined in <linux/compiler.h>, which isn't included in
every <asm/setjmp>, so arm32 that uses setjmp outside of bthreads fails
to build. In order to keep changes to a minimum, just replace
__noreturn with __attribute__((noreturn))

Tested on:
arm32, aarch64, mipsel, mips, riscv32, riscv64

Ahmad Fatoum (8):
  fixup! ARM: asm: setjmp: implement coroutine dependency initjmp()
  fixup! kvx: Implement setjmp/longjmp/initjmp
  fixup! mips: Implement setjmp/longjmp/initjmp for 32BIT
  fixup! openrisc: Implement setjmp/longjmp/initjmp
  fixup! powerpc: Implement initjmp/setjmp/longjmp
  fixup! riscv: Implement setjmp/longjmp/initjmp for RV32I
  fixup! sandbox: asm: implement setjmp/longjmp/initjmp
  fixup! x86: implement setjmp/longjmp/initjmp

 arch/arm/include/asm/setjmp.h      | 2 +-
 arch/kvx/include/asm/setjmp.h      | 2 +-
 arch/mips/include/asm/setjmp.h     | 2 +-
 arch/openrisc/include/asm/setjmp.h | 2 +-
 arch/powerpc/include/asm/setjmp.h  | 2 +-
 arch/riscv/include/asm/setjmp.h    | 2 +-
 arch/sandbox/include/asm/setjmp.h  | 2 +-
 arch/x86/include/asm/setjmp.h      | 2 +-
 8 files changed, 8 insertions(+), 8 deletions(-)

-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

