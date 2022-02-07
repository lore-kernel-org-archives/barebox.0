Delivery-date: Mon, 07 Feb 2022 14:51:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH4QH-008Iqg-TC
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 14:51:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH4QG-0001Db-NG
	for lore@pengutronix.de; Mon, 07 Feb 2022 14:51:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QW65g1xtlLaX4cYCPmygYE/cRa+UbZ3X/gemVRJZTGE=; b=z4Peetcy3n1GOe
	xfjHydI491HV7KCdllvEusLWXvoVXCMcYxMeTfbz3qzKXpC+09MrzXZ02+tsgVihh5QdbNGVjDnUl
	UbkAO12j+j5Z1/XsI+vEZQj4I6Jdy2TfkCREorck1ym91/G6PpgZUgPh7iNwz6vQnxXwzIch63Muu
	M1uMgQc4VOKOMx3yYmrWcSgyuXuP6Xleqi6FyvWeHjDEaQkfz7MeybYghFHw7R3wyjzM71KQAZ+Xa
	/b5PuyfjTt4SiTYbohB7L5Wu/J+bjeEmxdKafA24yeLstVQtmLKtzbQjoFvVur5nwXTmpWvZLdOnQ
	UdI1INk5GLw7DujXCR8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH4P3-00ALfO-DB; Mon, 07 Feb 2022 13:50:01 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH4Ox-00ALdf-0r
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 13:49:56 +0000
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp
 [133.32.232.101]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id 217Dncsv023992;
 Mon, 7 Feb 2022 22:49:38 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 217Dncsv023992
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1644241778;
 bh=qAI6AGVEMhxyhFbjisBxYpyB1V8tM1djid07QmLr+zc=;
 h=From:To:Cc:Subject:Date:From;
 b=1gK8oCEXpBY+m2zDx2HDvTMLjQAi3unF1y1BtO8yFgnlKogtf1aZrbjGQ3Uj3wEW2
 hyHhAPY+7a0Is3Nx1jq8zzXT+pGG5muEAicq9z4kXKts/fmRjf1bk7VAhoUx14VfGD
 0SaiQKhrI6F/FeF5xmgITqcH207pOlhv0dD5BSqweC7NohKMAIf2wD69BqroDyLwQT
 PUXbPfB9OlRy5w4Yh3sDllDG2aov9RfAfyONVPs12cp4qhsBJYdMbaCDPRl80t0U0k
 NquwvMqlqCOyZHQUay7JJcHPCRXtDuCcQ16e2h6h+SE2PmGAXXCUN0LJy9P2jfUlKT
 XE9lWgyOCVLyQ==
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon,  7 Feb 2022 22:49:23 +0900
Message-Id: <20220207134923.1775891-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_054955_309549_BB40A8F8 
X-CRM114-Status: UNSURE (   6.60  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] kbuild: replace $(H) with $(pound)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

scripts/Kbuild.include defines 'pound', which is equivalent to 'H'.

  pound := \#

Replace $(H) with $(pound), and remove the 'H' definition.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile.lib | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 13b1789c0..d981d48a2 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -339,8 +339,7 @@ $(obj)/%.dtb.S: $(obj)/%.dtb $(srctree)/scripts/gen-dtb-s FORCE
 dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
 quiet_cmd_dtc = DTC     $@
 # For compatibility between make 4.2 and 4.3
-H := \#
-cmd_dtc = /bin/echo -e '$(H)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(dts-frags),'$(H)include "$(f)"\n') | \
+cmd_dtc = /bin/echo -e '$(pound)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(dts-frags),'$(pound)include "$(f)"\n') | \
 	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
 	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
 		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

