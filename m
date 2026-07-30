Delivery-date: Thu, 30 Jul 2026 14:55:16 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wpQI7-004UjK-1M
	for lore@lore.pengutronix.de;
	Thu, 30 Jul 2026 14:55:16 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B9D3A202C52
	for <lore@pengutronix.de>; Thu, 30 Jul 2026 14:55:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Npu+hUPr;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=2dzuKlS+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RpsewvNeFjxVeOb8jnFsSBDqdfs7EO3aDGD7oRk275E=; b=Npu+hUPrhNNfVLfMhVRP9jI+u+
	VSo/qpQ6yP+wRwDEHxKbQZOrt3Ensnj8OrlR2uwjcsuYLEYv2UnLmk+RugLonbHw8EzP3fZgeZmA7
	EtIrV/7G3YdAvTDC8zd/cSn3gqVhey+OEHSyQQ1MlVBRRfzzIjZ4/GvUaDEYqdQ1GHjsXoCB17cEk
	JPOKP+wkQ+qNHMqoK2CyDpuDMwep9uL+9NzqRz1DAevnaSFOte1e+tFntW9tG6fOncpeSo37OBcP4
	XpM65iUxRLxm4Xifn2HoTGPs8qJchuW13HE8zEJGeJvJppxlLbI9+gsPEfbl2N7fqb51w84Z5iIGc
	EAyD9wcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQGR-0000000AWBR-0oac;
	Thu, 30 Jul 2026 12:53:31 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQGN-0000000AWAU-3Bbo
	for barebox@lists.infradead.org;
	Thu, 30 Jul 2026 12:53:29 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 1A7444E41008;
	Thu, 30 Jul 2026 12:53:23 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E3340602B8;
	Thu, 30 Jul 2026 12:53:22 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id EE38711C15BE8;
	Thu, 30 Jul 2026 14:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1785416002; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=RpsewvNeFjxVeOb8jnFsSBDqdfs7EO3aDGD7oRk275E=;
	b=2dzuKlS+bDTXnZ57torfbf9AUt6qrgwc09mrfFFKTCp+aekdhmsA4ukdpvC5+9jRw4IVo0
	t+ZReEgXrLc5IIJBAq4+zaP81E0qvHrxAKJDLWHzsKVv6CnMqHRaU0/9INsz+DEgILZCey
	H4Sz0SmwLRo67nCW3uIotykUeVIygNT112pCDMR0hkvfGcLATC2YH/gMxYsjLtVSB4jI2A
	qpcYvKOaHkxMahZrnXXKNlFnIr76C7m3roSJYDxSRZY6y7AkXOTjrt/O3Klp7lF3hxIsou
	c0+0Qm5BwSQmi45jj1Kcn5gKH97X2H6Ehl67FU+WuTnsTVOlRlSdsnFVzE2CRw==
From: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Date: Thu, 30 Jul 2026 14:53:20 +0200
Subject: [PATCH] sandbox: enable keytoc in hosttools_defconfig
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260730-add-keytoc-to-hosttools-v1-1-e657e5f1b36b@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQrCQAxA0auUrA1MR+qgVxEXbSa1UWlkEkUpv
 bujLt/i/wWMi7DBoVmg8FNMdK5oNw3Q1M9nRsnVEEPchbQN2OeMV367ErripOauejMc07DntqN
 IXYJa3wuP8vqdj6e/7TFcmPy7g3X9ADW6yNN7AAAA
X-Change-ID: 20260730-add-keytoc-to-hosttools-f7b9e15c2c57
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_055327_952633_E00A13D0 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  keytoc generates a C representation of a cryptographic key
    from a PEM file. This is useful to embed a key in barebox, for example for
    secure boot when barebox needs to verify the next boot stage. Enable CONFIG_KEYTOC
    in hosttools_defconfig, as this defconfig is meant to build the useful host
    tools provided by barebox. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: kb94q8zgh6ghru7zn78xktuh43eq19mx
X-Spamd-Result: default: False [-6.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,bootlin.com:s=dkim];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,bootlin.com:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: B9D3A202C52

keytoc generates a C representation of a cryptographic key from a PEM
file. This is useful to embed a key in barebox, for example for secure
boot when barebox needs to verify the next boot stage.

Enable CONFIG_KEYTOC in hosttools_defconfig, as this defconfig is meant
to build the useful host tools provided by barebox.

Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
---
 arch/sandbox/configs/hosttools_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/sandbox/configs/hosttools_defconfig b/arch/sandbox/configs/hosttools_defconfig
index 22b50ab08a..dc335a6c33 100644
--- a/arch/sandbox/configs/hosttools_defconfig
+++ b/arch/sandbox/configs/hosttools_defconfig
@@ -6,3 +6,4 @@ CONFIG_MVEBU_HOSTTOOLS=y
 CONFIG_OMAP3_USB_LOADER=y
 CONFIG_OMAP4_HOSTTOOL_USBBOOT=y
 CONFIG_RK_USB_LOADER=y
+CONFIG_KEYTOC=y

---
base-commit: 11e39e515f94fca224c799c85e712643316db762
change-id: 20260730-add-keytoc-to-hosttools-f7b9e15c2c57

Best regards,
--  
Thomas Bonnefille <thomas.bonnefille@bootlin.com>



