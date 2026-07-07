Delivery-date: Tue, 07 Jul 2026 11:06:41 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wh1lJ-001ADM-2S
	for lore@lore.pengutronix.de;
	Tue, 07 Jul 2026 11:06:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8A6ED202590
	for <lore@pengutronix.de>; Tue, 07 Jul 2026 11:06:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ITnEkS9r;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=waYNkGLbVsi/V8qd8UOUiJqsCd8z/p7d4Bfl7q0lelY=; b=ITnEkS9rflr6ZBTfQB6ktn4bUT
	Wi4ZVun+xzvwew4KRQgoyCnrk607Cuym2bONtRuqNz2K4p9U7vzhoUz7pBTNbx3hX91e5C/SlP+1c
	nYPxyRmkDI4YDrl3VdwuOpBtmcKOLI4nCvkhNloIaOsTp9Hp2AkoUvbAMxYrnFsFEqsrwyCtLFS3h
	by2Mdf8cFARUtykbLgygVoHSK3FOUcV7fPEGAnllhY0Oh9DL8CNyw6g5LOYWSti25W85Gkyw6qP7z
	fjPDcgiJoSeGfxIdbbeEBIVJVWgRvlf3o8yPwZ+LQt+saK6H1y7hY5Z0F3t01AUe18gjfbSWNNxWk
	f4BG5Z/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh0ic-0000000EOYx-206f;
	Tue, 07 Jul 2026 07:59:50 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh0ia-0000000EOXN-0WTF
	for barebox@lists.infradead.org;
	Tue, 07 Jul 2026 07:59:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5D7B7201A03;
	Tue, 07 Jul 2026 09:59:46 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wh0iY-000XTA-0x;
	Tue, 07 Jul 2026 09:59:46 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wh0iY-00000000XGO-0k71;
	Tue, 07 Jul 2026 09:59:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] efi: payload: be explicit about incompatibility with CONFIG_HAVE_OPTEE
Date: Tue,  7 Jul 2026 09:59:43 +0200
Message-ID: <20260707075943.122401-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_005948_311029_6DB2D079 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  barebox PBL expects OP-TEE at the end of the initial memory,
    which doesn't make sense for barebox as EFI app as the initial memory is
   just 16M of freshly allocated EFI memory. Booting barebox via the EFI stub
    while OPTEE support is enabled will thus normally hang. Until the PBL OPTEE
    code is adapted, refuse this bogus configuration. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-5.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 8A6ED202590
X-Stat-Signature: yq5y14aqzjkeqtwy9n59bi6yp8ptwhgb

barebox PBL expects OP-TEE at the end of the initial memory, which
doesn't make sense for barebox as EFI app as the initial memory is just
16M of freshly allocated EFI memory.

Booting barebox via the EFI stub while OPTEE support is enabled will
thus normally hang. Until the PBL OPTEE code is adapted, refuse this
bogus configuration.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/efi/Kconfig b/efi/Kconfig
index 9c559207e95c..b8f118a8812f 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -5,6 +5,7 @@ menu "EFI (Extensible Firmware Interface) Support"
 config EFI_PAYLOAD
 	bool "barebox as EFI payload/app (consumer)"
 	depends on HAVE_EFI_PAYLOAD || COMPILE_TEST
+	depends on !HAVE_OPTEE
 	select PBL_FULLY_PIC if ARM64
 	select EFI
 	select EFI_GUID
-- 
2.47.3



