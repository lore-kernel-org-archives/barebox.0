Delivery-date: Wed, 13 Mar 2024 11:53:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMEL-004HC5-13
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 11:53:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMEK-0005mr-O3
	for lore@pengutronix.de; Wed, 13 Mar 2024 11:53:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d9R4NBjBx0smUPjNr5msGktw+X/bkcJ+1aTYkkO+ZA4=; b=QOF1qvY5IrlpKWb/ASJmhZ6wR/
	AaAcs/dCQaVdnnDbKPYJEt8VeKt8/3OOQTSyrSB0L8O+su3DSOwKxHfeyWINEbNfPAP0ifyvsZkYk
	dmOfc4CKFT+Qesnq6zRXHO3BFaHvRTeTY80LCOUYogjKH9JZTLnwblYKzpPHD3v5GQNPpsuVb3fyz
	go8x73F6zkY4018ZkLhJdkEAJIQwgnzzcydFB1f4UaXJekLcS86If2PheaS5IpFXwDWpg7sx39+6E
	SZHkBMFz5DcTD2NfThLOxYxB1FFE9Np/XVVTJSsdU7xOObAvRcLEYT2GHW60qXInIlpNBjo3xFUgU
	TXuj3b7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMDu-00000009jkk-0olT;
	Wed, 13 Mar 2024 10:52:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMDq-00000009jkM-3QNd
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 10:52:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMDp-0005L3-EH; Wed, 13 Mar 2024 11:52:33 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMDp-00660D-1r; Wed, 13 Mar 2024 11:52:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMDo-005jhZ-3D;
	Wed, 13 Mar 2024 11:52:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240313093145.3349370-1-a.fatoum@pengutronix.de>
References: <20240313093145.3349370-1-a.fatoum@pengutronix.de>
Message-Id: <171032715299.1367229.18260746908926068209.b4-ty@pengutronix.de>
Date: Wed, 13 Mar 2024 11:52:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_035234_896930_A2BA45C1 
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] of: fdt: justify fdt_machine_is_compatible parsing
 only the root node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Mar 2024 10:31:45 +0100, Ahmad Fatoum wrote:
> fdt_machine_is_compatible() is a lightweight way to check the top-level
> compatible without unflattening the DT or pulling in libfdt.
> 
> The lightness is due to parsing only the root node and looking for the
> compatible right away. This assumes that no child nodes of the root node
> precede the compatible property. This is mandated by the specification
> and dtc throws a syntax error when attempting to violate this.
> 
> [...]

Applied, thanks!

[1/1] of: fdt: justify fdt_machine_is_compatible parsing only the root node
      https://git.pengutronix.de/cgit/barebox/commit/?id=3c8d123593cc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



