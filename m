Delivery-date: Thu, 09 Jun 2022 08:06:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBJY-008SID-KK
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:06:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBJW-0003Gk-KV
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:06:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rgrVVBvitq8QPt9yPEUvqAVTjWPCAiHcyogIs6q404s=; b=qGe9XR53UydlMx
	fBuzp9f65uDPmbnLoGtZXfHjFg5UtRWLPExfxIedbT2MiGvLdyufFezwH0vMuQwyPLAcktnoVLs78
	MMUL4dKZ2TaoRefDpLlfw/QUBmuPND0TpmHmO5FJM3qvtoHCkfBK6mDr4TUf7eI8AG8Q1I5F+bFjo
	HK8taALCZZp/dRrOAsvZIoUkcxFVJQqgNY5EYNB33Oi4qSEUMgaxcISnp+J03LHgbQWuH8wI3MrGc
	njp3TuBGET99YSJTEPB55Lk6dCy6eTeJT5NJzOx6QFe4lx8Y8+0OTS5rflxM04aMLs0nIzlV70mQ1
	519NtI88oKK2JhPNbjuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBIG-00GyhI-Dh; Thu, 09 Jun 2022 06:05:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBGg-00Gxoy-QP
	for barebox@bombadil.infradead.org; Thu, 09 Jun 2022 06:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=+uFu9Vcf8ULqphmMCqvDTOGwiSh0ze2FuGBnzqzOAcM=; b=Z2npVBakOqQqoq7xBrB1U/WZS3
	G4WPZks3VGR8GOlWn35u+E5N/tiK9xb8xCdSEzm4yNqB/eOco7D8ARXGJ2uEQi4t/V6PIt0brcpLs
	j/uqS9nK9C2KJEXNhgDH4+yGqFM+jbRRhaIa/+Vj/KB8GNpSsMS0rKi9vta0wZMGuK0kwMoPYL23A
	hsJUDsqpQBjM/IoPLjIaTs4mXR/ZBFbmtJGukKDhPHniMpm64v9vtqBIo8w13R9S3LiPCWAO5nJXL
	KY2eLdzlWYdxC9C/ct5O/QUyNFf1Rfyz8tg88+eMP3fw+lx2RduKnrKlA3Iucj0yFGGRwobzX9vsP
	MP6PoGlw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBGb-006Hlj-Hy
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 06:03:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBGb-0002B4-1P; Thu, 09 Jun 2022 08:03:37 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBGb-007KB7-LF; Thu, 09 Jun 2022 08:03:36 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBGZ-002o00-Jm; Thu, 09 Jun 2022 08:03:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 08:03:34 +0200
Message-Id: <20220609060334.668804-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_070338_496011_0F887407 
X-CRM114-Status: UNSURE (   7.95  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] common: add help text for CONFIG_STATE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the addition of barebox TLV, a help text differentiating it from
barebox-state is in order.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index f7a6a96e877c..3ff45d6c9d0d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1004,6 +1004,11 @@ config STATE
 	select ENVIRONMENT_VARIABLES
 	select OFTREE
 	select PARAMETER
+	help
+	  barebox state is a generic framework for atomic power fail-safe
+	  variable storage and retrieval. It can be used to safely maintain
+	  data over reboots and to exchange information with Linux, e.g.
+	  for redundant boot with bootchooser.
 
 config STATE_CRYPTO
 	bool "HMAC based authentication support"
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

