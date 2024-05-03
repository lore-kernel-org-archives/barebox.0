Delivery-date: Fri, 03 May 2024 12:09:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2prb-00H5NR-0v
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:09:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2pra-0005X8-3B
	for lore@pengutronix.de; Fri, 03 May 2024 12:09:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sg0BpXq7Q4cWArGtdG0vAddKY9ojyGL+OcswJoDSmaw=; b=3qUhgUzj0ZNGqeEP+EPScLBedh
	wTxmQ7SbStMaL7Xi2mPr36tiZFHWroscHIKyDpS4TH6CvC2rXCLEZAcHkzTKRooaRDqa4oGqP7DuQ
	uL/oLuVZajfmE6bvNvvmwCd1F+vynQniFVOOOwvKsDMkWnLOgc2ONJZwA7vzx3h+B4TrvyR3MhyXe
	n/e4gU8TwnS3lcROpw+gbQC88woZFpweoF4jBAUFIToS14e2YMZVTts7y8YkteaH9IIbTsGZxilhJ
	l760va/pz7ggYxTNmOxyUqy1yhvt3tnpaEYOYJuDparmzZTZ0qZmTrEFxWHDc+KwlAvsyVYRcuMIX
	D2JmvCNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2pr9-0000000FzTk-27ln;
	Fri, 03 May 2024 10:09:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2pr6-0000000FzSp-0pfx
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:09:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2pr4-0005OA-EB; Fri, 03 May 2024 12:09:26 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2pr4-00FgRB-16; Fri, 03 May 2024 12:09:26 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2pr3-00584d-34;
	Fri, 03 May 2024 12:09:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 May 2024 12:09:23 +0200
Message-Id: <20240503100923.1222659-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_030928_268111_1586240C 
X-CRM114-Status: UNSURE (   7.33  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: i.MX9: tqma93xx: handle unknown form factors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

GCC warns that fdt may be uninitialized. Fix that by treating unknown
variants as the CA variant. CA was chosen for no particular reason.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/tqma93xx/lowlevel.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/tqma93xx/lowlevel.c b/arch/arm/boards/tqma93xx/lowlevel.c
index 8d89ee530ff8..66991fc6b03b 100644
--- a/arch/arm/boards/tqma93xx/lowlevel.c
+++ b/arch/arm/boards/tqma93xx/lowlevel.c
@@ -89,6 +89,9 @@ static noinline void tqma93xx_continue(void)
 	case VARD_FORMFACTOR_TYPE_LGA:
 		fdt = __dtb_z_imx93_tqma9352_mba93xxla_start;
 		break;
+	default:
+		pr_warn("Unknown formfactor: 0%x. Assuming connector\n", formfactor);
+		fallthrough;
 	case VARD_FORMFACTOR_TYPE_CONNECTOR:
 		fdt = __dtb_z_imx93_tqma9352_mba93xxca_start;
 		break;
-- 
2.39.2



