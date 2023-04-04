Delivery-date: Tue, 04 Apr 2023 12:18:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjdkP-009bav-H5
	for lore@lore.pengutronix.de; Tue, 04 Apr 2023 12:18:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjdkP-00006r-Ff
	for lore@pengutronix.de; Tue, 04 Apr 2023 12:18:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rCGSUoJZ3RzcoFz8tTuyktPL6/0VgRTACz/s2pOedT8=; b=JKKynwj9u5NNFM
	N1g1CPy+H6W3jZaMCDKYYgcfspIcDV40dHt1GtXA+LjvQG4oQFK6mtKoVpnc5z8j5NF/mNZWoK9RZ
	6Ku5X+/TNk60FN0213wpKkjA7wBxCMJkjXr6sl9Rum/mSGxZnlpDyy0QOTfg90pJ1IiUuGhKfAtlD
	gOcuAmyfTgzRhuLUrv9DFUtxfKaoBsxKOUNtp1iF0MHEsrziXPzQvZfHlm9hYaXzn8Wl79nA9fjgi
	O0VXEUuLl2BTCkqU874pKWf2qiO4Jm4VXI06v/VVg4BpCW7XhGTMC+tLP2xKBThURvz4WnB7JFZah
	KHU9akBkjNk5f6lkXQPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjdj8-000qPt-2r;
	Tue, 04 Apr 2023 10:17:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjdj5-000qNg-0J
	for barebox@lists.infradead.org;
	Tue, 04 Apr 2023 10:17:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pjdiu-0007zp-Qw; Tue, 04 Apr 2023 12:17:08 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pjdiu-008tRH-5p; Tue, 04 Apr 2023 12:17:08 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pjdit-009O4R-5g; Tue, 04 Apr 2023 12:17:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  4 Apr 2023 12:17:05 +0200
Message-Id: <20230404101706.2237453-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_031719_135113_60821730 
X-CRM114-Status: UNSURE (   9.35  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 1/2] scripts: gen-dtb-s: reference OF IMD entries automatically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We currently require IMD_OF_USED to get the DT compatible into the
barebox image data meta section. As the PBL is already referencing the
DT to pass it along to barebox proper, let's add a reference from the DT
to the image data section to make IMD_OF_USED unnecessary.

Suggested-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
--
v1 -> v2:
  - use dword, to fix build for 64-bit (Sascha)
  - place IMD reference before STRUCT_ALIGNMENT
---
 scripts/gen-dtb-s | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index c5c46a4d8675..6309a814a483 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -49,6 +49,9 @@ echo "__dtb_${name}_start:"
 echo ".incbin \"$dtb\""
 echo "__dtb_${name}_end:"
 echo ".global __dtb_${name}_end"
+if [ "$imd" = "y" ]; then
+	echo ".dword __barebox_imd_OF_${name}"
+fi
 echo ".balign STRUCT_ALIGNMENT"
 
 compressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb.z)
@@ -65,5 +68,8 @@ printf ".int 0x%08x\n"  $uncompressed
 echo ".incbin \"$dtb.z\""
 echo "__dtb_z_${name}_end:"
 echo ".global __dtb_z_${name}_end"
+if [ "$imd" = "y" ]; then
+	echo ".dword __barebox_imd_OF_${name}"
+fi
 echo ".balign STRUCT_ALIGNMENT"
 echo "#endif"
-- 
2.39.2



