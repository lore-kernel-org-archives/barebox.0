Delivery-date: Mon, 24 Apr 2023 13:57:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqupK-00FXEI-K8
	for lore@lore.pengutronix.de; Mon, 24 Apr 2023 13:57:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqupK-0000r3-93
	for lore@pengutronix.de; Mon, 24 Apr 2023 13:57:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tW+JrPDz2gcGCyDEF9YAFyA8VvihDAWK1EeEQn06y2M=; b=JGUquU/Mq7sSo4GQQuDboa3XiV
	Po4iijuVM1oWIvxiZITTBsbFvwggCjnnmrMXE3aGAnovok5Si7QqYEVhT9nvrsNd3ds7zqfbHmBoG
	I3Zcc0R+GJyUdpwGQk5ZS3fGlI2BwoPJDECUmVHKmx6zrXom1XOrEXcPFJWvEwOvaUbkzDtIH2kaN
	MtZH3B2bM1/6eqGM8ywtCeM4AG6TpQfxsQ0HgULoYfAEI5gZdcdjFdqy2OCr2M1cdL8HiiQw2VyVd
	sckcUgKVbmenWmi+tXTZCaByD25+TVKEPJjwJk1o0RdXwxQUSPEad6TA0wT1uE2VNfbUPkYA/IWtf
	xdNUDxIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqunj-00GF7v-2w;
	Mon, 24 Apr 2023 11:56:11 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqung-00GF79-2x
	for barebox@lists.infradead.org;
	Mon, 24 Apr 2023 11:56:10 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 9E4F2FF80D;
	Mon, 24 Apr 2023 11:56:03 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Apr 2023 13:55:48 +0200
Message-Id: <20230424115548.114858-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
In-Reply-To: <20230424115548.114858-1-ahmad@a3f.at>
References: <20230424115548.114858-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_045609_106793_88D56B25 
X-CRM114-Status: UNSURE (   9.13  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] treewide: use non-executable stack annotations for blobs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We are building the non-sandbox platforms with -z noexecstack, because
the ELF section attributes don't matter. This is different for sandbox,
where we compile assembly files directly only for embedding blobs.
This currently yields a build warning:

  binutils-2.39/bin/ld: warning: defaultenv/defaultenv-2-reboot-mode.bbenv.gz.o:
          missing .note.GNU-stack section implies executable stack
  binutils-2.39/bin/ld: NOTE: This behaviour is deprecated and will be removed
          in a future version of the linker

Let's add the non-executable stack annotations, so sandbox may run with
non-executable stack. This way we are left with a single linker
warning that needs to be resolved:

   binutils-2.39/bin/ld: warning: barebox has a LOAD segment with RWX permissions

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 lib/logo/Makefile    | 1 +
 scripts/Makefile.lib | 2 ++
 scripts/gen-dtb-s    | 1 +
 scripts/gen-dtbo-s   | 1 +
 4 files changed, 5 insertions(+)

diff --git a/lib/logo/Makefile b/lib/logo/Makefile
index 382701fb365c..9c14105e88bf 100644
--- a/lib/logo/Makefile
+++ b/lib/logo/Makefile
@@ -26,6 +26,7 @@ quiet_cmd_logo_S = LOGO.S  $@
 cmd_logo_S =							\
 (								\
 	echo '\#include <asm/barebox.lds.h>';			\
+	echo '.section .note.GNU-stack,"",%progbits';		\
 	echo '.section .bblogo.rodata.$(subst -,_,$(*F)),"a"';	\
 	echo '.balign STRUCT_ALIGNMENT';			\
 	echo '.global __bblogo_$(subst -,_,$(*F))_start';	\
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 51beff56aeb8..90cfa579e5d5 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -391,6 +391,7 @@ quiet_cmd_env_S = ENV.S   $@
 cmd_env_S =							\
 (								\
 	echo '\#include <asm/barebox.lds.h>';			\
+	echo '.section .note.GNU-stack,"",%progbits';		\
 	echo '.section .bbenv.rodata.$(subst -,_,$(*F)),"a"';	\
 	echo '.balign STRUCT_ALIGNMENT';			\
 	echo '.global __bbenv_$(subst -,_,$(*F))_start';	\
@@ -540,6 +541,7 @@ quiet_cmd_imximage__S_dcd= DCD_S   $@
 cmd_imximage_S_dcd=						\
 (								\
 	echo '\#include <asm/barebox.lds.h>';			\
+	echo '.section .note.GNU-stack,"",%progbits';		\
 	echo '.balign STRUCT_ALIGNMENT';			\
 	echo '.global $(subst -,_,$(*F))_start';		\
 	echo '$(subst -,_,$(*F))_start:';			\
diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index f6fa1525933e..d6fbdd5aaf8a 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -6,6 +6,7 @@ imd=$3
 
 echo "#include <asm/barebox.lds.h>"
 echo "#include <asm-generic/pointer.h>"
+echo ".section .note.GNU-stack,\"\",%progbits"
 
 le32() {
 	printf ".byte 0x%02x, 0x%02x, 0x%02x, 0x%02x\n" \
diff --git a/scripts/gen-dtbo-s b/scripts/gen-dtbo-s
index 06f78609ed28..a7e272a0890d 100755
--- a/scripts/gen-dtbo-s
+++ b/scripts/gen-dtbo-s
@@ -4,6 +4,7 @@ name=$1
 dtbo=$2
 
 echo "#include <asm/barebox.lds.h>"
+echo ".section .note.GNU-stack,\"\",%progbits"
 
 echo ".section .dtb.rodata.${name}_dtbo,\"a\""
 echo ".balign STRUCT_ALIGNMENT"
-- 
2.38.4



