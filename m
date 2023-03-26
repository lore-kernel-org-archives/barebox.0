Delivery-date: Sun, 26 Mar 2023 13:23:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pgOTL-00FMH9-Iz
	for lore@lore.pengutronix.de; Sun, 26 Mar 2023 13:23:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pgOTL-0005Gb-Eo
	for lore@pengutronix.de; Sun, 26 Mar 2023 13:23:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2O7wwtazpbxIoxRI5CWbV3yc+WTQhGs9SBIT4iFwIv4=; b=4wckXJeSWGaxDYajobWRpicNio
	QbKxENPZI53AFeWurw/CpzLNQJtvdyzwh/Us3sVMg4/wzdenbVSppqtwwcWup6HEY6aLA72LXbjgf
	u4+5U/L0MdGnLVB+CdN8MAl0iWrw8uNTqiuR/NMm+YMl5pgmumwOKJE45zD0N0+1UUEIS9+r/OOeL
	RnBsv6vpGZ7/MDOaEWIUcYtEslXBSrkUxEVn+SBYHDJuLdWS2Fwpfqxs5HXv4VvQEK7tgV1lqrt9T
	PgE+kk38Gl/HEFWSrU8+3XfFyp4zGXKJTToqZrs2S/O/jOr3rmaekBz+LEUpbxkEg7WqWTXn6OHV3
	ProzoUvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgOS7-008LmM-1D;
	Sun, 26 Mar 2023 11:22:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgOS4-008Lgd-01
	for barebox@lists.infradead.org;
	Sun, 26 Mar 2023 11:22:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pgORy-00054r-CR; Sun, 26 Mar 2023 13:22:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pgORx-006pQ5-JG; Sun, 26 Mar 2023 13:22:13 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pgORw-00CARD-N9; Sun, 26 Mar 2023 13:22:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Christian Melki <christian.melki@t2data.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 26 Mar 2023 13:22:11 +0200
Message-Id: <20230326112211.2900004-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_042220_046097_58EF50E9 
X-CRM114-Status: UNSURE (   8.97  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: booting-linux: document booting specific FIT configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Apparently, this was so far undocumented, but it's useful in some setups
where board type is detected dynamically. Document it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 60babb513cea..a9dd0d67d350 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -19,8 +19,10 @@ architecture the bootm command handles different image types. On ARM the
 following images are supported:
 
 * ARM Linux zImage
+* ARM64 Linux Image, plain or compressed
 * U-Boot uImage
 * barebox images
+* FIT images, containing a zImage or Image
 
 The images can either be passed directly to the bootm command as argument or
 in the ``global.bootm.image`` variable:
@@ -48,6 +50,14 @@ variable:
   global.bootm.image=/path/to/zImage
   bootm
 
+FIT image configurations will be matched by comparing the ``compatible`` property
+inside the configuration node with the barebox live tree's ``/compatible``.
+It's also possible to select a specific configuration explicitly:
+
+.. code-block:: sh
+
+  global.bootm.image=/dev/mmc0.fit@conf-imx8mm-evk.dtb
+
 **NOTE:** it may happen that barebox is probed from the devicetree, but you have
 want to start a Kernel without passing a devicetree. In this case set the
 ``global.bootm.boot_atag`` variable to ``true``.
-- 
2.30.2



