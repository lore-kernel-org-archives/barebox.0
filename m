Delivery-date: Sun, 08 Nov 2026 11:43:48 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQ0NI-008eWE-00
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 11:43:48 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 03E77200243
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 11:43:48 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SVCz3jJs;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794134628;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=l8HE8bKLm76CMUgPUz1u4HRkccgEwz9imRmfSzH0EJs=;
	b=QG+jS3lKtKM1oIxLMkQ1xPoE5sdSyUy4ogr4ei8sB+GyQyh7uRrLtw8aNRRM+NxktdOQM1
	wv0sT0nAoKTrLKs2N/TY8wsGYQYKTUAVP4PEFChemKxuSCQn/kglQmKdsthk0p5oKFGn8T
	+uGperw/3JNOzVK1KraWsKNNHvZBHXgE7XvqYBvZ+qtCt4Q3H0KspPrxd7GOiQQqaKpLIH
	18c9Eyvq7nIY4OT/ku68AFcenPTt5nU9hov1ybPVkkGv/v5ss7qph7ke3T/ne79GkmQ5aW
	7g7ScDaUMjzQ+BBWzcYbtLKoivP9IiIMY/BVSr3TfKlU1wRXOHqxLINTuJOiow==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SVCz3jJs;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794134628; a=rsa-sha256;
	cv=none;
	b=Tda5EMA3Wpf6jIxtKlxBhVEixI+krngHhrYlolMY8n81rNo+Dt0CBl3GtdUAaklUUWFv3o
	7Dk8KgNdtdqOuv0jEXotLQnATTeGtfJ04aqZIAbSuS/Nnr/Xo36/34wHy4a1g3p5P4VHYt
	ccbZBuEG4+VUPWU6ZtRVHfTLCMCbqq6xF8xrLM50Il5EdaW4tQMqgeS3bX070xRLF3nNX1
	H2zqiJU2G8fJufwCaqyWLvaxGVaTmOowY32LhEGFFx/MdZobVwXEe+PxB713YLcxBsBzJn
	dBNsy7EVqvjQzn0FNzJer8YqnkOll89fddpnfiO53hbVjHiR5nzWJaT6aAWwxw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=l8HE8bKLm76CMUgPUz1u4HRkccgEwz9imRmfSzH0EJs=; b=SVCz3jJsyxuD/a
	fpNf54hrLG35njUFweIKQin5yuHPfZq54QKQmwo+bd/W4OOsBArUJ2s9NMv720tti+uWU//pFd2tC
	OAeMGNHOx0BqD4SjjAkQ3WhS4I/iNJXlmNhl+jUwm4k06fyJtP8qKBadaFjdtfwlZd0amGRNy141h
	3ma2IfYILkt6nILnzPS8pBY8hHjSPqWgafufdvE3/sgxrVfkvzcNmmCaBhc2wC9DjMMTzUqMzKBDt
	oPjj8ZAsTY/oKp0x+BTauzzpR/ECcFOXeUDWOKYDIEYeX27Oy9DubAMwq6nnOPXAd1G+pGXJf9mSu
	fg3VSvdlfTrEwEDXqNzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzro-0000000FwvN-1mBB;
	Sun, 08 Nov 2026 10:11:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzrl-0000000Fwta-10aV
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 10:11:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xPzrj-0006Qx-Bh; Sun, 08 Nov 2026 11:11:11 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/4] video: dw_mipi_dsi: refuse transfers while the host is powered down
Date: Sun,  8 Nov 2026 11:10:52 +0100
Message-ID: <20261108101110.1270196-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261108101110.1270196-1-a.fatoum@barebox.org>
References: <20261108101110.1270196-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_021113_285740_0ADBB083 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The host is only set up between VPL_PREPARE and VPL_DISABLE.
    A transfer outside that window, e.g. from a panel driver or a debug command
    while the display is off, ends up with the controller held in r [...] 
 
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
X-Rspamd-Queue-Id: 03E77200243
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: mhqtwuiupxywewdzb434pj63xthcrs6o

The host is only set up between VPL_PREPARE and VPL_DISABLE. A
transfer outside that window, e.g. from a panel driver or a debug
command while the display is off, ends up with the controller held in
reset: writes are reported as successful without anything being sent
and reads time out. On SoCs whose glue doesn't keep pclk enabled, the
register accesses would hit a clock-gated block.

Track whether the host is powered and fail transfers early with
-ENETDOWN otherwise.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/dw_mipi_dsi.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/video/dw_mipi_dsi.c b/drivers/video/dw_mipi_dsi.c
index b6a53844edec..c936463261a5 100644
--- a/drivers/video/dw_mipi_dsi.c
+++ b/drivers/video/dw_mipi_dsi.c
@@ -245,6 +245,7 @@ struct dw_mipi_dsi {
 	u32 format;
 	unsigned long mode_flags;
 	struct fb_videomode *mode;
+	bool powered;
 
 	int vpg_mode;
 
@@ -447,6 +448,11 @@ static ssize_t dw_mipi_dsi_host_transfer(struct mipi_dsi_host *host,
 	struct mipi_dsi_packet packet;
 	int ret, nb_bytes;
 
+	if (!dsi->powered) {
+		dev_dbg(dsi->dev, "transfer while host is powered down\n");
+		return -ENETDOWN;
+	}
+
 	ret = mipi_dsi_create_packet(&packet, msg);
 	if (ret) {
 		dev_err(dsi->dev, "failed to create packet: %d\n", ret);
@@ -827,6 +833,7 @@ static void dw_mipi_dsi_bridge_post_atomic_disable(struct dw_mipi_dsi *dsi)
 	 * Note: panel-bridge disable & panel disable has been called
 	 * before by the drm framework.
 	 */
+	dsi->powered = false;
 	dw_mipi_dsi_set_mode(dsi, 0);
 
 	if (phy_ops->power_off)
@@ -885,6 +892,8 @@ static void dw_mipi_dsi_mode_set(struct dw_mipi_dsi *dsi,
 
 	if (phy_ops->power_on)
 		phy_ops->power_on(dsi->plat_data->priv_data);
+
+	dsi->powered = true;
 }
 
 static int vpg_param_set(struct param_d *param, void *data)
-- 
2.47.3



