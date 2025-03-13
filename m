Delivery-date: Thu, 13 Mar 2025 08:50:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdL0-00DTfe-1I
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:50:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdKz-0000Lb-5f
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:50:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CUe1LlE3JDNf3md8622VTgs2o6QpOfSlBMAOnBN2zmw=; b=Vza/n3eXVwWBzZuKhgAyYCJ7JN
	JZ2nXWCfv3X7p5NkN+kaOzlCEow2Ma4ZKkQ6cL+HZt99cbT4qI8J36Acik0JIKsiN8X89iDHXRAc+
	adBSX+ju2XqrRKLkyUrfLPi5LPbVMQE1qaPYmIsn/Y0DynDy7m9KYQGXC8OoI/OjUWdDGyzOElSHT
	akIicJZEqeS3qGZRCHaFTZG6c6RSP0R9fBsilN+s5cDg1QaDi8DBSv342z4Prz1y6zz6uAPTKoqt0
	4DDCdGXUdxW9DZkEmaedq4aLnQxRP9zt0xZkdSPcPINUGOmB9B4a1qurJTvpJfKOfRgAuI0JXAbNG
	XU39v7Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdKc-0000000ARIo-0uxf;
	Thu, 13 Mar 2025 07:50:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsd5r-0000000AOXz-2pEX
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:35:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-0005mO-8s; Thu, 13 Mar 2025 08:34:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-005Uvb-0C;
	Thu, 13 Mar 2025 08:34:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5h-003pwb-37;
	Thu, 13 Mar 2025 08:34:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:34:24 +0100
Message-Id: <20250313073445.764875-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313073445.764875-1-a.fatoum@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_003503_709273_7DADF254 
X-CRM114-Status: GOOD (  11.50  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/22] kbuild: add support for clang-analyzer with scan-build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

scan-build will set a number of environment variables, including CC and
CCC_ANALYZER_HTML and the build command passed as its argument.

When that build system uses CC as a compiler, scan-build will capture
the arguments used and run clang-analyzer on all these files in addition
to the normal compiler.

This doesn't current work with barebox as barebox' Kbuild ignores the CC
variable in the environment. Fix this by collecting into ENVCC the CC
environment variable and using it to override CC whenever it is set in
addition to CCC_ANALYZER_HTML.

Example usage:

  export LLVM=-19
  scan-build${LLVM} --use-cc=clang${LLVM} make

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Makefile b/Makefile
index f3e5b44d5566..9ef07ba34457 100644
--- a/Makefile
+++ b/Makefile
@@ -410,6 +410,8 @@ KBUILD_HOSTCXXFLAGS := -Wall -O2 $(HOST_LFS_CFLAGS) $(HOSTCXXFLAGS)
 KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
 KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
 
+ENVCC		:= $(CC)
+
 # Make variables (CC, etc...)
 CPP		= $(CC) -E
 ifneq ($(LLVM),)
@@ -574,6 +576,13 @@ ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
 include $(srctree)/scripts/Makefile.clang
 endif
 
+# allow scan-build to override the used compiler
+ifneq ($(CCC_ANALYZER_HTML),)
+ifneq ($(ENVCC),)
+CC = $(ENVCC)
+endif
+endif
+
 ifdef config-build
 # ===========================================================================
 # *config targets only - make sure prerequisites are updated, and descend
-- 
2.39.5



