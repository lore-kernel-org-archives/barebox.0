Delivery-date: Wed, 29 Apr 2026 10:08:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHzyA-0001t2-09
	for lore@lore.pengutronix.de;
	Wed, 29 Apr 2026 10:08:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHzy9-0000y5-GT
	for lore@pengutronix.de; Wed, 29 Apr 2026 10:08:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x+k3rJQqgRc9fWe1nuPgm0Q/j64Xcxb4yziVeyBWuyg=; b=opk+ORCJ2QX4xlF/e3n7yOQ3um
	JKf37u0iV7Vt9um1UFsxfjoxOjSNAkKlkxHdEBJlPXIuWZwXfMhA3asjyUVKORpzlxPFPSSNvBwE4
	OVrH8pRDa7A/2x8Mn0YKN75iY7MEX2EzMOqnsXXAvQq8yvv0pOyiUmT8Co/0n1x2njesGN8PxKQCu
	sGDW0CbYYUEscBPF4l6Qnl1cVQgeQeXuIkOnn4LdzrG+fShGngGpHUDCcRCn/cp0IzYbmG+jkIXL9
	OtyqcYydxxHlI+RgoqUo0LtSwxt1vC1TNbq7Rp4AaKYY+BeIkrIsp8UaiAahXSum0Xd04ZNdFGI7a
	SdLr+r/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHzxY-00000003DpH-0BIf;
	Wed, 29 Apr 2026 08:07:52 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHzxU-00000003DnW-3JaX
	for barebox@lists.infradead.org;
	Wed, 29 Apr 2026 08:07:50 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4896c22fcbaso93857075e9.0
        for <barebox@lists.infradead.org>; Wed, 29 Apr 2026 01:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1777450065; x=1778054865; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x+k3rJQqgRc9fWe1nuPgm0Q/j64Xcxb4yziVeyBWuyg=;
        b=smnL9oXBdBRTmvkWw4hshodC6RjOXazaZCtC71t1yQLGDx1NbKEDOyCFUsYdg/fzAh
         8gpYBObw7B0wnM9pfeYFOknwWy27jUabvjm3EL9vOjesh/Mkf/YLmZBuUGyto2zn8z59
         YpC4ku2VdVma+M9ty3UF/oDuN2+vUsrwfq6Bg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777450065; x=1778054865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x+k3rJQqgRc9fWe1nuPgm0Q/j64Xcxb4yziVeyBWuyg=;
        b=djYtCx52nzoRDoChZuhdqHbNHZeM7Vt1YbNJiyEyXzmJu3+sw4R7xLuFdnuWg18+61
         yXAICdk9qv6rE6S8gKER46rFCir+nmjrCyj+iZOAvlruDKj9Hb3tkU7DmevVaTzn1pMY
         Znsvn/PXOXlXcgDBm/v2pQ5lHxglqy2Lfiahtp/tceGelmiw5g1e1GAMipdi+4VpvYfy
         PcsAWXJZ+YTIRAhDEAiYiq+QZLufGM+fbVKRucE6k9LdN0WwiNdqaEEyV4yV9u7A7YSq
         z1Z03ei4rZ38SAOYiixd+xAgk+rOJYsDDm/3/YEJcrEk7aIneJIjeRxBSVsfPYQgmwzr
         UySA==
X-Gm-Message-State: AOJu0Yy4GQpgUQew4GjZ7yE/inIzDsicfStGZjnpCehiLoac5wpwaYPc
	QS/MXqDPCoe53aSEUcxFAgcyxMlr4NbBcc3M2wTf4kM8aPJ5pJyClDORPSGcOp7Xf1BX+TQu/R2
	RCL1qA2E=
X-Gm-Gg: AeBDieuh6omEeIhUTcmp1HaP8++2SAdutpGdvBkbJ1qsjqY7LKmzYDiWis02WBf3pCW
	QowV3GrQDhkWrzl5j12YncBrSiu4noX2g3HsXwPSzZH4YrSOHHRJR33DYDODtPEuIeITNu2hLyn
	3ei24fFHaJ1ovqzngBH1MBAFt8aOtKFpagMgzfxJKgusg+WrD/0bXecSNq72XNhaugQvZsMmCkJ
	4xlHBFJeNAvuEur9fV6xkL2ySxeMw91/nqEwFwaTNNItjNHXJt1cBsO3eYsJX6YJoG48UKdJNmu
	riXLnMyvQ1ihW05mqX8eqCWQHSpbfetWHWdBDze5oJgAzDE+4S8RaANWcqX2uXbzHnfOr3ipsJn
	3SttyJfeFW1Z5oJVSqIecz0Zv6+4CY0iazECJlyFpVgUx1WmVny5w04Z/mFbGuMMtCtx4iQqDI6
	T7L7i8/IRk9qgHNoYYzUlVlHUr1sa8s39+jOwZGHQ=
X-Received: by 2002:a05:600c:3b15:b0:489:1f04:96c3 with SMTP id 5b1f17b1804b1-48a77ae53famr109623455e9.2.1777450065047;
        Wed, 29 Apr 2026 01:07:45 -0700 (PDT)
Received: from heaven ([2a01:e0a:25d:d2b0:651b:e45f:1332:a380])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a7c2f2eb8sm20309945e9.6.2026.04.29.01.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2026 01:07:44 -0700 (PDT)
From: corentin.guillevic@smile.fr
To: barebox@lists.infradead.org
Cc: Corentin Guillevic <corentin.guillevic@smile.fr>
Date: Wed, 29 Apr 2026 10:07:11 +0200
Message-ID: <20260429080710.2497884-2-corentin.guillevic@smile.fr>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_010748_862293_4D6EA339 
X-CRM114-Status: UNSURE (   9.88  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] x86: efi: fix objcopy flags for barebox.efi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Corentin Guillevic <corentin.guillevic@smile.fr>

Since the 2.46 version of binutils, a stricter target checking has been added
(see [1]) meaning that the --target=efi-app-x86_64 option no longer works:
a 'file format not recognized' error occurs.

Replace the --target option, which defines both the input and output targets,
with --output-target.

[1] https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=5e83077d552ed6f81dbc092eb3ccf827a43de42c

Signed-off-by: Corentin Guillevic <corentin.guillevic@smile.fr>
---
 arch/x86/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 647d075f016..9456815fa8a 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -62,7 +62,7 @@ KBUILD_LDFLAGS := --no-undefined
 
 OBJCOPYFLAGS_barebox.efi = \
 	-j .text -j .sdata -j .data -j .dynamic -j .dynsym -j .rel -j .rela \
-	-j .reloc -j .bbenv.* -j .bblogo.* -j .barebox_imd --target=$(TARGET)
+	-j .reloc -j .bbenv.* -j .bblogo.* -j .barebox_imd --output-target=$(TARGET)
 
 barebox.efi: $(KBUILD_BINARY) FORCE
 	$(call if_changed,objcopy)
-- 
2.51.0



