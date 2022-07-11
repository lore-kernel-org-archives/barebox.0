Delivery-date: Mon, 11 Jul 2022 15:17:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAtI9-002bZ7-4R
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 15:17:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAtI7-000679-5g
	for lore@pengutronix.de; Mon, 11 Jul 2022 15:17:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TLXPCkKLvSiD+o093rrfW1om6BeSfKZVqnd3dtxdzic=; b=AcLYbM7CKUqQGk
	ae6ha3TPPIMKHAytbQcC5hRrQrLLDuiwbYRpNxioCd/spEIffpiQ/32EPPdi88+bfZJSQNGDciCEK
	ZIjHwEnZYNid9vpj71ISvP5B5ghU4LA2vBydQ3iG7Z12/Fyz3A7n9nHSIyxuaqWnwiB9rDV+rP5GT
	BdMv8qxi2u//AQbzui0Tb04jZUFCU1oifD/bRX1IvOnIqNwVCzwfrUZw4Scgh6xUZXuicTnrSUk49
	kfxzo1fRHE2sUxAy/vt99Rtp/4QkXKTs3whJA1cKB/F38Tw198qrD4On2FsrQssYZq9QQgt5PP0rP
	lOj7ws4eQlaP2XWHlehA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAtGq-001qAN-77; Mon, 11 Jul 2022 13:16:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAtGd-001q4I-8K
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 13:16:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oAtGZ-0005kd-HN; Mon, 11 Jul 2022 15:15:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oAtGY-000Jr2-RE; Mon, 11 Jul 2022 15:15:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oAtGY-008u4h-9O; Mon, 11 Jul 2022 15:15:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 11 Jul 2022 15:15:54 +0200
Message-Id: <20220711131556.2122028-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_061603_311185_66813049 
X-CRM114-Status: GOOD (  11.82  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] kbuild: gen-dtb-s: refactor to allow different compression methods
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We unconditonally use LZO for __dtb_z symbols when
CONFIG_USE_COMPRESSED_DTB=y. Refactor the code to allow different
compression methods. The immediate benefit is allowing LZ4 as an
alternative, as lzop is dormant and in future, we may want to reuse the
same compression method used for barebox proper for the device tree as
well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig       |  6 +++++-
 scripts/Makefile.lib |  2 +-
 scripts/gen-dtb-s    | 18 +++++++++++++++---
 3 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index f7a6a96e877c..076fe455f8ac 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -45,7 +45,11 @@ config USE_COMPRESSED_DTB
 	bool
 	depends on ARM || RISCV
 	select UNCOMPRESS
-	select LZO_DECOMPRESS
+	select LZO_DECOMPRESS if DTB_COMPRESSION = "lzo"
+
+config DTB_COMPRESSION
+	string
+	default "lzo"
 
 config FILETYPE
 	bool
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index a830364a8bab..18abeebdc0a9 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -332,7 +332,7 @@ endif
 
 # Generate an assembly file to wrap the output of the device tree compiler
 quiet_cmd_dt_S_dtb = DTB     $@
-cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD) > $@
+cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD) $(CONFIG_DTB_COMPRESSION) > $@
 $(obj)/%.dtb.S: $(obj)/%.dtb $(srctree)/scripts/gen-dtb-s FORCE
 	$(call if_changed,dt_S_dtb)
 
diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 1027db28044f..da0b593da4eb 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -3,6 +3,7 @@
 name=$1
 dtb=$2
 imd=$3
+compression=$4
 
 echo "#include <asm-generic/barebox.lds.h>"
 
@@ -51,11 +52,22 @@ echo "__dtb_${name}_end:"
 echo ".global __dtb_${name}_end"
 echo ".balign STRUCT_ALIGNMENT"
 
-lzop -f -9 $dtb -o $dtb.lzo
+case $compression in
+	none)
+		exit 0
+		;;
+	lzo)
+		lzop -f -9 $dtb -o $dtb.$compression
+		;;
+	*)
+		echo Unsupported compression algorithm: $compression >&2
+		exit 1
+		;;
+esac
 if [ $? != 0 ]; then
 	exit 1
 fi
-compressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb.lzo)
+compressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb.$compression)
 uncompressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb)
 
 echo "#ifdef CONFIG_USE_COMPRESSED_DTB"
@@ -66,7 +78,7 @@ echo "__dtb_z_${name}_start:"
 printf ".int 0x%08x\n"  0x7b66bcbd
 printf ".int 0x%08x\n"  $compressed
 printf ".int 0x%08x\n"  $uncompressed
-echo ".incbin \"$dtb.lzo\""
+echo ".incbin \"$dtb.$compression\""
 echo "__dtb_z_${name}_end:"
 echo ".global __dtb_z_${name}_end"
 echo ".balign STRUCT_ALIGNMENT"
-- 
2.30.2



