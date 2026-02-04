Delivery-date: Wed, 04 Feb 2026 12:47:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnbLh-008jxr-1x
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 12:47:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnbLg-00088x-Jf
	for lore@pengutronix.de; Wed, 04 Feb 2026 12:47:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uSacjWbpvYqoBZV8ArqFb6pjKENdblOA6B7tq+NuJNQ=; b=G7gE/ckUOI0fY5lPm1Tp0lwNjX
	JMqYSNuLbsC7rbLI+0wkYmW6t4nLcyfFpV4zwHykJMgRJt1JOWj5X5Tu5w80wiuJsBQTFUa8Fkkdb
	zeHPNfzvMCPkkEq48UeJeOHJS9JXpUje2dIPR+ssHblbObYdny7yIDNSTNaCRA4F8ap//eci9BBPY
	rak/7AlIexACAxz3rOcHnDHbGJErzK8o84GxyyuSoi+7BoRDCkBgr1lwgxYCXUKdANUbUqP4Xu+fU
	5ecPHEnrJ+yDTzpf+0pFsldvom4FsAF5ndKNcN7OiYezl6/WThdhCNTe4NO9ktKP+lqlNcnmPO1yY
	cu6cpyHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnbL8-00000008Nte-0taN;
	Wed, 04 Feb 2026 11:46:34 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnbL4-00000008Ns5-26ZS
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 11:46:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1770205586; x=1772797586;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fZFZ69Mt1n9tOsAf83nYh81pjJtpC7sJG2CQcukJan8=;
	b=K/zWV58cgs82B9vExhX8I0QoNGFmMg4oD7RhbXxlhxdFZ9sE82vZd6NbmHIZ57bo
	RkdzUej8+VAHyTM2rHEJGIR4a5lBIXrp/HWftuNRY1z04LOSCnigfD7SfTYcsj/J
	0KGn7rT4I0lDjF9OW2Dm+Cb+XpENHQhDZkp1BXqcfRbftVLJ+GK32wjThSwahvdN
	46I0RPD0tRNtK1iG8p27oYM8LaKcNDsVHc4m3+0aLpiIgkCqNSVbx6bpwkdteNXO
	iLXGHQ40Iv6pFdKooWmTcUYHuqUYLjUUFmNi/6PW9Vx9WPBtDDkHaQrsQWpC4WXV
	EgKufNdF9InW2Z463UvOlg==;
X-AuditID: ac1001d4-ba83c380000daae5-06-698331922c7c
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id 2D.ED.43749.29133896; Wed,  4 Feb 2026 11:46:26 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Wed,  4 Feb 2026 11:46:18 +0000
Message-ID: <20260204114621.2130261-2-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204114621.2130261-1-renaud.barbier@ametek.com>
References: <20260204114621.2130261-1-renaud.barbier@ametek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMJMWRmVeSWpSXmKPExsXCtT5hnu4kw+ZMg4cvxS1OLO5ntpj+NsiB
	yWPezgCPzUvqA5iiuGxSUnMyy1KL9O0SuDIuHTnGVLCEvWL/0VOMDYy/WbsYOTkkBEwk1rU+
	Y+9i5OIQEtjJKLHl2mF2kASbgIHEv6Nf2UBsEQF5ibn728AamAX0JDouTGQCsYUF7CQWztsP
	Vs8ioCpxZcoSIJuDg1fAQeLHBH2I+fISi3csZwaxOQUcJR78fQxmCwGVdD34zQhi8woISpyc
	+YQFYry8RPPW2cwTGHlnIUnNQpJawMi0ilG0NFu3KDUnsdLQWC8xN7UkNVsvOT93EyMwXNYI
	MF7ZwXjn0we9Q4xMHIyHGCU4mJVEeNOn12cK8aYkVlalFuXHF5XmpBYfYpTmYFES512750Oc
	kEB6ItCU1NSC1CKYLBMHp1QD05Q1Dwz7Xi17/YipvefHh6OyPvPiVnftn/SS8e+E7o9fE2dw
	Lzv0ZpXW5tDLs2xDa/0kP+yb3yGV8uHLf63XzGv2x/UxHGFQmBXxaNJrQ3ZmgSvJ+75kuHa/
	tffSFZ3naMC56+wVzn0B707+rdhXN5f/2AO1q50rs+4/fyBW/4GJ8ZT6/8w9FyZFJ+rcF4k9
	vtRmtfMRse/b41OzOcOipWfVtb/d6SfJL/Z3XTzTtGmbdkSoT17Ip6Jw+lJssXX4J1FVo6UH
	lN49PpLxnG21xlzhh80ds+q+payxbN/Yv8vm33mxC6rf1qo+++X85UBg6stoK/drQVdei00I
	TJhdsL46N7b9W0Rm2eNbTJ2mfI5KbMUZiUamZlrMRcWJAJiUGeuIAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_034630_681558_851731B3 
X-CRM114-Status: UNSURE (   8.75  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] net: gianfar: disable link information
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Link information are provided by the PHY layer so turn the information
messages into debug messages.

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 drivers/net/gianfar.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 18b3c8849c..d0f606279f 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -121,11 +121,11 @@ static void gfar_adjust_link(struct eth_device *edev)
 		out_be32(regs + GFAR_ECNTRL_OFFSET, ecntrl);
 		out_be32(regs + GFAR_MACCFG2_OFFSET, maccfg2);
 
-		dev_info(&edev->dev, "Speed: %d, %s duplex\n", priv->speed,
-		       (priv->duplexity) ? "full" : "half");
+		dev_dbg(&edev->dev, "Speed: %d, %s duplex\n", priv->speed,
+				(priv->duplexity) ? "full" : "half");
 
 	} else {
-		dev_info(&edev->dev, "No link.\n");
+		dev_dbg(&edev->dev, "No link.\n");
 	}
 }
 
-- 
2.43.0



