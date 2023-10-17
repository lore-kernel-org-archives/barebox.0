Delivery-date: Tue, 17 Oct 2023 16:55:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslU5-00BslH-PF
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslU3-0004RJ-Gl
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IvDSaPMdIl1j3JzlzCfmGJYpFqVV9btT6jA7UoMDtV4=; b=eMIU+nZUxY2XjE3YMUsbf/3nbE
	3AAaVj8TKjpqfhuRJTSR1fqYV0RVMHW0X66V/pzszLEUNFOk8AUpzc7hvkQJ2TIHBhXhcK2By8Quh
	4HSKq0U6SZdXZnDQTqnJBf9mxD17oUzgLICB6QrPJyQF4aR0xreX2FXUnWhD0dioE+IXUvCcaa53g
	1K/gkX3bhAUUd5q3DAXnPZr8pOWchfhFP3iDATJ0DHno8yAoDgTgHVjWY9Pzk0SoFanW/03iBHEwA
	dntLALAkqwLzltddet3O/Ty5QJdO+HS6cxLayhFb6JYebX6dyk2cVAoWgF7cOPumnfVdoOMrVl21k
	JgJgqk7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslSq-00CfGg-24;
	Tue, 17 Oct 2023 14:54:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQE-00CcfM-04
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:51:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=IvDSaPMdIl1j3JzlzCfmGJYpFqVV9btT6jA7UoMDtV4=; b=q0U0KzLLIaHvTeIaNnEk2tj2vG
	MSP+Z5RFUkG6i9zxTpI0g7EB+NI3h0hoRCMVP034fLioyLOJB8AP44UOfW+OTvxakD1ZbNVqnM5b2
	YWPIsAvsWar9dd8z68Qw6ybPVoR4b7hYtgf70vwpy2iaGOJkHT5Y+FSimE4pGp60Yx+SbLYdozn8r
	qVQ2KpJrRlBPZ3x1OP4AFcFg/lM91Ecnjybk9YeVOLCbjzP4lyps8GAukF1kiziUZks4OcNBcAJvk
	fZiN2UzZgamvdnNcQ02vJHD9NW9vC+6f4cm18ozspEeHMZy+fFbR9qglbDNABMtkKE0ofd/g12BpP
	8zDNlFhw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ6-007AEp-0o
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:48 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPz-0001wJ-BB
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:29 +0200
Message-Id: <20231017145131.3069283-28-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155142_500097_711ED6B1 
X-CRM114-Status: UNSURE (   6.79  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 27/29] ARM: i.MX: add hab qspi support if enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Set the 'hab_qspi' commando if CONFIG_HABV4_QSPI is enabled to build
QSPI HAB images.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- new patch
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 include/mach/imx/habv4-imx8-gencsf.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/mach/imx/habv4-imx8-gencsf.h b/include/mach/imx/habv4-imx8-gencsf.h
index b50788127eff..5f92ceceab00 100644
--- a/include/mach/imx/habv4-imx8-gencsf.h
+++ b/include/mach/imx/habv4-imx8-gencsf.h
@@ -10,6 +10,9 @@
  * CONFIG_HABV4_IMG_CRT_PEM
  */
 #if defined(CONFIG_HABV4) && defined(CONFIG_CPU_64)
+#if defined(CONFIG_HABV4_QSPI)
+hab_qspi
+#endif
 hab [Header]
 hab Version = 4.3
 hab Hash Algorithm = sha256
-- 
2.39.2



