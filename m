Delivery-date: Fri, 08 Apr 2022 19:03:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncs1L-00C3CK-5f
	for lore@lore.pengutronix.de; Fri, 08 Apr 2022 19:03:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncs1I-0003n5-Lr
	for lore@pengutronix.de; Fri, 08 Apr 2022 19:03:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AEi97Z/20Iwly1HHHKsW+vTGEkNheco7PeV2ua2P8II=; b=Eroctk3WjxOmfL
	jwl9mFvAvTqtA9JjSv3QLKmnU1Pruy8DBR8dAa/OG7ofA3dmy+eJObOQ+oh/4IFAYV2CjjNYbVaOK
	3hwO3Pt3jBsykWDX/7B9gG08carEvkTAIyYnAfnCShLpCswku1xRXJIPhrf80t7ASTwOQIOHwXfd/
	Fbk1suq3/bcavDQId1S8vvjoeQ5+4ezc0pC3yP/aluavmty75YEXWlOepkokhW9y40Mm8tfVn8SX2
	vfwMdVm+oPB4N62QbZ6mBPSITVU+8GUOdImSK9dTVuGlwXx5UPHSpb+ZX3kzzGS8VjWPcTrCEqRi6
	sG7R5lXh3wCNFZvHWArA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncs04-000f4o-0S; Fri, 08 Apr 2022 17:02:20 +0000
Received: from smtp97.ord1c.emailsrvr.com ([108.166.43.97])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncrzz-000f3G-SE
 for barebox@lists.infradead.org; Fri, 08 Apr 2022 17:02:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1649437329;
 bh=JFkPPXcwIoUa1K2tAC0zEb4eePwKqv3OAN6CgB3Tz7o=;
 h=From:To:Subject:Date:From;
 b=mYjeEopMqvy4JcTaN37/4rpz/lW73VSdninVwQ4eTI2T5T/NeJ5QG730DitSRonnO
 FgcGpj6P9q0jFCAQuZEcPE5yXnti3csHwgL8/1FK0ZHOPabHmvyVjNgwUZMiVkQaJQ
 3Y5bIZYRpJym9UTgt/PDJUuFt1ieCqyg30esFYb0=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp21.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 7B443C0276; 
 Fri,  8 Apr 2022 13:02:08 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>
Date: Fri,  8 Apr 2022 18:01:54 +0100
Message-Id: <20220408170154.114526-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Classification-ID: 1a528d37-b983-4ec8-a266-c372abacb0aa-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_100216_080449_197A0E07 
X-CRM114-Status: GOOD (  10.20  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: fix GCC 11.x build failures for ARMv7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Building barebox for ARMv7 with GCC 11.x results in errors similar to
the following:

  CC      common/state/state_variables.o
{standard input}: Assembler messages:
{standard input}:1535: Error: selected processor does not support `rev r3,r3' in Thumb mode
{standard input}:1576: Error: selected processor does not support `rev r3,r3' in Thumb mode

Or:

  CC      common/state/state_variables.o
{standard input}: Assembler messages:
{standard input}:1405: Error: selected processor does not support `rev r3,r3' in ARM mode
{standard input}:1453: Error: selected processor does not support `rev r3,r3' in ARM mode

The problem is that the compiler option `-march=armv7-a` is not being
chosen by "arch/arm/Makefile", but rather the fallback options
`-march=armv5t -Wa,-march=armv7-a` are being chosen.

Appending `-msoft-float` to `KBUILD_CPPFLAGS` earlier in
"arch/arm/Makefile" before the tests for supported `-march` options
seems to fix the problem.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 arch/arm/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 610ded8a12..124a3fc40c 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -8,6 +8,7 @@ ifeq ($(CONFIG_CPU_V8),y)
 KBUILD_CPPFLAGS	+=$(call cc-option,-maarch64,)
 else
 KBUILD_CPPFLAGS	+=$(call cc-option,-marm,)
+KBUILD_CPPFLAGS	+= -msoft-float
 endif
 
 ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
@@ -78,7 +79,7 @@ KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
 KBUILD_AFLAGS   += -include asm/unified.h
 export S64 = _64
 else
-KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float $(CFLAGS_THUMB2)
+KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) $(CFLAGS_THUMB2)
 KBUILD_AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
 endif
 
-- 
2.35.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

