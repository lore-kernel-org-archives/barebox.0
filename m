Delivery-date: Wed, 06 Nov 2024 20:03:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJ4-005dYE-2n
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 20:03:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJ5-0001tG-1N
	for lore@pengutronix.de; Wed, 06 Nov 2024 20:03:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d5aIEk4Sza6aPD09dKUpi8d11NTU8SU0tPIQUkE9fgM=; b=KOUTg1XUjE56CMLQL+RrqSL1aO
	ZzwFLWZtp75Ei70pCh9wUM4iIn+JODT2HXG2X1Pxk0d29mP4z4Ag9G+kWDXCNKTXxOL+JoOKbL8Xa
	8TcmwfQtzP/rUS1kftSN68ah8w1IfENbt3VAS/AQYHQggMy6HRWyDYGXEBm0lZ9/GvIWXnzmc1kHo
	2dtrJrwbJViYfKHc8eIGN+eAG7v6CWHJEbn4aBQ7st6bkm4V7ueEBZLUgv93LuN5XJfMZuUPwf3ER
	gTCSq0h4zqvyvXhJ2njIuEqKijYDlY4RbuAFjm2MSHJTFwOpfj+TjOWprvucd25hft+n9jTRO5xn9
	YRjz/Dmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lIa-00000004R2c-0JsN;
	Wed, 06 Nov 2024 19:02:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lDc-00000004Pux-21VO
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 18:57:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDb-0000Vp-9c; Wed, 06 Nov 2024 19:57:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDb-002LMt-0G;
	Wed, 06 Nov 2024 19:57:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDa-0005bP-3B;
	Wed, 06 Nov 2024 19:57:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2024 19:57:24 +0100
Message-Id: <20241106185724.2526-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241106185724.2526-1-a.fatoum@pengutronix.de>
References: <20241106185724.2526-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_105728_620392_930C169D 
X-CRM114-Status: GOOD (  16.44  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] ARM: Rockchip: use vendor blob OPTEE load addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's unknown where the 0x200000 came from, but it's most likely wrong.

 - For the RK3399, the upstream default is 0x30000000 and
   the vendor load address in rkbin/RKTRUST/RK3399TRUST.ini is
   0x08400000 for the blob.

 - For the RK3568, there's no upstream support and for both RK35{68,88}
   the vendor load address in rkbin/RKTRUST/RK356xTRUST.ini is
   0x08400000 for the blob.

The hardcoded OP-TEE load address in barebox is only relevant, when the
OP-TEE header is missing. Users compiling OP-TEE themselves can use the
tee.bin and ignore the hardcoded value altogether.

Users using the blob don't have the header, so it's a good trade off to
use the vendor load addresses as default addresses.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/rockchip.rst | 9 ++++++---
 include/mach/rockchip/atf.h       | 8 +++++---
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index 2d2e0572dd8f..b94c7a78e115 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -86,10 +86,13 @@ With these barebox can be compiled as:
   make ARCH=arm rockchip_v8_defconfig
   make ARCH=arm
 
-**NOTE** I found the bl32 firmware non working for me as of 7d631e0d5b2d373b54d4533580d08fb9bd2eaad4 in the rkbin repository.
+.. note:: When compiling OP-TEE yourself, use the tee.bin image as it has
+  a header telling barebox where to load the image to.
+  Without the header, barebox will fallback to the hardcoded addresses expected
+  by the vendor blobs in the rkbin repository.
 
-**NOTE** The RK3566 and RK3568 seem to share the bl31 and bl32 firmware files,
-whereas the memory initialization blob is different.
+.. note:: The RK3566 and RK3568 seem to share the bl31 and bl32 firmware files,
+  whereas the memory initialization blob is different.
 
 Creating a bootable SD card
 ---------------------------
diff --git a/include/mach/rockchip/atf.h b/include/mach/rockchip/atf.h
index 1b07128f2e9b..db00dc71195f 100644
--- a/include/mach/rockchip/atf.h
+++ b/include/mach/rockchip/atf.h
@@ -14,10 +14,12 @@
  * tee-raw.bin format, which omits the header. We thus hardcode here the
  * fallback addresses that should be used when barebox encounters
  * tee-raw.bin instead of tee.bin.
+ *
+ * The values are taken from rkbin/RKTRUST/RK3*.ini: [BL32_OPTION] ADDR
  */
-#define RK3399_OPTEE_LOAD_ADDRESS	0x200000
-#define RK3568_OPTEE_LOAD_ADDRESS	0x200000
-#define RK3588_OPTEE_LOAD_ADDRESS	0x200000
+#define RK3399_OPTEE_LOAD_ADDRESS	0x8400000
+#define RK3568_OPTEE_LOAD_ADDRESS	0x8400000
+#define RK3588_OPTEE_LOAD_ADDRESS	0x8400000
 
 /*
  * Hopefully for future platforms, the vendor binaries would use the image
-- 
2.39.5



