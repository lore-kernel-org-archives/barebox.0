Delivery-date: Thu, 02 Jun 2022 11:03:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgjd-000NrX-PN
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 11:03:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgjb-00072d-Rd
	for lore@pengutronix.de; Thu, 02 Jun 2022 11:03:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLufnaFGuacO/QGBkEfFCWwqpSFCewBO9M/JbxTwUEE=; b=sDMemQLOqu6D34
	seqSxPaoslWsuTszV4iyO48zY8TBwmIxqZGC5AEhNZoxRNclnPkUuYIDZU8sdyw8dEd48KINIdzvC
	9dncGGzOCBNDRiY8WVTArJt4XESjGyp5/WDfoWjiHekoegF+q4+mzNSxBgf46vk2zZwHHAZZxEjWr
	Vg9bRtw2SX3gvC26hvS6UxSNJ4bkcGGk7HMb0rf9ZF/r3h7HAEB3SksW5ef8IU2UPO4Jp7hWJ5GbM
	eAh3UcGsR/3gAniZQDvhzP90skczZ0Iyu+yAR35HOPJuMX4CZLbl42IBWsY15FLyq4VUgJJRyDwcn
	zhsfMF2YONsuX/eS/q8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgiH-002KpJ-IG; Thu, 02 Jun 2022 09:01:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgi8-002Kln-7b
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 09:01:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi5-0006aO-5g; Thu, 02 Jun 2022 11:01:41 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi5-005zkw-OC; Thu, 02 Jun 2022 11:01:40 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi3-00DOLf-0s; Thu, 02 Jun 2022 11:01:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jun 2022 11:01:33 +0200
Message-Id: <20220602090133.3190450-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
References: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_020144_326358_99EC4FE7 
X-CRM114-Status: UNSURE (   8.23  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] fastboot: support TF-A FSBL and FIP images for barebox update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Newly added stm32mp_bbu_mmc_fip_register() accepts two kinds of barebox
images: A FIP image containing barebox as well as a FIP image preceded
by TF-A as a STM32 FSBL image. Inform filetype_is_barebox_image of these
file types, so the handler can be invoked via fastboot when
global.fastboot.bbu=1.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 3e9e14c1d79e..8f79f48bc122 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -484,6 +484,8 @@ bool filetype_is_barebox_image(enum filetype ft)
 	case filetype_ch_image_be:
 	case filetype_layerscape_image:
 	case filetype_layerscape_qspi_image:
+	case filetype_stm32_image_fsbl_v1:
+	case filetype_fip:
 		return true;
 	default:
 		return false;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

