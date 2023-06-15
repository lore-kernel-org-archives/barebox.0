Delivery-date: Thu, 15 Jun 2023 15:56:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9nT6-0084BZ-NP
	for lore@lore.pengutronix.de; Thu, 15 Jun 2023 15:56:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9nT4-0002l9-46
	for lore@pengutronix.de; Thu, 15 Jun 2023 15:56:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Axe3JQzXI3W1PZBX2ITkz7sw1QSyQYWD8iKo7WE6iuk=; b=qS1Y3aLGwPwWTzJJ2RONrlBPYm
	e+FQevtIJJxoj89ULGavTu1MqKb7OTwZOToyqdq9fByf298LH3I9zFJiTxo5gjk5TTezA3U7d2cxo
	MXe7qnph65q1LbXczCQCWztHYLJkcnwEYbETh/7/5swfwwkJJY1dOlGqx6WPUuyMl5frJXtMf05yb
	l2Vv/q3l8XWfU3NWYAiZGu5X71cR/50fl1VKbLgrMP8T1rfKjPTH3f365zvhe/R21hkWdqpj+C1q7
	OGHP8XYldXQvr1LEdH7tbDBhJ04YiOdrLdQ/DYUO7WTJOD9p6/p2Hwyd55zLsvRMDz320j4ojquUT
	giwNpOgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9nRw-00F46N-38;
	Thu, 15 Jun 2023 13:55:44 +0000
Received: from smtp115.iad3b.emailsrvr.com ([146.20.161.115])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9nRt-00F45O-2p
	for barebox@lists.infradead.org;
	Thu, 15 Jun 2023 13:55:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20221208-6x11dpa4; t=1686837339;
	bh=RER7pY+RyGdX3dWJpBAUINuvp0mmwr6VS+4ns9FTq6A=;
	h=From:To:Subject:Date:From;
	b=HdwgVEfu6YsCPjQf+3EjMAXzJgNHBrWqFJdEguti5RZ5BFQxKs+mauJO68MlmAgV6
	 ae0EKDMl5NbyDmcJBACjGZRC/h6KV4D9AnKaSTumxa2UuNlPgD7ksoBSvJPbJ8m8VE
	 g24U2PDoMQ0XhY+iwP3568zGH335YtbkF3+n/f/k=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp7.relay.iad3b.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 8542E600EF;
	Thu, 15 Jun 2023 09:55:38 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>
Date: Thu, 15 Jun 2023 14:55:26 +0100
Message-Id: <20230615135526.30878-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Classification-ID: b3b3fb12-bef0-4058-ab69-7f86da9eca9e-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_065542_058872_A271A445 
X-CRM114-Status: GOOD (  10.53  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts: socfpga_import_preloader: Translate DOS line endings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If the handoff files were generated on a Windows system, they will have
DOS line endings.  The `indent` program (with the options used by the
script) does a lousy job tidying up those files, leaving ASCII CR
characters embedded in the lines.  This is particularly bad for array
initializers that have one value per line, because they all end up on a
single line with embedded ASCII CR characters between each value.

Add an initial `sed` command to `copy_source()` to match and remove an
ASCII CR character from the end of each input line.

Also output a message before running `unifdef` and fix the spelling of
"paths" in one of the other messages.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 scripts/socfpga_import_preloader | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
index bd54e1b913..156382009e 100755
--- a/scripts/socfpga_import_preloader
+++ b/scripts/socfpga_import_preloader
@@ -79,6 +79,10 @@ copy_source() {
 
 	cp $src $tgt
 
+	echo "  Translating DOS line endings..."
+	sed -i "s/`echo -e '\r'`$//" $tgt
+
+	echo "  Fixing conditional compilation..."
 	unifdef -D HCX_COMPAT_MODE=1 -D ENABLE_INST_ROM_WRITE=1 $tgt -o $tgt
 
 	echo "	Fixing extern/static keywords..."
@@ -99,7 +103,7 @@ copy_source() {
 	sed -i 's/alt_8/int8_t/g' $tgt
 	sed -i 's/#include "alt_types.h"//g' $tgt
 
-	echo "	Fixing include pathes..."
+	echo "	Fixing include paths..."
 	# Fix include pathes
 	sed -i 's/#include <iocsr_config_cyclone5.h>/#include <mach\/cyclone5-scan-manager.h>/g' $tgt
 	sed -i 's/#include <pinmux_config.h>/#include <common.h>/g' $tgt
-- 
2.39.2



