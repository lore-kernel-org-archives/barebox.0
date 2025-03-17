Delivery-date: Mon, 17 Mar 2025 09:32:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu5u0-000Xdd-1R
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 09:32:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu5tz-0003w9-CB
	for lore@pengutronix.de; Mon, 17 Mar 2025 09:32:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HjQ7yBr8NHKZwyWUdEqyEbkXIE9JJhMuJONx6UPoCBI=; b=FmhKKrTll5d38Qwt+BNe0KAh9s
	16RnaNeenCdTVWJTFg0W4b5Y6epfWYt81eb6aFyK0sOTqzznGyDrzt2XJDj2TEOwBFuqJvq1uq8hb
	5pSZ/5Pdy3oveVHYKHqLiyIvlMQTjU/KHO5joqLzEPiyGC2QpbjgCboJfxMm5C0nsV9S1VMEE+5tW
	LOUndarB46JzJ5gLIDWQxs+MWUftVCe7+Mr3JMQ9FniiBok2wPpWytHLMMI8czgyw+K5njH7AEO1B
	hMUtBKENdO3UW+vwPisWE6mxKLudRU7U4Ocn1ICPLO5FsysvB4Qp4fB23ajH9CXVigsCIafYpYhIN
	zjparPvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu5tZ-00000001klA-30Ok;
	Mon, 17 Mar 2025 08:32:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu5tW-00000001kjW-1UoV
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 08:32:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu5tV-0003oT-7i; Mon, 17 Mar 2025 09:32:21 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu5tU-000DGd-22;
	Mon, 17 Mar 2025 09:32:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu5tU-00H1p0-3B;
	Mon, 17 Mar 2025 09:32:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20250314143254.21753-1-jmaselbas@zdiv.net>
References: <20250314143254.21753-1-jmaselbas@zdiv.net>
Message-Id: <174220034098.4058539.3704906446314246480.b4-ty@pengutronix.de>
Date: Mon, 17 Mar 2025 09:32:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_013222_395793_96742B40 
X-CRM114-Status: UNSURE (   4.33  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: deep-probe: make
 __barebox_deep_probe_{start,end} of array type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Mar 2025 15:32:54 +0100, Jules Maselbas wrote:
> 


Applied, thanks!

[1/1] common: deep-probe: make __barebox_deep_probe_{start,end} of array type
      https://git.pengutronix.de/cgit/barebox/commit/?id=103efa5dbce1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



