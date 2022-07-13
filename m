Delivery-date: Wed, 13 Jul 2022 11:59:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZ96-005uWX-3o
	for lore@lore.pengutronix.de; Wed, 13 Jul 2022 11:59:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZ93-00009z-Vz
	for lore@pengutronix.de; Wed, 13 Jul 2022 11:59:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5sV+bKmxgwNWjR5JxgHOKeHG1FogF13uWL1h6HL/WM8=; b=yUUDArIt9mjn9WOztd2m4RY7Qw
	xzVXaqgFoiQj2ZNGK83MBoUHL6uxkHnViMOHSa6at3HAE2VB+NrTBsv+mML/OkaZ8y4gKBQye26VW
	DJ4Dl/8hdD+uL8i+B1H5tYtyL+36FpEkj9skftU1kzh2zOdTy3nu32vFbrqMRmXLK2wonIlxjoDy/
	ZNNtpR08k2EsA7TLkhEU6Izw04z3zdjnL9YC0JBeE0PhjXFFq7wVJeGgbSs/jgidfuEo6PdMKppAn
	+RWKT9z/YdukP+EanguXErDFpTcDLUxTpL/NsTVxv5cP6Sjv1Mkw+ikHVmBNDRbaXb/nU57+W5P0Q
	16mqWATA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZ7p-002Uv7-1J; Wed, 13 Jul 2022 09:57:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZ7f-002UqJ-I1
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 09:57:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7e-0008Dd-0t; Wed, 13 Jul 2022 11:57:34 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7d-000gTp-A2; Wed, 13 Jul 2022 11:57:33 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7b-007spi-Or; Wed, 13 Jul 2022 11:57:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Jul 2022 11:57:26 +0200
Message-Id: <20220713095730.1878941-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
References: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_025735_638522_C165389D 
X-CRM114-Status: GOOD (  13.84  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/6] pbl: make USE_COMPRESSED_DTB a PBL-only feature
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

All in-tree boards that reference __dtb_z_ symbols are already
multi-image capable and allow us to compress barebox proper by having
the prebootloader decompress it using the algorithm specified by the
CONFIG_IMAGE_COMPRESSION_* option.

DTB on the other hand, is handled specially and the optional compression
is always using LZO. It makes sense to use the same
CONFIG_IMAGE_COMPRESSION_* options for the DT too to make build system
integration easier.

To avoid special casing non-PBL support which lacks this options, just
drop USE_COMPRESSED_DTB there. If linking barebox for your downstream
board is broken by this:

  - If not multi-image capable, consider porting it to use
    ENTRY_FUNCTION(_WITHSTACK) instead

  - If you are using __dtb_z_* in barebox proper, use normal __dtb_
    and compress barebox as a whole instead with
    CONFIG_IMAGE_COMPRESSION_*

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 common/Kconfig    | 6 ------
 pbl/Kconfig       | 6 ++++++
 scripts/gen-dtb-s | 2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 6278866006b1..60f52a10e11d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -41,12 +41,6 @@ config BLOCK
 config BLOCK_WRITE
 	bool
 
-config USE_COMPRESSED_DTB
-	bool
-	depends on ARM || RISCV
-	select UNCOMPRESS
-	select LZO_DECOMPRESS
-
 config FILETYPE
 	bool
 
diff --git a/pbl/Kconfig b/pbl/Kconfig
index ce0acbb646c7..ec1886073e42 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -28,6 +28,12 @@ config PBL_SINGLE_IMAGE
 
 if PBL_IMAGE
 
+config USE_COMPRESSED_DTB
+	bool
+	depends on ARM || RISCV
+	select UNCOMPRESS
+	select LZO_DECOMPRESS
+
 config PBL_RELOCATABLE
 	depends on ARM || MIPS || RISCV
 	bool "relocatable pbl image"
diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 1027db28044f..868d434664ec 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -58,7 +58,7 @@ fi
 compressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb.lzo)
 uncompressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb)
 
-echo "#ifdef CONFIG_USE_COMPRESSED_DTB"
+echo "#if defined(CONFIG_USE_COMPRESSED_DTB) && defined(__PBL__)"
 echo ".section .dtbz.rodata.${name},\"a\""
 echo ".balign STRUCT_ALIGNMENT"
 echo ".global __dtb_z_${name}_start"
-- 
2.30.2



