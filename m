Delivery-date: Thu, 27 Aug 2026 14:17:26 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzZ2s-007nBh-0J
	for lore@lore.pengutronix.de;
	Thu, 27 Aug 2026 14:17:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A9775200FE5
	for <lore@pengutronix.de>; Thu, 27 Aug 2026 14:17:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZxAuQgbV;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=NGvjeI9j;
	dmarc=pass (policy=reject) header.from=bootlin.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+5NAV3ctVrzcNL/yk80vSX+lJ0lD2xT+Ye8VBbquniI=; b=ZxAuQgbVSF5Y1TDwTOijWqZoRp
	M+55VH5HJeA51pce9eapQTX2kq4kAlQqzt42euGLGJPxUaMDpD8VEiWvRqiwtwAXUqFU14Y0zwDI5
	a7AReJJCFseuwl9LGV2mnqUxjmYyc1AYvi+Fho1vMzjNuIW22GPLcA1+Wp7RXW91LUTsXFCEB2rFZ
	4qjDRTyf7BqpHUVPnrXSNHkR6pvlpdv9+N5queJZ08U2uVCueIjzETqXmCg35MiS5426vW0MdA7u/
	ipb9WvHavhaIverUadkQ4r144oytVRauAR0G0EKvanzXahNr0mFIGbDFJrQ7XXDW1DaRaMmgGXlQ3
	vzfXtbgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZ2T-00000003whe-2JAj;
	Thu, 27 Aug 2026 12:17:01 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZ2Q-00000003wgD-2m7K
	for barebox@lists.infradead.org;
	Thu, 27 Aug 2026 12:17:00 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id C0A8B4E413DC;
	Thu, 27 Aug 2026 12:16:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 95141602B8;
	Thu, 27 Aug 2026 12:16:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B470A11C7801B;
	Thu, 27 Aug 2026 14:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1787833009; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=+5NAV3ctVrzcNL/yk80vSX+lJ0lD2xT+Ye8VBbquniI=;
	b=NGvjeI9jf7T2CAPT+mn1UP92SW2kt3SL50AQY+3qCNm1OOpB50DhvczUNp/unFLaZgY2kP
	S2wiY6f8fu3Na8LeRdsFMtXQ5cquXQC6XfOKkvjjwIUezpiMX8lpUTyJcvQtVRufaAI9U/
	rqSx3PVWpHt4u2vWqIA95dS10WwCrdxjkkloeTInmpsZUaks6zXuidsf2644GkjjILK2Yr
	emgOtE5ambWqg44YOxyUXJkNnPjO9dyA+BZji5EV/bJHV5qzJ3Rv5l3KX+E9VfSYq4KcjS
	FbLKWrcbnKd4dOc22cjtM7/jEiDeNGNZeXJGIATyI813ujDf8s/lIFIq1tCwug==
From: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Date: Thu, 27 Aug 2026 14:16:47 +0200
Subject: [PATCH] bootm: add fitimage command line to bootargs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260827-add-cmdline-fitimage-v1-1-56701e1f0093@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMywrCMBCF4Vcps24gHUu9vErpIplMdMRGSVIph
 Ly7UZcfnPMXSByFE1y6ApHfkuQZGoa+A7qZcGUlrhlQ46RPeFTGOUWre0hg5SXLatpmRD9Z5PN
 B0wDt+orsZf9l5+XvtNk7U/62oNYPb3NotHgAAAA=
X-Change-ID: 20260827-add-cmdline-fitimage-42f6b2e930c1
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>, 
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_051658_883627_7A113CF8 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Since FIT image specification v0.9, it is now possible to
   pass command line arguments for the next boot stage in FIT images. Add parsing
    of the cmdline optional property when reading the fitimage. This create a
    `linux.bootargs.fit` global variable that will be appended to the command
    line when CONFIG_FLEXIBLE_BOOTARGS is en [...] 
 
 Content analysis details:   (-0.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
                             [URI: linux.bootargs.fit (fit)]
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
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,bootlin.com:s=dkim];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,bootlin.com:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 45idrn73ficrotp8znk6sqd6g8m9f9ig
X-Rspamd-Queue-Id: A9775200FE5

Since FIT image specification v0.9, it is now possible to pass command
line arguments for the next boot stage in FIT images.

Add parsing of the cmdline optional property when reading the fitimage.
This create a `linux.bootargs.fit` global variable that will be appended
to the command line when CONFIG_FLEXIBLE_BOOTARGS is enabled.

Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
---
 common/bootm-fit.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/common/bootm-fit.c b/common/bootm-fit.c
index f7742b8717..313d12ca74 100644
--- a/common/bootm-fit.c
+++ b/common/bootm-fit.c
@@ -3,6 +3,7 @@
 #include <bootm.h>
 #include <image-fit.h>
 #include <bootm-fit.h>
+#include <globalvar.h>
 #include <memory.h>
 #include <string.h>
 #include <zero_page.h>
@@ -97,6 +98,18 @@ static bool bootm_fit_config_valid(struct fit_handle *fit,
 	return !!fit_has_image(fit, config, "kernel");
 }
 
+static void bootm_fit_config_cmdline(struct device_node *config)
+{
+	const char *cmdline;
+
+	if (of_property_read_string(config, "cmdline", &cmdline))
+		return;
+
+	globalvar_add_simple("linux.bootargs.fit", cmdline);
+
+	pr_info("Using command line from FIT configuration: %s\n", cmdline);
+}
+
 static enum filetype bootm_fit_update_os_header(struct image_data *data)
 {
 	size_t size;
@@ -146,6 +159,8 @@ int bootm_open_fit(struct image_data *data, bool override)
 		goto err;
 	}
 
+	bootm_fit_config_cmdline(fit_config);
+
 	loadable_from_fit_os(data, fit, fit_config);
 	if (override)
 		data->is_override.os = true;

---
base-commit: df1055a2e0ddd3f96939327f2f0eb9db13a2bdc6
change-id: 20260827-add-cmdline-fitimage-42f6b2e930c1

Best regards,
--  
Thomas Bonnefille <thomas.bonnefille@bootlin.com>



