Delivery-date: Fri, 20 Dec 2024 09:52:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYkb-00ANlm-0N
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 09:52:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYkb-00060t-3W
	for lore@pengutronix.de; Fri, 20 Dec 2024 09:52:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A08PM/9kpWwRzfabuLeO8wh1MW3vbqnyRxGHVg0QLlY=; b=luTLRb2r/+0R/4id0uJcOjFemu
	O3ECyFD3jQ3xzk8PoQ1+DdrqqPL94o3eTeJ0TZHK7N16vSBOsSj2jIWhHQaHKBxKCA9v2LWUi4IXs
	a6lsaQyHodGaCGKw62ZUs/puBr7G4O9VhqIDcfi4WmoC3A8wrdzL3/L2UaleRzZlUE6pBdzNeOrxG
	zZhryocdUMISUtbQ0eS4OB06bYqDM5FU3qsCtArHISmALavOoJ1tc6WIPPX+Mc2/7LieKwmV92lH1
	UrklQnsMVMeykARIAVDGS/TQcLN2W1xNvrDNdJzRlZaLopjTB0gw1iUqdbMXrNP0xYw5pFA0e3N0c
	bdwziTpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYkA-00000004KnG-1MCZ;
	Fri, 20 Dec 2024 08:52:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYjH-00000004Kdy-1ltL
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 08:51:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYjF-0005eV-VU; Fri, 20 Dec 2024 09:51:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYjF-004LX4-02;
	Fri, 20 Dec 2024 09:51:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYjF-00DDwd-2K;
	Fri, 20 Dec 2024 09:51:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241217115253.3211836-1-a.fatoum@pengutronix.de>
References: <20241217115253.3211836-1-a.fatoum@pengutronix.de>
Message-Id: <173468468571.3151844.6436759867454614595.b4-ty@pengutronix.de>
Date: Fri, 20 Dec 2024 09:51:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_005127_461498_95954392 
X-CRM114-Status: UNSURE (   7.08  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] rtc: pcf85063: fix potential OOB write in
 PCF85063 NVMEM read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 17 Dec 2024 12:52:52 +0100, Ahmad Fatoum wrote:
> The nvmem interface supports variable buffer sizes, while the regmap
> interface operates with fixed-size storage. If an nvmem client uses a
> buffer size less than 4 bytes, regmap_read will write out of bounds
> as it expects the buffer to point at an unsigned int.
> 
> Fix this by using an intermediary unsigned int to hold the value.
> 
> [...]

Applied, thanks!

[1/1] rtc: pcf85063: fix potential OOB write in PCF85063 NVMEM read
      https://git.pengutronix.de/cgit/barebox/commit/?id=e3de867716e9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



