Delivery-date: Wed, 02 Apr 2025 10:26:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztQQ-007KeL-2p
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 10:26:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztQQ-0002EA-BH
	for lore@pengutronix.de; Wed, 02 Apr 2025 10:26:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hESgzlwGf6vR47h//ziF6UyukOswGrB4uGKXmYIgzUw=; b=SjSaL1BGbULC2ae5tirSfTtEYf
	2dIrPLctwVFUinfVFea2UXe68K1aGodoEHi9SmFDfEuE1PKS1FLFOyNBTjbLd0AG9h/yu5n8Jzie4
	REWthuf+wu4YdmbP7918/rxxZNBkBcMzdKAUbUX+r94ZcbibZUB2QByyS9JehYTzDVE+WedS8KTET
	UBBQjSd8/G9S6bjKidXQUqtnJS2O4YjJ+rTAyf6NPAx+5S70wpn1Z82pmWee0BSaW/dbAVhOcu4b/
	hn8ogIwayw6QZta7xtOAPIvG1bFpIKQ8uaeH5ApKsZjzsQO33U3/MOLT3UkwpQwVVPf2cauk18lP2
	Oo72awTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tztQ1-00000005WQS-3PiX;
	Wed, 02 Apr 2025 08:25:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tztPy-00000005WPg-48DU
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 08:25:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tztPx-00026o-Re; Wed, 02 Apr 2025 10:25:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tztPx-002u7c-26;
	Wed, 02 Apr 2025 10:25:49 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tztPx-00ESgv-1u;
	Wed, 02 Apr 2025 10:25:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250402055753.26640-1-eagle.alexander923@gmail.com>
References: <20250402055753.26640-1-eagle.alexander923@gmail.com>
Message-Id: <174358234958.3446868.17295686210597855130.b4-ty@pengutronix.de>
Date: Wed, 02 Apr 2025 10:25:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_012551_027328_DA61B89F 
X-CRM114-Status: UNSURE (   6.11  )
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
Subject: Re: [PATCH 1/2] ARM: at91: Remove at91sama5d3_get_ddram_size()
 call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 02 Apr 2025 08:57:52 +0300, Alexander Shiyan wrote:
> Since all barebox sama5d3 boards now support devicetree,
> we can remove the separate at91sama5d3_get_ddram_size() call.
> 
> 

Applied, thanks!

[1/2] ARM: at91: Remove at91sama5d3_get_ddram_size() call
      https://git.pengutronix.de/cgit/barebox/commit/?id=6e3417abe397 (link may not be stable)
[2/2] ARM: at91: sama5d3_xplained: Fix lowlevel barebox_entry() call
      https://git.pengutronix.de/cgit/barebox/commit/?id=6442b9223a4a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



