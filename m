Delivery-date: Wed, 06 Mar 2024 20:40:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhx7c-00BFH0-0v
	for lore@lore.pengutronix.de;
	Wed, 06 Mar 2024 20:40:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhx7b-0006y5-N0
	for lore@pengutronix.de; Wed, 06 Mar 2024 20:40:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NFB/fs8WmWYHjILZAFKYLlhlwc92UM/7A3ovU7R5qSs=; b=LSM8g9dJd+Iy9oTt3q6BZgV7ce
	IHV7SnnNBdGZR0x2KKBRaE4436E6KWeKry9O0HRwhADoga3WxNpBeiwQKobwOpN5zaYKbByUF2W3p
	NCQAbAw9WpaQeRXn3gmEiSkndkMZo/lnpORqkSGD5FtBRkW4oKdTqcz5mhqn8J1u154Xr5Dr7EUds
	GoZTVWxWuHRfnFB2wvZI6cmyG3zx9y5BsE7kKV+iEwkL550DY44Q54BsaOZOKlFgt+XdcDEq0x8lB
	E9oGprmehfRmahlnPlb9otuVYlso/sktnLGomLhZcoxnwujmBwB83sXN14fYH3DBZi07Wt4/KWyns
	6a7JqIVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhx78-00000001eho-3kfA;
	Wed, 06 Mar 2024 19:39:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhx75-00000001egv-13c0
	for barebox@lists.infradead.org;
	Wed, 06 Mar 2024 19:39:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhx74-0006In-3K; Wed, 06 Mar 2024 20:39:38 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhx73-004o28-NG; Wed, 06 Mar 2024 20:39:37 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhx73-002zMn-0O;
	Wed, 06 Mar 2024 20:39:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Mar 2024 20:39:36 +0100
Message-Id: <20240306193936.712501-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_113939_339727_E63F8B2D 
X-CRM114-Status: UNSURE (   9.76  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] optee: build common code depending on CONFIG_HAVE_OPTEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's a stub for optee_set_membase(), but it's only defined when
CONFIG_HAVE_OPTEE is disabled. The out-of-line version is only linked
when there's either PBL_OPTEE or BOOTM_OPTEE, both of which select
HAVE_OPTEE.

HAVE_OPTEE can also be selected by OPTEE, which is the option for
the driver communicating with OP-TEE. This leads to a linker error
with the combination of CONFIG_OPTEE=y, CONFIG_PBL_OPTEE=n and
CONFIG_BOOTM_OPTEE=n.

Fix this by using CONFIG_HAVE_OPTEE both in header and Makefile.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index 2fc4a703c8c4..96498790b300 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -80,8 +80,7 @@ obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_BOOT)		+= boot.o
 obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
 obj-$(CONFIG_USBGADGET_START)	+= usbgadget.o
-obj-pbl-$(CONFIG_PBL_OPTEE)	+= optee.o
-obj-$(CONFIG_BOOTM_OPTEE)	+= optee.o
+obj-pbl-$(CONFIG_HAVE_OPTEE)	+= optee.o
 obj-$(CONFIG_FASTBOOT_BASE)	+= fastboot.o
 
 ifdef CONFIG_PASSWORD
-- 
2.39.2



