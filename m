Delivery-date: Sun, 08 Nov 2026 11:12:23 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPzss-008e4b-20
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 11:12:23 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D597B201FF7
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 11:12:22 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xbrKxEyp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794132742;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=7+5Nc09yLlzfD8BOTnAaywie6lvY2xcpNh0sQuJvCao=;
	b=d8yWA2+hLbdsuNPZLEzzjVQ0S8RaXAO+G04HSdeCivYqapmIRIMUf6lFjE8a34zZLjN3He
	L6b8tdPSoMKZwOmCAz/xRPFSKtzGyOZxfaALaJQumzdOR0rRX8jBMmzsVzhrVUVw85NfF/
	ALSS4wjW5oAdbTKV0DEvHyO2va2pexS4LjscNfbgtY3jAOJStyRkSwfxAyXoftDV0jIQlE
	69+BIXEnw4IkLtb4UYh9mIdOtWeTacwMv9BIiwt/P+pu1LxluOTeDw8H5+B6tKPI6+IzlH
	7zGp3Mfup+DfM4uu2v8GbzfG0YQjS1K+391CVhx7oWcbYGzlIb+VNHq9pmKKwQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xbrKxEyp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794132742; a=rsa-sha256;
	cv=none;
	b=Yru2UCX3QukpaZTquQ4XKrHGf2cQqVvUMwYiu8bBGNuUlJI7rc4mbtgfhRIdGkvbP/OsYz
	m3FjGULA6x6BUTWL3WnGWW2Jp58NxS587RmZul+V5XSTtMu7G2Uf2N9Qrbq7d1KOhjTw6J
	4BpRiEoKi5h70EVshfkiQTOGDoiWdKNVtj5KjI0HJVowX51BblSM4tsWYhz3svx/M6O5fO
	X2LmKA8ZryQFHX0VU6mRECdFBi3v99v5a/7z8hL59bkfoEe5ZeMNku3yxZv4uGm4I5YNHM
	hGuWdbemDppJZsYSBS1LuCF1IHlu9QxWV1jj+By0TSwwqvyjsQdgB50eW/k41Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=7+5Nc09yLlzfD8BOTnAaywie6lvY2xcpNh0sQuJvCao=; b=xbrKxEyphhexnzhyIx0sBEmlD5
	kQwb8XSQyMWytZ1S/8KwWIaxTRyC8yN30HjpyZCcZDODxBTIlPtgfRzCFO0SbF4CdG5xCKQiPYVgX
	FDxlFUvd0h9Voe0nTQ8a135mx+JsUQqfJAulTqU47oggS3pLgnP9+8WzdYvFasneovUcZWDHg03ma
	Z6BSSP73Cgf82LBXSI9VuE1v7VcfwnTOYRXiVYW/pk1NubxpNUsPoFrq34XSE8tnmd6ty+a5UzFxK
	Fayt6mH1wZ9Bwf93uUxsYu71F1S0H+Gk+BV1U3m+O2YNcbyuStg7n9pniDaC1Zj4BQcyR7c7ZPeJn
	fHzNN95A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzro-0000000FwvD-1HRN;
	Sun, 08 Nov 2026 10:11:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzrl-0000000FwtZ-10hz
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 10:11:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xPzrj-0006Qx-5K; Sun, 08 Nov 2026 11:11:11 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/4] video: dw_mipi_dsi: disable the panel before powering down the host
Date: Sun,  8 Nov 2026 11:10:51 +0100
Message-ID: <20261108101110.1270196-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_021113_286961_3D7FCCDF 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  VPL_DISABLE powered down the DSI host first and only then
   passed the ioctl on to the panel. The DCS commands the panel sends on disable,
    e.g. display off and sleep in for the OTM8009A, thus went into [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D597B201FF7
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org]
X-Rspamd-Action: no action
X-Stat-Signature: 95zui9bt8pnoyoudu93t97bmkatfjc5m

VPL_DISABLE powered down the DSI host first and only then passed the
ioctl on to the panel. The DCS commands the panel sends on disable,
e.g. display off and sleep in for the OTM8009A, thus went into a host
held in reset and never reached the panel.

Linux disables the panel before the host's post_disable, so let's do
the same and forward VPL_DISABLE to the panel first.

Fixes: 11331c15e5bd ("video: add Designware MIPI-DSI support")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/dw_mipi_dsi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/video/dw_mipi_dsi.c b/drivers/video/dw_mipi_dsi.c
index bf95b1b9f6ff..b6a53844edec 100644
--- a/drivers/video/dw_mipi_dsi.c
+++ b/drivers/video/dw_mipi_dsi.c
@@ -906,6 +906,7 @@ static int dw_mipi_dsi_ioctl(struct vpl *vpl, unsigned int port,
 {
 	struct dw_mipi_dsi *dsi = container_of(vpl, struct dw_mipi_dsi, vpl);
 	struct drm_display_mode mode = {};
+	int ret;
 
 	switch (cmd) {
 	case VPL_ENABLE:
@@ -913,8 +914,10 @@ static int dw_mipi_dsi_ioctl(struct vpl *vpl, unsigned int port,
 		dw_mipi_dsi_set_mode(dsi, MIPI_DSI_MODE_VIDEO);
 		break;
 	case VPL_DISABLE:
+		/* The panel may still need the link to send its disable commands */
+		ret = vpl_bridge_ioctl(dsi->panel_bridge, cmd, data);
 		dw_mipi_dsi_bridge_post_atomic_disable(dsi);
-		break;
+		return ret;
 	case VPL_PREPARE:
 		/*
 		 * We store this to simplify debugging by allowing:
-- 
2.47.3



