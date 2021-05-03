Delivery-date: Mon, 03 May 2021 12:09:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldVVi-0002mG-Q8
	for lore@lore.pengutronix.de; Mon, 03 May 2021 12:09:06 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldVVh-0004Ie-VE
	for lore@pengutronix.de; Mon, 03 May 2021 12:09:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nfcRsAYbo4O3pue4/mAhL73iGDljaAlPrGjiwm/xmF8=; b=IgThp219J+iDoS
	t1bHN+wpin9yeEO08PlbcuoWefhVHRMli3UOMX2+wENgnO3VHQNVLzvQfQnrBCq4GGdh+7DhLe1UD
	6HDcx11DUBBKLxSdbnl6dMFo+bi/Hm3Has2cbIzjDpzfEzSu72MTdqhFEHk7Ye899YtlB8xhJnXIR
	gEj0dT2Y4wWAy/lRraVLHS4Dzz7XZgsS9C41Mdo/u4zPMF5F3TxmVtd1kLg16xAVw++bwtqnHfrf4
	sO/xpUeC2DXNIqbZfcuocfnrvUXvwow3lIRJJnUrrSGFq8+KL6YTKXsOE5SpcM9FvLdfibrVQJdnv
	253E3CrQ+UttJGrJpwUQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldVUW-00DceB-2W; Mon, 03 May 2021 10:07:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldVUG-00DccH-Vj
 for barebox@desiato.infradead.org; Mon, 03 May 2021 10:07:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:Sender
 :Reply-To:Cc:Content-ID:Content-Description:In-Reply-To:References;
 bh=CsnTnkMFoEiBYIKiUt2Kvc13+oZBd3GCL1SRcOOLxus=; b=xdnlHaQSKMIwzGbhe/eWiawVOZ
 9kmAxDiVuDlXw7/hf9rW1KjSS5yyRLnWnh+t97c8wlqKjbhLUVZcAVNNW3Z4Uunor4IwA+7d8SCPc
 kzVa+uzKCXg8wromUyHxRS92m9gAF+7nftLwHKO9DdED6ZW+fA4q8NLv5hQsd6LOYumfEeUcIZOwT
 Pen9DmmUkiAqnRC1D1yq4bd9haWNhySgaqqnvjjfnAnGfSfMymgqTVQRgAGcDSdcr4eSCypRJ02xW
 oNg0Y+AxRrATRS2At3H7zbARzYAZJLjoflaNFlTLcBcSKZmCYzGBEpl+awbdlvFbyjCUoBdjilFUn
 oopymLTA==;
Received: from mail-db8eur06olkn2092.outbound.protection.outlook.com
 ([40.92.51.92] helo=EUR06-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldVUD-002xvu-VK
 for barebox@lists.infradead.org; Mon, 03 May 2021 10:07:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BQWqolzqIHtq/SoCQ+kdUI2b5ANakpUy4KdgVKqxD1NgPUhc1wXigQFPbbRvOu0W+39wBJThNvmgbHkzRyitoQw0Yax1eysWn+CMuXNLXVwJIFmZYrz1w7MN5vInXdWSFlhaeEVYIgQ0zRYMFYcrhd43d5rJwKqSGn/P4hVH9ZMzmZ71Oo4q/8chYkkNgq/LYJ9lFywqb0vINJeVtUUECX3xWnsM6yzU0wBkFv2sN5t6ohBqKDaB9EZ4i/rDn8vkAgFlY+oSpby3iC59DNtoIzVwuDl2BgcVpl8eMr7HgpEIBYFE7GtezVEkgRzJX6lpvkTeG08phjeUXLHe790ucA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CsnTnkMFoEiBYIKiUt2Kvc13+oZBd3GCL1SRcOOLxus=;
 b=jQE48NManEaguAHSl2SGmZe7h/jKF8PVfdSP7zG85vuX1EQ71cBK9LcmSqWAJeWMuihdvCPXWTnSLBvK88iSlNe8rylz/kPwwqJ69puMIAmtGXAvf2+khFpmR07myF0Cn7/08uG4nS4/pr4pGRYy8Jot13+0M/jBgm9xYupQjGXxOr/KPE1Rn+nzQUXwcEpYnJ782SvRMmcOQc6rq8Hn/7j4PMGaBsuRXisdDc2YBdMUyj9w9ILcf9lnKV/lou8Px/OSTmrJb7EpbSLiQ+JrBfqnBNcDKjpH57lPkyiFl/EIYno+bZ0EAMlltR+24BWltNF+TvNLoGYukcpbPfc+Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CsnTnkMFoEiBYIKiUt2Kvc13+oZBd3GCL1SRcOOLxus=;
 b=G2oAIIU6QfzOfxMWsoqGDceL7+yJZ9bsoTYZLhnmSMVS8wmQylnCAO3XauTGiutfaaQpmElqoPBc2J44lWBmYSS5ysevpv8ps0EHFG2EgIKaJ5/ey3FiT4wkDGT9Iemuti8Gq1DFlZQi58cz4TfyJMzasJDEXHnYwF1dYzM8oJzX/1OiV45K/vPYx+bl10tEuycinFQ4ygi8dzOFjQjyG8j9yDP2Q7N8678btzDl202F0r7/tkC9EN14S17Nx3Y4hI8JbsjrXuMqCz30uHGBG/l3j7qM8g/2Loi03quQyt2IYsbmYHj04QI4uQvrstdCpi5qI8T68d92FrltiETDng==
Received: from AM7EUR06FT039.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc36::46) by
 AM7EUR06HT233.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc36::254)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.27; Mon, 3 May
 2021 10:07:30 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM (2a01:111:e400:fc36::4d)
 by AM7EUR06FT039.mail.protection.outlook.com
 (2a01:111:e400:fc36::330) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.27 via Frontend
 Transport; Mon, 3 May 2021 10:07:30 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::1dab:3ff6:d6f2:38d2]) by AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::1dab:3ff6:d6f2:38d2%3]) with mapi id 15.20.4087.044; Mon, 3 May 2021
 10:07:30 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: barebox <barebox@lists.infradead.org>
Thread-Topic: [PATCH 1/1] Zynq: add support to chainload another barebox
Thread-Index: AQHXQAOLPEiHagXjDEKx2lGx8tbEcQ==
Date: Mon, 3 May 2021 10:07:30 +0000
Message-ID: <AM9P192MB0870CBDAD8B3CC328A1C2D6CAB5B9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:CE95A73D103231DF048C38AA8C829C1603EE5E9987C621D18BA2C4786CC4B963;
 UpperCasedChecksum:690D04ABC6A791BE016279E5253148EEDA5E4FA0A6A502E9D8A462A4A74CD3D8;
 SizeAsReceived:6692; Count:42
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [uItmnLoTZoayyBLKcQoF7BzuyAVLw4Me]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: f1908fa5-3555-4323-8cb4-08d90e1b432c
x-ms-traffictypediagnostic: AM7EUR06HT233:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gpfGUlUPCWWQMlDsWmWvqvGP+g77QT0galPlAGG8nO/5Q+YV1as+V7S7tDHAT1kXLDMpqQI57qXwI5i7gAT6a31nULKcOoqwj7CUmWwMOrAG2qXAVLtzHyEcR3BnstaPmVq/TnlaQic7PeBjqTAsdfWNFZ7Fen7zeb78G4AbhwdZ2yjOU5IaCI7c/2UVWaDzluyrFRDNWqRIiwZffhCJhdBXtY3pB+mml0wXDSQK9NztKfBBSMcz87NXWEw/q+aVa7YnWNZr6oRqlYXQJSC2izj+X/aVavZgMIRBSt/QQFJneC35TyuSOn0/fIl/gODW5BKDuSckHncRQv7irv52UvjqOPWsMTOpHRVIgMHgLINN33Twv5tqEB9MBFib2aSHONwU3PNV115B9liEDoywHA==
x-ms-exchange-antispam-messagedata: jksoMDgkqKdb074Fo/4EeCly8gfc2zKDcOquLbyOlbNkR962E8iplwHtgxOy6zPPY12hhG+RYdS+5vn/WWJlPLjEmiKEH2i1fT0YP3jMDwQ4ypC9S9NeeXB3aZjFw1IQA5Gxx7T44ekwGijvQL/3uQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: AM7EUR06FT039.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f1908fa5-3555-4323-8cb4-08d90e1b432c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2021 10:07:30.2349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7EUR06HT233
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_030734_127059_B0BB5360 
X-CRM114-Status: GOOD (  10.22  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 1/1] Zynq: add support to chainload another barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since OCRAM is only 192K this introduces CONFIG_ZYNQ_BUILD_FSBL so we can can chainload a more feature rich barebox via bootm.

>From 1f1a95eca42198d73c38cc12b9b44f061980cef8 Mon Sep 17 00:00:00 2001
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Mon, 3 May 2021 12:03:05 +0200
Subject: [PATCH] zynq: add support to chainload another barebox

Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
---
 arch/arm/mach-zynq/Kconfig |  6 +++++-
 images/Makefile.zynq       | 21 +++++++++++++++------
 2 files changed, 20 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 3e07633e5..0800b55e6 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -21,7 +21,11 @@ config ARCH_ZYNQ7000
 	select OFDEVICE
 	select RELOCATABLE

-
+config ZYNQ_BUILD_FSBL
+	prompt "build FSBL binary (BOOT.BIN)"
+	bool
+	help
+	  Say Y here if you want to build an FSBL binary for the Zynq.

 menu "select Zynq boards to be built"

diff --git a/images/Makefile.zynq b/images/Makefile.zynq
index b00e74869..39c72bd88 100644
--- a/images/Makefile.zynq
+++ b/images/Makefile.zynq
@@ -7,17 +7,26 @@ zynqcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \

 zynqcfg-tmp = $(subst $(comma),_,$(dot-target).zynqcfg.tmp)

-quiet_cmd_zynq_image = ZYNQIMG  $@
+quiet_cmd_zynq_image = ZYNQIMG $@
       cmd_zynq_image = \
          $(CPP) $(zynqcfg_cpp_flags) -o $(zynqcfg-tmp) $(CFG_$(@F)) ; \
          $(objtree)/scripts/zynq_mkimage -c $(zynqcfg-tmp) \
-           -f $(subst .zynqimg,,$@) -o $@
+           -f $(subst .zynqimg_fsbl,,$@) -o $@

-$(obj)/%.zynqimg: $(obj)/% FORCE
+$(obj)/%.zynqimg_fsbl: $(obj)/% FORCE
 	$(call if_changed,zynq_image)

 #------------------------------------------------------------------------------

-CFG_start_avnet_zedboard.pblb.zynqimg = $(board)/avnet-zedboard/zedboard.zynqcfg
-FILE_barebox-avnet-zedboard.img = start_avnet_zedboard.pblb.zynqimg
-image-$(CONFIG_MACH_ZEDBOARD) += barebox-avnet-zedboard.img
+FILE_barebox-avnet-zedboard.img = start_avnet_zedboard.pblb
+zynq-barebox-$(CONFIG_MACH_ZEDBOARD) += barebox-avnet-zedboard.img
+
+CFG_start_avnet_zedboard.pblb.zynqimg_fsbl = $(board)/avnet-zedboard/zedboard.zynqcfg
+FILE_barebox-avnet-zedboard-fsbl.img = start_avnet_zedboard.pblb.zynqimg_fsbl
+zynq-fsbl-$(CONFIG_MACH_ZEDBOARD) += barebox-avnet-zedboard-fsbl.img
+
+ifdef CONFIG_ZYNQ_BUILD_FSBL
+image-y += $(zynq-fsbl-y)
+else
+image-y += $(zynq-barebox-y)
+endif
--
2.25.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

