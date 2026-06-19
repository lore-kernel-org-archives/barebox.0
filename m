Delivery-date: Fri, 19 Jun 2026 08:09:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1waSQB-007VLe-0l
	for lore@lore.pengutronix.de;
	Fri, 19 Jun 2026 08:09:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1waSQA-0007hT-JV
	for lore@pengutronix.de; Fri, 19 Jun 2026 08:09:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:To:Subject:From:Reply-To:Cc:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=usOEDTIu3isJDqt0UrZXAhsD5ASWnsGubwIbPLSfjPA=; b=WMgu+upkQrwjQT
	mY07fqtHb44WV4lvtElB/5LSpW6rJeRlWS1HPcuYLG07dzLFn6QekavD09Wh+tfp9bbI0Tz+RNixj
	9uwYtbk+lPzz1yeoEnjz2j9jbFVYtqMKinBZLUx56EkUA01A5pSDe6YlBadSCSIU85SoASrxqDk/C
	KLYQkXBHmvEjVaGquQ5F3yck+b3/QcoXgqqtPtnctnVdFUqTQoxrqhY9QtJsBTLq9KskxGLDmtP5l
	2a8p/Xm519twRfNQdS7zkhI3Ej3sWPOTGU3//TwSdDjhZnR1450+Yv5nzcCu1Df9/PyJ9E5ABtwEn
	SFO9oi8NWGLVL7QW2Vtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waSOl-000000022Sb-3cDZ;
	Fri, 19 Jun 2026 06:08:15 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waSOh-000000022SB-42Tg
	for barebox@lists.infradead.org;
	Fri, 19 Jun 2026 06:08:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9A124200964
	for <barebox@lists.infradead.org>; Fri, 19 Jun 2026 08:08:08 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1waSOe-003YQW-1i
	for barebox@lists.infradead.org;
	Fri, 19 Jun 2026 08:08:08 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1waSOe-0000000G2ki-1rVP
	for barebox@lists.infradead.org;
	Fri, 19 Jun 2026 08:08:08 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Fri, 19 Jun 2026 06:08:08 +0000
Message-Id: <E1waSOe-0000000G2ki-1rVP@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_230812_153438_09BC73DA 
X-CRM114-Status: UNSURE (   6.41  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2026.06.1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

Here comes a stable release for the June barebox with a few fixes.

Sascha

Ahmad Fatoum (3):
      ARM: lib32: bootm: support booting EFI-stubbed kernels without EFI
      efi: loader: release bootm OS staging buffer
      efi: loader: bump memory map key on FreePages

Sascha Hauer (2):
      ARM: rockchip: tfa: pass NULL fdt when there is none
      Release v2026.06.1

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


