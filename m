Delivery-date: Wed, 25 Nov 2026 18:34:57 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWGtV-003Bhz-0g
	for lore@lore.pengutronix.de;
	Wed, 25 Nov 2026 18:34:57 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AD689200F84
	for <lore@pengutronix.de>; Wed, 25 Nov 2026 18:34:53 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=veJuPmoV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795628093;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=6f1p67QXph3G+diEBm6swgPbhi+xSoR1cx9t6myQzNs=;
	b=fp4RbnjWi4w6+YBZ5J0q13VAaYIQLBWpbGxtZUhc+yic/GTe9YPm7Z7CEmgSfWzjIRLmnE
	XZxwmmGOzHG+lRHJcTW5FrJmVwhQxUz5fOgsXifejLKh4X+MBOKP9FOdi7szQcQWHNFzky
	KmB78+jLFu/C0AZmPEkRs1KUsEy8/q3XTAJBqsz8pFcWXjVilBJ0gEL6/02TLMl3F3r+5n
	OT/gOeuOOBzL4jYX4s8EzBW8ewoyq8PDHqYHD2dCEp9JMg4zZEE338/OjJykZIVPOfQIgs
	h3yHksF4sDPSdsVzoaoqDQoRq0y1PrUijkq2MK8y/LZAVzhtt3F7/SKGuI6EwQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=veJuPmoV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795628093; a=rsa-sha256;
	cv=none;
	b=T4G6+isT+1DZMS3hukCi1k5yJn+iUgVOKCIkluD9UTfKjlXv23gZ4Gf3K8wR05mA0koRaU
	eUH0xKIauUFG91Q36TqE8+HOY/hXVwoGxRyuj3t9qvBpeFFaY5qYG0WQ2bIYaj8IU7j9ID
	6FS2wHHw5SG8dls7ZGb1r6rI/Wq/3AP2ULl++fArYe83yedvgKQXBr1SKjh5P1etbj8Y/P
	hWrHDvFyYa70Q+Eks0KIj3U0UjVe+f+wNECoUJRlpvAqO6dbgEp2r0fSbaTmXYgiUfZ1BU
	KvQw2WkaqDgSNEYXMMYSstZCeRQ9xFq1pFL771yUq4ScyU2+UfHRtE30OAOMdA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=6f1p67QXph3G+diEBm6swgPbhi+xSoR1cx9t6myQzNs=; b=veJuPmoVUkaLAx
	xFZveNRXpPniwimUwgQzJcAKmllWQBW7/khqzU79yjVR/eb607l/2CANwtFbBfhK5Lu3KiA0mDhEJ
	vbzH+6A6M8EILfpi8978rmuvQZqnKA3wJWPcClBYAKG3WkmdxssGF+/HFnVMh/UTZ7mMA+zm3kapW
	O54rMFbrE7Dg0MOWsv58Ue718w+bZ9YZui35prP6CnzuJouCookQWakDcYBIkeSjuD/xdgWL0jLln
	BAr6xI4j0ogNGMdnrF2KGh4BQkabKamX2uNqdZgXdqJo1fRg815f6aNilQYYul3uvGHfHp5WHH9Fs
	s6jfU4ndks78lWrFZjfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWGsS-0000000AkdU-43Kj;
	Wed, 25 Nov 2026 17:33:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWGsQ-0000000Akbm-2gP3
	for barebox@lists.infradead.org;
	Wed, 25 Nov 2026 17:33:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.guest.stw.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xWGsP-00086w-33
	for barebox@lists.infradead.org; Wed, 25 Nov 2026 18:33:49 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Subject: [PATCH 2/2] clk: scmi: limit clocks to the rate range reported by the firmware
Date: Wed, 25 Nov 2026 18:33:45 +0100
Message-ID: <20261125173348.1514894-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261125173348.1514894-1-a.fatoum@barebox.org>
References: <20261125173348.1514894-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_093350_846396_C5BB8A8F 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@pengutronix.de> Linux clk-scmi
    driver registers the lowest and highest rate of each clock as rate range
   and the clock core clamps all requests to it. barebox didn't and so in the
    incoming Amlogic A9 support, TF-A would report: 
 
 Content analysis details:   (-1.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.7 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.9 DMARC_NONE             DMARC none policy
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
X-Stat-Signature: oiya54n1ocywwmdin49w9gytffuyx7kf
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[barebox.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:2:b01:1d::104:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: AD689200F84

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Linux clk-scmi driver registers the lowest and highest rate of each
clock as rate range and the clock core clamps all requests to it.

barebox didn't and so in the incoming Amlogic A9 support, TF-A would
report:

  NOTICE:  fclk_div2 does not allow modification through scmi-clk

because determine_rate returned the requested rate as is and the clock
framework assumed the clock can run at any rate.

Now that barebox supports rate ranges as well, do as Linux does.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-scmi.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-scmi.c b/drivers/clk/clk-scmi.c
index 79e2c65f847d..ddccd568b723 100644
--- a/drivers/clk/clk-scmi.c
+++ b/drivers/clk/clk-scmi.c
@@ -179,6 +179,7 @@ static int scmi_clk_is_enabled(struct clk_hw *hw)
 static int scmi_clk_ops_init(struct device *dev, struct scmi_clk *sclk,
 			     const struct clk_ops *scmi_ops)
 {
+	unsigned long min_rate, max_rate;
 	int ret;
 
 	struct clk_init_data init = {
@@ -199,9 +200,18 @@ static int scmi_clk_ops_init(struct device *dev, struct scmi_clk *sclk,
 
 		if (num_rates <= 0)
 			return -EINVAL;
+
+		/* the rates are sorted in ascending order */
+		min_rate = sclk->info->list.rates[0];
+		max_rate = sclk->info->list.rates[num_rates - 1];
+	} else {
+		min_rate = sclk->info->range.min_rate;
+		max_rate = sclk->info->range.max_rate;
 	}
 
-	return ret;
+	clk_hw_set_rate_range(&sclk->hw, min_rate, max_rate);
+
+	return 0;
 }
 
 /**
-- 
2.47.3



