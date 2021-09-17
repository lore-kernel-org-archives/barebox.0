Delivery-date: Fri, 17 Sep 2021 19:43:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRHtU-0001Ns-OD
	for lore@lore.pengutronix.de; Fri, 17 Sep 2021 19:43:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRHtT-0006z1-Su
	for lore@pengutronix.de; Fri, 17 Sep 2021 19:43:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4FIN3k8NXUQYVTA5WvPgs6AgGPjrd/hD3+NR0eF37Qw=; b=y+jmFBCQS2h1Ry
	xCGQ/LQqyY4SLLl4E89YCXJnx5J1rdfBhOnhxh0MTlTZybzNa8tLufv1C5cxOVtnWmZxCHId4gkTL
	bhXbMaIMyy63oK2Q8H9ROJ7pOW21O8LuwP2DVvML22M95wpez+pkTVcd5k7XUH2aqm7uyUuuZp9+v
	PgZsOVVMZ+fR/x5id+q++z+rdVyXDbukldrllotDdC1vsYZ1qe76vN9yshjGzdzQfWWPTjt4ek/r3
	Uo9c97S+4jxPZgHutt/iuJk360fzkdd42TR5PElKuvTW2DpB+Rvtk1TFXNg75L8XT9m4jwTklaSZr
	bIkpQ4cIEOKf5gKdAGdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRHsB-00EkhX-UK; Fri, 17 Sep 2021 17:42:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRHs6-00Ekg7-OW
 for barebox@lists.infradead.org; Fri, 17 Sep 2021 17:42:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mRHrh-0006g1-G5; Fri, 17 Sep 2021 19:41:33 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mRHrg-0006ot-V1; Fri, 17 Sep 2021 19:41:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de, Trent Piepho <trent.piepho@igorinstitute.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Sep 2021 19:41:24 +0200
Message-Id: <20210917174127.23345-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_104158_845039_774FA2B5 
X-CRM114-Status: GOOD (  11.03  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] common: remove !SANDBOX dependency for target tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

d4aa01503348 ("common: add dependency !SANDBOX on target tools") and
later commits disabled building the target tools with sandbox, because
the build failed when they were enabled.

This has been fixed since then. Remove the limitation, so target tools
can be cross-compiled when using the ARCH=sandbox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 common/Kconfig | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index a9feae2ae866..222a438ee545 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -740,7 +740,6 @@ config IMD_TARGET
 
 config KERNEL_INSTALL_TARGET
 	bool
-	depends on !SANDBOX
 	prompt "Build kernel-install utility for the target"
 	help
 	  Enable this to compile the kernel-install script using the cross
@@ -983,7 +982,6 @@ config DEFAULT_ENVIRONMENT_PATH
 
 config BAREBOXENV_TARGET
 	bool
-	depends on !SANDBOX
 	prompt "build bareboxenv tool for target"
 	help
 	  'bareboxenv' is a tool to access the barebox environment from a running Linux
@@ -992,7 +990,6 @@ config BAREBOXENV_TARGET
 config BAREBOXCRC32_TARGET
 	bool
 	prompt "build bareboxcrc32 tool for target"
-	depends on !SANDBOX
 	help
 	  'bareboxcrc32' is a userspacetool to generate the crc32 checksums the same way
 	  barebox does. Say yes here to build it for the target.
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

