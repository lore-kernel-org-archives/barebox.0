Delivery-date: Fri, 16 Jun 2023 17:52:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qABkQ-009CUA-LI
	for lore@lore.pengutronix.de; Fri, 16 Jun 2023 17:52:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qABkO-0000YR-6N
	for lore@pengutronix.de; Fri, 16 Jun 2023 17:52:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=br+hDadu/yWabetUswz7rxLHYUSL3YaqF4nEwWh0d6Y=; b=hysgqVj5NPgjXrfmm8hUBPu5fO
	t6H4GCIw3xMZ31tz5Qe8JAT3rQcn+wTy4tzEXuXsZZBUGacj+YgcVLZ9bA+gytP+NG0tIB4qOy9yJ
	/v6L4E7QoT98W6h5vcYGdqE7nBLzoN1SV8GeBemkps5rmZtM6WD7q6BLj3W/Mgl9A6CibeS4HbYgZ
	s/HAHdLR6MEhyrt4SxnU8WOtFlc/2+xFcZEquQWAKhBjc2+VSDJYFTG+LoGuzpXZHLfOvUjOkr87e
	CPYiMiRBBds8OISzhSIZ3Zdw9kFSy0/Ay1VgtWOYxi25Lk4+5N95xMgEiFGj87hcmQNsbf5nuGJ+9
	r3r/IAqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qABj0-0010hH-0y;
	Fri, 16 Jun 2023 15:50:58 +0000
Received: from smtp125.iad3b.emailsrvr.com ([146.20.161.125])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qABix-0010gh-0i
	for barebox@lists.infradead.org;
	Fri, 16 Jun 2023 15:50:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20221208-6x11dpa4; t=1686930650;
	bh=PldN20Fx+2NTQcRlezQbNIWGPjus7b7hLeMbk36ywBo=;
	h=From:To:Subject:Date:From;
	b=sA9rsrxPkYHqnDgfWTADire3JIJZR8NlOLFI9jZgTkp47Q/IzaEfycRCbAEptwABn
	 ilwt3jxaS/+UWd/W8CRSC2gdC/LXbJgKQxLFsT1cN4Vea3DWsJtsFZy8DJgzQMsGL4
	 orx82pw8iKlYZjy08IwK1phWTLPUIw8PEdtC8AuM=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp24.relay.iad3b.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 69B7C40078;
	Fri, 16 Jun 2023 11:50:50 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>
Date: Fri, 16 Jun 2023 16:50:42 +0100
Message-Id: <20230616155042.37958-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Classification-ID: b781d87b-ac52-4d28-aa7d-6fa159c608aa-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_085055_575964_6B78FB91 
X-CRM114-Status: UNSURE (   8.43  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts: socfpga_get_sequencer: Update file paths and include paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit ac1404f77491 ("ARM: socfpga: Move mach header files to
include/mach/socfpga") moved socfpga specific mach header files to
"include/mach/socfpga" and changed the `#include` directives in the
source code accordingly.  Update the `socfpga_get_sequencer` script to
deal with those changes.

Fixes: ac1404f77491 ("ARM: socfpga: Move mach header files to include/mach/socfpga")
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 scripts/socfpga_get_sequencer | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/scripts/socfpga_get_sequencer b/scripts/socfpga_get_sequencer
index 5405bfa6ba..d21791eee9 100755
--- a/scripts/socfpga_get_sequencer
+++ b/scripts/socfpga_get_sequencer
@@ -43,7 +43,7 @@ copy_source() {
 
 	echo "	Fixing include paths..."
 	# Fix include pathes
-	sed -i 's/#include <sdram.h>/#include <mach\/cyclone5-sdram.h>/g' $tgt
+	sed -i 's/#include <sdram.h>/#include <mach\/socfpga\/cyclone5-sdram.h>/g' $tgt
 	sed -i 's/#include "sequencer_auto.h"//g' $tgt
 	sed -i 's/#include "sequencer.h"/#include "cyclone5-sequencer.h"/g' $tgt
 
@@ -54,7 +54,7 @@ copy_source() {
 	sed -i 's/[ \t]\+$//' $tgt
 
 	echo "  Running coccinelle cleanups..."
-	spatch -sp_file scripts/coccinelle/misc/altera_sequencer.cocci -in_place arch/arm/mach-socfpga/include/mach
+	spatch -sp_file scripts/coccinelle/misc/altera_sequencer.cocci -in_place include/mach/socfpga
 
 	echo "  Cleanup header..."
 	sed -i 's/^static void rw_mgr_mem_calibrate_eye_diag_aid(void);$//g' $tgt
@@ -65,20 +65,20 @@ copy_source() {
 	sed -i 's/^static void rw_mgr_decr_vfifo_auto(uint32_t grp);$//g' $tgt
 }
 
-copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.c arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
-sed -i 's/static int sdram_calibration(void)/static int socfpga_mem_calibration(void)/g' arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
+copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.c include/mach/socfpga/cyclone5-sequencer.c
+sed -i 's/static int sdram_calibration(void)/static int socfpga_mem_calibration(void)/g' include/mach/socfpga/cyclone5-sequencer.c
 
-copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.h arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.h
-copy_source ${ubootsrc}/board/altera/socfpga/sdram/tclrpt.h arch/arm/mach-socfpga/include/mach/tclrpt.h
-copy_source ${ubootsrc}/board/altera/socfpga/sdram/sdram_io.h arch/arm/mach-socfpga/include/mach/sdram_io.h
-cat <<'EOF' >> arch/arm/mach-socfpga/include/mach/sdram_io.h
+copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.h include/mach/socfpga/cyclone5-sequencer.h
+copy_source ${ubootsrc}/board/altera/socfpga/sdram/tclrpt.h include/mach/socfpga/tclrpt.h
+copy_source ${ubootsrc}/board/altera/socfpga/sdram/sdram_io.h include/mach/socfpga/sdram_io.h
+cat <<'EOF' >> include/mach/socfpga/sdram_io.h
 	#define write_register(BASE, OFFSET, DATA) \
 		writel(DATA, ((BASE) + (OFFSET)))
 	#define read_register(BASE, OFFSET) \
 		readl((BASE) + (OFFSET))
 	#define HPS_SDR_BASE 0xffc20000
 EOF
-copy_source ${ubootsrc}/board/altera/socfpga/sdram/system.h arch/arm/mach-socfpga/include/mach/system.h
+copy_source ${ubootsrc}/board/altera/socfpga/sdram/system.h include/mach/socfpga/system.h
 
 echo "DONE"
 
-- 
2.39.2



