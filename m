Delivery-date: Sun, 25 Oct 2026 10:41:40 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xKujU-0033Ky-1e
	for lore@lore.pengutronix.de;
	Sun, 25 Oct 2026 10:41:40 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 87007201E0D
	for <lore@pengutronix.de>; Sun, 25 Oct 2026 10:41:40 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xNYOU+bf;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792921300; a=rsa-sha256;
	cv=none;
	b=DKu338xpF59k0+9GY8VoLMRAFtykKrA4QDVxMMzQHcYZwbxJ4R/SxYh/y0KYcp6SeHnCGr
	w1Pzn7Gm5Y2CiFF5km/Che79K1kKAAdGFIF1u53iwcNI0yuDuUUYXLj8icul4XVb0qQxid
	HmoQWULbDu2n0c89Gm3ZjqMhd4HK85ojGhEJFdVetyo64T6DlLPLfIzxPfUnSwC2Xo/S+r
	gnsdwBos7T1fvKTw+578027juwoEOJTSHk2SRDJJeyWMpCfBooDM433tFfpSD5Di2xXnce
	3ajjCFj32yO3eX5zsQl/Ix4WoJd6eCUYF2mxKQkfqStDT3msxuUUbxlWHPR9NQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xNYOU+bf;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792921300;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=lmRov/KyP0tt9ViYqbs6NO6b7Ip/rvG4Pv+XhoeJHI0=;
	b=BjmkTSLfldc6iYpc4b2Nii3pYZCYyuLx6xb/88tsDGgyceDAefhIT0BHGQwS+6nYIwsuq/
	AwdOC0bMlzgytVk8Nx26iuPWn1D1a65nhOfUtHVm3xrmEqOCrq8Gdby1VIpn0ZJRulbRrh
	8xmLcp7PeZkDw1BSWPsConb9xSYAQS1Ov+vq+O/M4Ib1rohf/wkvisLZn19DJBxTp7yFv4
	IugntnKv81vf5DQSsDAVfVbwb8mWhffblmcySqQoNUVpBFFnw5VslULjsQBF/miywnjS1V
	jidVJpJ0JoDR3l6yYzSirfzou3nckO4A2tqbVfHOH/wExOx2uPaR9hCbtl3Byg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=lmRov/KyP0tt9ViYqbs6NO6b7Ip/rvG4Pv+XhoeJHI0=; b=xNYOU+bfpf0J5VRKia+0NYT02D
	pMkR9yuSm33BzvGtSV0Uv2+UgdTj19Ir2S5QL7giXzrqT1+nv9GF/qn9u0XY8KAB6ts5xBXUvaBfD
	di7Qtnf2zWaGckSvU2A8o6odZEeFMRPVDbyao1+TMYhTsJrEeTEUL64FOlxAPpbzD76wUBNPscKXV
	oqJTb7Bd0+RwXRyg+2F4kfj8xyrV+MLjjw/3ANscBaFaHkW1QUvXvKDA/5YmTc4j8tqTMQgb7fRX4
	WevuSlusvjpiKiE6OyZNTwgRwlVcDOswLBgPrv7pNUfmw2k2NMHSpfmXm6/XD077Ix60n/9Lci2ys
	+Ib3H8BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKudj-00000000vXA-4Bzx;
	Sun, 25 Oct 2026 09:35:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKudh-00000000vWT-2CHw
	for barebox@lists.infradead.org;
	Sun, 25 Oct 2026 09:35:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xKudf-0007Ue-Na; Sun, 25 Oct 2026 10:35:39 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/2] net: designware: wait longer for the MAC reset and report a timeout
Date: Sun, 25 Oct 2026 10:35:34 +0100
Message-ID: <20261025093538.2890451-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_023541_603898_1E032C42 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The DMA soft reset completes only once the PHY supplies the
    RX clock, which doesn't necessarily happen within 10 ms and indeed takes
   longer on a Libre Computer Alta if eth_open_all() opens the interfa [...] 
 
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
X-Rspamd-Queue-Id: 87007201E0D
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
X-Stat-Signature: r4johjokbeg3phuwayxu8s3dmmtq4xf4

The DMA soft reset completes only once the PHY supplies the RX clock,
which doesn't necessarily happen within 10 ms and indeed takes longer
on a Libre Computer Alta if eth_open_all() opens the interface right
after boot.

Let's wait 200 ms like Linux's dwmac_dma_reset() does since commit
56311a315da7 ("net: stmmac: dwmac_lib: enlarge dma reset timeout").

Also propagate the error through dwmac_ether_init(): so far, a possible
timeout while polling the bit was not propagated up to the probe.

Fixes: f0ae0c33f52c ("net: designware: Don't hang in reset with powered down phy")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/net/designware.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index de7d3dcf1090..09d11b1d02a3 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -92,7 +92,7 @@ static int mac_reset(struct eth_device *dev)
 
 	start = get_time_ns();
 	while (readl(&dma_p->busmode) & DMAMAC_SRST) {
-		if (is_timeout(start, 10 * MSECOND)) {
+		if (is_timeout(start, 200 * MSECOND)) {
 			dev_err(&priv->netdev.dev, "MAC reset timeout\n");
 			return -EIO;
 		}
@@ -262,7 +262,9 @@ static int dwc_ether_open(struct eth_device *dev)
 	if (ret)
 		return ret;
 
-	dwc_ether_init(dev);
+	ret = dwc_ether_init(dev);
+	if (ret)
+		return ret;
 
 	descs_init(dev);
 
-- 
2.47.3



