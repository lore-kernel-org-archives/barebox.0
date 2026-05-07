Delivery-date: Thu, 07 May 2026 12:40:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw9p-001vzY-1f
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 12:40:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw9j-0001ye-6J
	for lore@pengutronix.de; Thu, 07 May 2026 12:40:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bxZaRkgOEpDYCePssXmcR3Pk4zHoNOAzoSmCwy6FZFs=; b=Td36MeOhj7kQJdRV9MFjUsb1O8
	EzZswaWissJp/roP5UnMASJwkPzuIu5TBE81k1X4c+dpUBkyVI741oS5zl0gSIoLv1CruRV8mCWKc
	YtUYE1H7bJ4qQuxO8ZuewanHEQ3L4QSEM1kN0oTJ/dlzHL3yiYVludB75bXNqhSZnp2qvlVrfiCWL
	MGnSuLCMAgSsi/cElTK5zAymm7Kwf+ioGYLRuByA93KSz4cuO8m8XdrZ9oKBmqoC51qIZNtOJAX8H
	EIwHXVao+WFH33qvNyGVM6l7MVjiU9ZV1nNabNfgBDSKkFm8iOWd1eGEP+XI+7AOYFRIandvpuuY3
	pwNbUmJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw96-00000003WDJ-1aGf;
	Thu, 07 May 2026 10:39:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw94-00000003WCg-3sKa
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 10:39:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=bxZaRkgOEpDYCePssXmcR3Pk4zHoNOAzoSmCwy6FZFs=; b=W68xD6oZRvBJP8HzZAO1HvbYpq
	spL/t56XXNsunqQFHsD3IR8rz9igOgjdoI3h0O2CXNIz0U1kU6EQgo+aOJavgCdVxPweFxP499BjG
	9rFG7DqKGXXf81bkpCPfKK2FiPEIQ7CTdUiAu4hi/FklgBSabHQYvs7EnqYK/G7f8dTvDhwplwE3B
	/nKcJ5XU0ktG4GpjZY+4tVGghMLZVWHBErxd51fG2U25QEg3YI+ELvpcRVmRWGZfV1abiBKML3dQF
	wO4LSj27a3bNaXxfnCym820T1Tr+/04Fb6fh3u3BHPv5lxqxAW5QSHWM4PAzophA0kbPUv4Wupwjb
	NPj8qyYQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw91-00000003EgP-2Mls
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 10:39:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw91-0001Mi-Fo; Thu, 07 May 2026 12:39:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw90-000uDf-2i;
	Thu, 07 May 2026 12:39:51 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw91-0000000BjoJ-0vaa;
	Thu, 07 May 2026 12:39:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260429-rkimage-resign-v1-0-1478086c369e@pengutronix.de>
References: <20260429-rkimage-resign-v1-0-1478086c369e@pengutronix.de>
Message-Id: <177815039121.2797690.11756251193877373730.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 12:39:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_113951_990081_8FA56434 
X-CRM114-Status: UNSURE (   7.30  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] rkimage: Add resigning support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 29 Apr 2026 12:19:52 +0200, Sascha Hauer wrote:
> Add support for changing the signing key of an existing image. Can be
> either used to add a key or to replace a key. Also some cleanups along
> the way
> 
> 

Applied, thanks!

[1/4] rkimage: Support openssl provider API
      https://git.pengutronix.de/cgit/barebox/commit/?id=e0163b29de33 (link may not be stable)
[2/4] rkimage: unconditionally fill newidb
      https://git.pengutronix.de/cgit/barebox/commit/?id=18f4312def72 (link may not be stable)
[3/4] rkimage: add support for re-signing an existing image
      https://git.pengutronix.de/cgit/barebox/commit/?id=7608e33ca28e (link may not be stable)
[4/4] rkimage: improve error handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=8e7ef228b68c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



