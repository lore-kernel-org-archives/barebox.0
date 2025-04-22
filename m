Delivery-date: Tue, 22 Apr 2025 12:29:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Asf-0040zg-31
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 12:29:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Asf-0002XM-DO
	for lore@pengutronix.de; Tue, 22 Apr 2025 12:29:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xGX4slmxDHV7I/IlzeWJIW2EOU1ftW8B/1n6nF2pD8A=; b=BFOoLC65CCLEa6muAuNX3ZEdMX
	CMtsXAWpZ3zWMChXJ5yODpUH1dwzRDn7y3Byj0CNpl22w8U9wV8HdfznONFddQxd6ce97nW1OZmZ+
	FU/Ow2ILNEnM4iD7yQfv1Twf0wTXdkjnUTX1px8jDaJXXsdZ0u9vmWJ3LytG98BKww4A9x0wJY48M
	JLEOmCurBzug24gHkcTENpNeKT8SpQTxHKKOfxH4P27HdqTfnmtxx6JmCbcBz+KA44Ti7tItmnPXV
	zPUQ2TIDavDEcXGCjRDvCSdphrBJ6bJnQxpqGhj5VBXWfEf7/OJ2QJfyJi2dbh4s24kfO3h484IhI
	LjcLQnxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7AsH-00000006m0L-319T;
	Tue, 22 Apr 2025 10:29:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7AMS-00000006eeV-0U2D
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7AMQ-00036w-Ac; Tue, 22 Apr 2025 11:56:14 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7AMQ-001Wwy-0Q;
	Tue, 22 Apr 2025 11:56:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7AMQ-00CgWd-0C;
	Tue, 22 Apr 2025 11:56:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Lars Schmidt <lsc@pengutronix.de>
In-Reply-To: <20250416081646.2201914-1-a.fatoum@pengutronix.de>
References: <20250416081646.2201914-1-a.fatoum@pengutronix.de>
Message-Id: <174531577405.3023336.578071948980201289.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 11:56:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_025616_163151_1155050F 
X-CRM114-Status: UNSURE (   8.38  )
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
Subject: Re: [PATCH] net: dhcp: mention that eth0 is the default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 16 Apr 2025 10:16:47 +0200, Ahmad Fatoum wrote:
> dhcp has always defaulted to eth0 when called without arguments, which
> is not a good default for systems where eth0 is the management port of a
> DSA switch.
> 
> Point out that eth0 is used by default when dhcp is called without
> arguments and while at it make ignored positional arguments an error.
> 
> [...]

Applied, thanks!

[1/1] net: dhcp: mention that eth0 is the default
      https://git.pengutronix.de/cgit/barebox/commit/?id=538fd22b9255 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



