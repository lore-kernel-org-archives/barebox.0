Delivery-date: Thu, 13 Apr 2023 11:45:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmtWK-0025BR-1X
	for lore@lore.pengutronix.de; Thu, 13 Apr 2023 11:45:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmtWJ-0006VC-Vn
	for lore@pengutronix.de; Thu, 13 Apr 2023 11:45:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GbuB4Aa13nMgSVgPUiyvDQdeHR6kxGPhoHlgRdwSAu4=; b=jfDd5cBevh4CoqlcLPGBUg9hKS
	dZGBT0HPTCiL5QukgXHWbMKdRXTIrgF6nFFevzE4k/mnsIe6c7YIAlfXZcynxMRtctHZIUIyblPcP
	xmn3fVboVbvyRX0virVaANuntE0NxqIWPaShkarFQOYz2OCv/pUyGBCVF3r8z91nyqU/SOZsM9eRa
	/uG3590iOr0YCtFDdzP3Oun1t2E4T+gItdJWPJfHxWZJc8sBAT0xTUUI2fsp99SqABqhwpE0k5MNm
	xdrFinwuOaVvKp05mkh6hgYE1qaY7rvx9vQ3d0TfJ4b7M8vBgbeUz0tYV4sj/NzX1dgyOPUloiAAU
	ofDoN+Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmtVC-005fYf-38;
	Thu, 13 Apr 2023 09:44:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmtVA-005fY6-1u
	for barebox@lists.infradead.org;
	Thu, 13 Apr 2023 09:44:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pmtV7-0006EM-Ok; Thu, 13 Apr 2023 11:44:21 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmtV7-00AwBa-3k; Thu, 13 Apr 2023 11:44:21 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmtV6-0062Cr-Iq; Thu, 13 Apr 2023 11:44:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	mol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Apr 2023 11:43:15 +0200
Message-Id: <20230413094315.1432917-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_024424_630884_722CC8B2 
X-CRM114-Status: GOOD (  10.89  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3] kbuild: drop reliance on echo -e extension for DT fragments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We are using echo -e, so the \n in the string being echo'd are
interpreted. As -e is not POSIX and dash doesn't provide it,
we use a strange /usr/bin/env echo -e construct hoping that
whatever non-builtin echo is first in the search path supports -e.

As the new lines are just used to separate CPP directives, we can
just pass the directives as $(CPP) flags. This has the same result,
but is portable and avoids NixOS complaining when building barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - drop comment around $(pound) use, which no longer applies
  - reword commit message title and fix typo in body (Sascha)
  - use cpp /dev/null instead of empty echo | cpp (Sascha)
v1 -> v2:
  - drop echo -e eltogether after Sascha pointed out why it needs
    /usr/bin/env.
---
 scripts/Makefile.lib | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 4deaa5dfa73c..51beff56aeb8 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -371,9 +371,8 @@ $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
 
 dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
 quiet_cmd_dtc = DTC     $@
-# For compatibility between make 4.2 and 4.3
-cmd_dtc = /usr/bin/env echo -e '$(pound)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(2),'$(pound)include "$(f)"\n') | \
-	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
+cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) \
+	-D'$(subst -,_,$(*F))_dts=1' $(foreach f,$< $(2),-include '$(f)') /dev/null ; \
 	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
 		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
 		-i $(srctree)/dts/src/$(SRCARCH) \
-- 
2.39.2



