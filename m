Delivery-date: Wed, 03 Sep 2025 08:20:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgqv-007Y5E-1u
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 08:20:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgqu-0007Yd-Eh
	for lore@pengutronix.de; Wed, 03 Sep 2025 08:20:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2GbdhQsbSazIEKXn9H3pzF5wySblYe6e7ZIwoWJ9yOw=; b=LfcYz4REHPjWzSxp8cnHRBWwIf
	wvSzKRehXF5XKadPNfoP2BDSdXRN2AkgKwAY4v8e3QK9+HgYT2bk0p+h1nYidph0Bxei5WqlZlhyr
	kdVa8VOivtAp7pzgkYG/gUEtB+krU9I2S2/pVuBBzR4JUYmhwtdoTT3clFK2H/P+mtd9q2pc6JRBH
	g/TCmnGE1mt0KAYF5AfaGwMr/U0BH1oLfbPxH83ehCOtMUJGYZFtXQf6fXxmOJacrJd4WvML5Zgzw
	hq1PbRzN2QH0lMGwedhniPl5yalhE38jwC0ZZIu/GO87Cesg+Up0lknZvR2Rk8dK4eLeUdgLTkze/
	ubzNOEwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgqU-00000004Z4R-0YaP;
	Wed, 03 Sep 2025 06:19:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgmq-00000004X3j-2NlI
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 06:16:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgmp-0006Uz-FK; Wed, 03 Sep 2025 08:16:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgmp-003Vxc-0j;
	Wed, 03 Sep 2025 08:16:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgmp-00000009keH-0fqZ;
	Wed, 03 Sep 2025 08:16:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Thorsten Scherer <t.scherer@eckelmann.de>
In-Reply-To: <20250902130302.142251-1-t.scherer@eckelmann.de>
References: <20250902130302.142251-1-t.scherer@eckelmann.de>
Message-Id: <175688016315.2324208.6280433792193346825.b4-ty@pengutronix.de>
Date: Wed, 03 Sep 2025 08:16:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_231604_606239_5BC86B0E 
X-CRM114-Status: UNSURE (   5.22  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] doc/barebox-tlv: Fix typo in path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Sep 2025 15:03:02 +0200, Thorsten Scherer wrote:
> 


Applied, thanks!

[1/1] doc/barebox-tlv: Fix typo in path
      https://git.pengutronix.de/cgit/barebox/commit/?id=ebdb380017b8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



