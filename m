Delivery-date: Thu, 13 Apr 2023 10:47:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmsbu-0021vY-Or
	for lore@lore.pengutronix.de; Thu, 13 Apr 2023 10:47:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmsbu-00053s-MA
	for lore@pengutronix.de; Thu, 13 Apr 2023 10:47:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4NeXKigrDfZ00U82XT6iAWLU7TOwXgIZYb1dBYorvy8=; b=ia+rCnD4UlGKU1A00qOTpFR5qE
	2iuNwUN5XxHFQkCrZZQ+omE8V7W9gqk+2Gq8TOBq8yM8atKmBp0Jjlsrdh/Pjq/bB/HHPkBFtj/3l
	U/eX0jmuj67mAlSIdO9LMwtQU6eFAsF0IfLV6kIalV1DiLPrSix4qzVNemja7w15pC5eGf3119ERu
	Wm2ZwjoNlEz4EWDXBtWLf8DjJhR3gXc5zZKBwrN5dTeVnIJm3J9SsUAtLRmVsP42CQZPoOplPINUg
	4tE5s9AiFHvqPFNP7ueyaInJTOOd3JFRQb+kyst6TD75kJEi1CBfkhcEujFVco7m/ExuRdZhL7lZL
	R/1XygcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmsab-005Ruk-19;
	Thu, 13 Apr 2023 08:45:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmsaZ-005RuK-04
	for barebox@lists.infradead.org;
	Thu, 13 Apr 2023 08:45:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pmsaV-0004vo-78; Thu, 13 Apr 2023 10:45:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmsaU-00Avaf-Im; Thu, 13 Apr 2023 10:45:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmsaT-005bMJ-TR; Thu, 13 Apr 2023 10:45:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	mol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Apr 2023 10:45:47 +0200
Message-Id: <20230413084547.1331906-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_014555_062260_5CBCC3BD 
X-CRM114-Status: GOOD (  11.48  )
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
Subject: [PATCH v2] kbuild: use printf instead of echo -e extension
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We are using echo -e, so the \n in the string being echo'd are
interpreted. As -e is not POSIX and dash doesn't provide it,
we use a strange /usr/bin/env echo -e construct hoping that
whatever non-builtin echo is first in the search path supports -e.

As the new lines are just used to separate CPP directives, we can
just pass the directives as $(CPP) flags. This has the same result,
but is potable and avoids NixOS complaining when building barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - drop echo -e eltogether after Sascha pointed out why it needs
    /usr/bin/env.

Tested with two fragments:
  - dts variable is defined for the DT it references
  - fragments are included (checked with #warning)
  - fragment change triggers rebuild
  - original DT change triggers rebuild
  - fragmentless case works ok
    
 scripts/Makefile.lib | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 4deaa5dfa73c..befd47ed6600 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -372,8 +372,8 @@ $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
 dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
 quiet_cmd_dtc = DTC     $@
 # For compatibility between make 4.2 and 4.3
-cmd_dtc = /usr/bin/env echo -e '$(pound)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(2),'$(pound)include "$(f)"\n') | \
-	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
+cmd_dtc = echo | $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) \
+	-D'$(subst -,_,$(*F))_dts=1' $(foreach f,$< $(2),-include '$(f)') - ; \
 	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
 		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
 		-i $(srctree)/dts/src/$(SRCARCH) \
-- 
2.39.2



