Delivery-date: Fri, 16 Jun 2023 14:33:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA8dW-0090QX-I7
	for lore@lore.pengutronix.de; Fri, 16 Jun 2023 14:33:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA8dU-0006YJ-1C
	for lore@pengutronix.de; Fri, 16 Jun 2023 14:33:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lIH8/tVvRrfs5bB9leUEWfsthaVUMsQRCjKKW4Xexhw=; b=Zij9HaEWsjUUztHvOTTKWKAG/q
	4aF8+UXuCtuvWYHWIhzJrIzHGiJLmnZu6LianeAucvHzxR3XU/MIQSUUjySV+fR6gz7uvcMkxRd30
	AS2WPNlIrs23BMznQ9S5fr5UQzWSGpCW6k/j002TKaarf3P1A+jO6WVVKHkSi0Aoeg87hGIyox3xH
	iN2kVkNdTd71B5X2two0asxLux9AtxUkDB388rbVLuX4Eus7VG88bpUEuaZBwBnolOLTdTmIO0GdO
	jWFJekSyvOxwHNoBFZh8Z60SDiWyHuC1ADgruAvOMs6Pnh4J2pQ4MgR2Xm5qItKH/6QRvW4m81VsD
	dKA+wOJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA8cN-000ZeS-0k;
	Fri, 16 Jun 2023 12:31:55 +0000
Received: from smtp81.iad3a.emailsrvr.com ([173.203.187.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA8cK-000Zdv-0w
	for barebox@lists.infradead.org;
	Fri, 16 Jun 2023 12:31:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20221208-6x11dpa4; t=1686918709;
	bh=RMFpAXcJyi5E0JNHlJQrEr0D9EZzE6MGvqjFjJ4aCz0=;
	h=From:To:Subject:Date:From;
	b=dtaR5/xE8SOBpPUg+pwfdP6vI3yUYPQaQWlvTkY4CuC18gCLg6f9BHlEK2tQtjBGM
	 TNYGN0mLBqY1SGLrMw88HMlPVIwg9wAwAJpXXlWJBDdSYlAhJcIELKBLYx9d0Nn8/I
	 SeuhEW5i9NNxKpLwQrWVd7nQkQcfVmNzgHKBjCr0=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp3.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id DA06F23AAD;
	Fri, 16 Jun 2023 08:31:48 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>
Date: Fri, 16 Jun 2023 13:31:36 +0100
Message-Id: <20230616123136.15656-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615155738.39998-1-abbotti@mev.co.uk>
References: <20230615155738.39998-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Classification-ID: 24d6dca7-41cb-42fc-8485-cada4106b7ca-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_053152_407750_5E7F3508 
X-CRM114-Status: GOOD (  12.05  )
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
Subject: [PATCH v3] scripts: socfpga_import_preloader: Translate DOS line endings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If the handoff files were generated on a Windows system, they will have
DOS line endings (CRLF).  The `indent` program (with the options used by
the script) does a lousy job tidying up those files, leaving ASCII CR
characters embedded in the lines.  This is particularly bad for array
initializers that have one value per line, because they all end up on a
single line with embedded ASCII CR characters between each value.

Add an initial `dos2unix` command to `copy_source()` to change the DOS
line endings (CRLF) to Unix line endings (LF).

Also output a message before running `unifdef` and fix the spelling of
"paths" in one of the other messages.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
v2: Corrected tabs in echoed output.
v3: Use dos2unix instead of sed, as suggested by Ahmed Fatoum.  Remove
    the corresponding echo command because dos2unix is verbose enough
    already!
---
 scripts/socfpga_import_preloader | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
index bd54e1b913..fb8270f5d3 100755
--- a/scripts/socfpga_import_preloader
+++ b/scripts/socfpga_import_preloader
@@ -79,6 +79,9 @@ copy_source() {
 
 	cp $src $tgt
 
+	dos2unix $tgt
+
+	echo "	Fixing conditional compilation..."
 	unifdef -D HCX_COMPAT_MODE=1 -D ENABLE_INST_ROM_WRITE=1 $tgt -o $tgt
 
 	echo "	Fixing extern/static keywords..."
@@ -99,7 +102,7 @@ copy_source() {
 	sed -i 's/alt_8/int8_t/g' $tgt
 	sed -i 's/#include "alt_types.h"//g' $tgt
 
-	echo "	Fixing include pathes..."
+	echo "	Fixing include paths..."
 	# Fix include pathes
 	sed -i 's/#include <iocsr_config_cyclone5.h>/#include <mach\/cyclone5-scan-manager.h>/g' $tgt
 	sed -i 's/#include <pinmux_config.h>/#include <common.h>/g' $tgt
-- 
2.39.2



