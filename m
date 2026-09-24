Delivery-date: Thu, 24 Sep 2026 20:02:09 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9nlp-005rkr-2r
	for lore@lore.pengutronix.de;
	Thu, 24 Sep 2026 20:02:09 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9051420210F
	for <lore@pengutronix.de>; Thu, 24 Sep 2026 20:02:05 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gjhZKC5w;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=J1otzZ29;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=bootlin.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790272925;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=h8Vmz02em/YQlsi7a3ABkCScAG5td2vZb5w9ISu4s2M=;
	b=Dkd932KgYo5qdBUPiZKV4HjNI3VTp7bV4BhvGCVwoGu8KNABUYotQ1cyS+IrEbUB9edn8b
	14rD7+fqKgExi9M0yMuPwHfhV4GRLNUGdJjfpsjelBcJkN7hAEHOeGe/KQH3CpuwNXgvdI
	DSXDf2f5JTKaF1s5Vh0rB44/70pi2HE3GQh60wcK85dXdHXck5j4ry08zl9yDS71iWoD6q
	bTCToGSgD5wdU1X7slmITB5+PxC9+1jHAhcq3/pDd7DWteHdB6jWcQPHok4Kl8b1+4J74h
	MArkeXfaiSagC8M0/GkcCktgL6mv7yQR9CTfOFduRdZGU9nQDwzad1EPP+KvEg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790272925; a=rsa-sha256;
	cv=none;
	b=XpZm2/jFbr2XHBqwfTEA8I4au4ZKTiQghT0rUT/TkHP1VGicTZhISCm+Pq9AMf5E8zXaht
	fR9SJTP6FZlfZ5iDKHLp1QKUdbrvgSmEwaSBqdREIZe7JANP0j9rgksdpGL2Vt6kxGkydd
	PuzgL/po+FXsaHLRitLydwf15uzZJxEx/WyFI10Q/CJGjZMjDAAdMBlVLSNt+bKo5Ang0B
	ZZyQHiB7v8XXxzPUMl9yS2FOZ0MDtdP6kGym7R5tubKnBcFKTOnt3Bx6H9qXTyAfJPSm56
	8OAmwqa2zOtcrdh8q8wbfsiIwMO8nBHI49Dn0IdO6N062SNFzHL1/yNqtxBr/g==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gjhZKC5w;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=J1otzZ29;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h8Vmz02em/YQlsi7a3ABkCScAG5td2vZb5w9ISu4s2M=; b=gjhZKC5wj4yjxQETC2JNpQafsi
	4cSLZ/oqi/cpo2xcBfsVwl8sJF08x8Uvy7eRbZ5+bxL3G339buQlhKA8HVf+eb7p8fqIkmV8xjF54
	yRHLox02Yofmi0oJivxHLDkroWsnwHCf4fyn7YUGhxGEz0A7YXaIAKRQx1mw1kG8ZwHppN7Mj+xN2
	WBMAQox5cDBlcihiN58h3odATXXdpqiZ6/UKp1KzdqoEjUzMKB5y2Lv2xHaIOaDiGIAt8ss2/Ydmf
	bVWMDPqrsieO/xbVqiYw7AQ2UVaixUmMK0/f00a7P+V7ZOIFHPMVnIlCxBbn9z8v1mEfay2xBEjvY
	IhZ8N1xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nkG-0000000Br2A-44b6;
	Thu, 24 Sep 2026 18:00:32 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nkE-0000000BqzH-0HAg
	for barebox@lists.infradead.org;
	Thu, 24 Sep 2026 18:00:31 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 9EDD5C211F5
	for <barebox@lists.infradead.org>; Thu, 24 Sep 2026 18:01:14 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 16AB160738;
	Thu, 24 Sep 2026 18:00:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D121210328BAC;
	Thu, 24 Sep 2026 20:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1790272822; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=h8Vmz02em/YQlsi7a3ABkCScAG5td2vZb5w9ISu4s2M=;
	b=J1otzZ29vu/DtKOO7MBDd5hQBnz0nJhQ8NoEaQqDscu+FwJsO9aBTaDsT7ZQ65N8WuMUKq
	tImvyRWa5EFKPyKV7d3j0jrIfDZ1f3IZE3/dkUofNhBJpEgx08NpM45ayIi5+WTu7RkOsv
	UyaLFAbrOBN18N5oVTGhFF1kJ/nWmfBlP+11v/87G4T7N9h8URj9C9P9PjDYYqGpoKppao
	NWDvtU2PiDfiKv3J1SWBGpTqd4M4zZdYO8vv1KSoweeww1eZOlfOdxRbVtXM8MAMxktBzU
	P4TedjEV+fEtWOhytE5NRVwMfax/pgqSKoi7Wc0ofyQIGI4saHmBkJ4MwgLPQA==
From: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Date: Thu, 24 Sep 2026 19:59:31 +0200
Subject: [PATCH v2 1/3] bootm: add fitimage command line to bootargs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260924-add-cmdline-fitimage-v2-1-4a665e165002@bootlin.com>
References: <20260924-add-cmdline-fitimage-v2-0-4a665e165002@bootlin.com>
In-Reply-To: <20260924-add-cmdline-fitimage-v2-0-4a665e165002@bootlin.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>, 
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_110030_286816_B03F5021 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Since FIT image specification v0.9, it is now possible to
   pass command line arguments for the next boot stage in FIT images. Add parsing
    of the cmdline optional property when reading the fitimage. Create a `linux.bootargs.dyn.bootentries.fit`
    global variable that will be appended to the command line when CONFIG_FLEXIBLE_BOO
    [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 T_PDS_OTHER_BAD_TLD    Untrustworthy TLDs
                             [URI: linux.bootargs.dyn.bootentries.fit]
                             [(fit)]
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
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,bootlin.com:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 9051420210F
X-Stat-Signature: mfujt9e3h4but5d9s7j5y6wn8ki6e1r4

Since FIT image specification v0.9, it is now possible to pass command
line arguments for the next boot stage in FIT images.

Add parsing of the cmdline optional property when reading the fitimage.
Create a `linux.bootargs.dyn.bootentries.fit` global variable that will
be appended to the command line when CONFIG_FLEXIBLE_BOOTARGS is
enabled.

Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
---
 common/bootm-fit.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/common/bootm-fit.c b/common/bootm-fit.c
index f7742b8717..c7142f490f 100644
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
@@ -97,6 +98,21 @@ static bool bootm_fit_config_valid(struct fit_handle *fit,
 	return !!fit_has_image(fit, config, "kernel");
 }
 
+static void bootm_fit_config_cmdline(struct device_node *config)
+{
+	const char *cmdline;
+
+	if (!IS_ENABLED(CONFIG_FLEXIBLE_BOOTARGS))
+		return;
+
+	if (of_property_read_string(config, "cmdline", &cmdline))
+		return;
+
+	globalvar_add_simple("linux.bootargs.dyn.bootentries.fit", cmdline);
+
+	pr_info("Using command line from FIT configuration: %s\n", cmdline);
+}
+
 static enum filetype bootm_fit_update_os_header(struct image_data *data)
 {
 	size_t size;
@@ -146,6 +162,8 @@ int bootm_open_fit(struct image_data *data, bool override)
 		goto err;
 	}
 
+	bootm_fit_config_cmdline(fit_config);
+
 	loadable_from_fit_os(data, fit, fit_config);
 	if (override)
 		data->is_override.os = true;

-- 
2.55.0



