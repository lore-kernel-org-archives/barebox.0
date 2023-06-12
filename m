Delivery-date: Mon, 12 Jun 2023 14:52:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h1w-003q41-No
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:52:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h1u-0005sW-35
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:52:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fpo9TeK3Afq4A4hlHHf+04L+DmDA/aMqtFUUek8Frv8=; b=oVIcDvnPAfqn+/0jJSDilmiLDP
	SbssYKQvNGVwi72U4vWeNPvIf1mSMtsBPMWPrUtNvjbGClCB9HuUib8O8aaVIN8CxYD5BUgsxuu6E
	SaWQ+46Fstlz6rqbm6X67d9qx1u5hGTrXRv127G/MC+bIEzK7LN99T63s+BCVXcf9tIXk0rip5g76
	wT2cp401fqzkrz4QPzQR2samL/9IC1LCjlVOm7hO5IXYgczwUEvCWQ9tzwuoPmo4xx4214ViVUCSM
	JGjazWVajNiVOl1tePAqJDoa2Oz2gEJHtMNTNgWECAMweI7YO6hEHsURfK7vhyXfbBXIJ1nE7QiWk
	mPc2hDlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h0y-0044ON-03;
	Mon, 12 Jun 2023 12:51:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h0v-0044Ls-01
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:51:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0l-0005Rb-P7; Mon, 12 Jun 2023 14:51:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0l-006tSX-27; Mon, 12 Jun 2023 14:51:07 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0j-004XjI-RY; Mon, 12 Jun 2023 14:51:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:51:00 +0200
Message-Id: <20230612125104.1082800-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612125104.1082800-1-a.fatoum@pengutronix.de>
References: <20230612125104.1082800-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055117_056301_92BD00C7 
X-CRM114-Status: UNSURE (   9.70  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 2/6] kbuild: support DTC_CPP_FLAGS_file.dtbo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With newly added commit 3610ec11f72b ("kbuild: Add target to build dtb
overlay files"), overlays can now be marked as such in the build system
by using the dtbo extension in the Makefile instead of dtb.

Injecting extra flags with DTC_CPP_FLAGS_ was only supported for *.dtb
though, so add support now for *.dtbo for symmetry.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/Makefile.lib | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 90cfa579e5d5..42ee27499561 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -211,6 +211,7 @@ dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc                        \
 		 -I$(srctree)/dts/include                                \
 		 -I$(srctree)/dts/src/                                   \
 		 $(DTC_CPP_FLAGS_$(basetarget).dtb)                      \
+		 $(DTC_CPP_FLAGS_$(basetarget).dtbo)                     \
 		 -undef -D__DTS__
 
 ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-- 
2.39.2



