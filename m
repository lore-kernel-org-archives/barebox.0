Delivery-date: Fri, 16 Jun 2023 16:03:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qAA3M-0094sE-56
	for lore@lore.pengutronix.de; Fri, 16 Jun 2023 16:03:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qAA3J-0003nc-N6
	for lore@pengutronix.de; Fri, 16 Jun 2023 16:03:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AzA9KFDc8mn5xnFdvEFHg7+04RYicCZ+7mrdAVjfRtI=; b=2wT7mXnNRfhFN7rnxPvcehSIR4
	xYGlcFE2dMp/wXWF7HnPbY0pT2CFcig9dNU8/4bCbvMPAQAS8WR3vGnrmjNCH/oAYMWArQJA4Tk9Q
	aZEvuKlAQ/fiFtSBchpoX+yfgP9j4BPBMRS7L+7HcXAX4atFR74My5mk6WB6nnAGAXjeiYIP0G4fz
	CQSXhM8ogixvyfjEmIbwJxxxF2UPR1fs3elV4B73ye7M+QmxdP5/vmevplWL1wwtJITUfnOit3dca
	km5ZZ07xVCpoIZTLoCAWoohJtF2c+QJ+p5Sq+tm1DMyh7qmoc7R50ns423v0BBVKCPFd/y434kaIb
	LchrpmXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAA1y-000kPk-1y;
	Fri, 16 Jun 2023 14:02:26 +0000
Received: from smtp124.iad3a.emailsrvr.com ([173.203.187.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAA1v-000kP2-1f
	for barebox@lists.infradead.org;
	Fri, 16 Jun 2023 14:02:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20221208-6x11dpa4; t=1686924141;
	bh=8eyUIlxlx5gmGRBov4nkAo0YtUDxHNzhkbkmp+sFJrU=;
	h=From:To:Subject:Date:From;
	b=ZlvhBWsEXGKnateXaXuBWDxyEcFNkDB2xtYAMRnVCFtlYGhHXLyL5rn148bNEVsEr
	 Y6BC4JTwnrokuOsDbKmY8na+RkoCCAIJklc9Ny+gqs+vUd1k7VZSpexwG8yPvLRG3N
	 1vqx4UQI0bjjgVIWk9cGHbDRv3Ft8orREKecSUGw=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp32.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id A9071427C;
	Fri, 16 Jun 2023 10:02:20 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>
Date: Fri, 16 Jun 2023 15:02:11 +0100
Message-Id: <20230616140211.31250-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Classification-ID: 9c0a5730-7bef-4eb7-8882-321bd64013b4-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_070223_812019_3AAADE17 
X-CRM114-Status: GOOD (  11.88  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts: socfpga_import_preloader: Update include paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit ac1404f77491 ("ARM: socfpga: Move mach header files to
include/mach/socfpga") moved socfpga specific mach header files to
"include/mach/socfpga" and changed the `#include` directives in the
source code accordingly.  However, the files imported by the
`socfpga_import_preloader` script are still being fixed up with the old
`#include` directives.  Update the fixing up of the include paths in
the scripts `copy_source()` function to use the new `#include`
directives.

Fixes: ac1404f77491 ("ARM: socfpga: Move mach header files to include/mach/socfpga")
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 scripts/socfpga_import_preloader | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
index bd54e1b913..4f45a51bab 100755
--- a/scripts/socfpga_import_preloader
+++ b/scripts/socfpga_import_preloader
@@ -101,7 +101,7 @@ copy_source() {
 
 	echo "	Fixing include pathes..."
 	# Fix include pathes
-	sed -i 's/#include <iocsr_config_cyclone5.h>/#include <mach\/cyclone5-scan-manager.h>/g' $tgt
+	sed -i 's/#include <iocsr_config_cyclone5.h>/#include <mach\/socfpga\/cyclone5-scan-manager.h>/g' $tgt
 	sed -i 's/#include <pinmux_config.h>/#include <common.h>/g' $tgt
 	sed -i 's/#include "sequencer_auto.h"//g' $tgt
 	sed -i 's/#include "sequencer_defines.h"//g' $tgt
-- 
2.39.2



