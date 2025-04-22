Delivery-date: Tue, 22 Apr 2025 08:40:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u77Ik-003wEJ-15
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 08:40:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u77Ij-0005rC-NZ
	for lore@pengutronix.de; Tue, 22 Apr 2025 08:40:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WSr6Pe1m+HBDy9zOYLjflvU/R7hvhcQ84A2u+WGDp5s=; b=rooDBm/IGk5vHaVSJ3+tHc5EJF
	Cu1KUrqOmBn6vCfrBXk2rhC98RfgfPYoP3Le02oO32cafdIl6LWXKijcJ5fRd8iNFKF3is/+zLeAi
	ISJh7vTi34hVrnEUP03yv8JwSI3y4s8HixTEGuxD3oomecD8+ien7+rANN9EqSNEmjoR0gPN3/42s
	08BW6J0uVVkeOEv+nOg6rFADNcNtQV0Vvju0s4UUoTr1g7xTkBMpL7amSu2eDXtYn+M2F70V4zBQ4
	kS9wvyarBSULkX/vDs7tnHziVMzDU94H1GR8ASrZOoCBUQdC+zJBaV8jzLUR9MwZmErQu0a3QjEvO
	b8yjFLSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u77IJ-000000060O1-1r32;
	Tue, 22 Apr 2025 06:39:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u77Ho-000000060HL-1DJX
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 06:39:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u77Hm-0005gY-RV; Tue, 22 Apr 2025 08:39:14 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u77Hm-001VSN-1l;
	Tue, 22 Apr 2025 08:39:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u77Hm-000XDI-1S;
	Tue, 22 Apr 2025 08:39:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>,
	Michael Olbrich <mol@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 08:39:10 +0200
Message-Id: <20250422063910.126829-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_233916_327644_EB2EDA50 
X-CRM114-Status: GOOD (  12.23  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] kbuild: treat char as always unsigned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The C standard makes it implementation defined whether a plain char is
unsigned or signed and the architectures where barebox is compiled for
differ in that, e.g. chars are traditionally unsigned on ARM, but on x86
for example they tend to be signed.

This caused different bugs[1][2][3] in the past, especially around
behavior when casted to int. Let's instruct the compiler to treat char
as always unsigned. This may fix some issues that flew under the radar
so far, but also break drivers that were compiled and used only for
specific architectures, which implicitly assumed char is signed, which
we'll have to fix.

Linux is also being compiled with the same flag since 2022 with Linux
commit 3bc753c06dd0 ("kbuild: treat char as always unsigned").

[1]: 02a3c4f39690 ("readkey: keys are unsigned char")
[2]: f8fccf2ef8c9 ("mci: fix wrong sd/mmc/emmc card size computation for arch where char is signed")
[3]: https://lore.barebox.org/barebox/20250422053641.3435585-1-a.fatoum@pengutronix.de/T/#u

Cc: Yann Sionneau <ysionneau@kalrayinc.com>
Cc: Michael Olbrich <mol@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
This will need extra testing, so this shouldn't go into next until after
the next release.
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 7739078288ea..e37b82d5132c 100644
--- a/Makefile
+++ b/Makefile
@@ -490,7 +490,7 @@ KBUILD_CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) \
 			  -fno-builtin -ffreestanding -Ulinux -Uunix
 
 KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs \
-		   -fno-strict-aliasing -fno-common -fshort-wchar \
+		   -fno-strict-aliasing -fno-common -fshort-wchar -funsigned-char \
 		   -Werror=implicit-function-declaration -Werror=implicit-int \
 		   -Werror=int-conversion \
 		   -Os -pipe -Wmissing-prototypes -std=gnu11
-- 
2.39.5



