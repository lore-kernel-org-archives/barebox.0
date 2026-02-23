Delivery-date: Mon, 23 Feb 2026 10:18:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuS57-004mPh-0J
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:18:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuS57-0001TT-Fb
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:18:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YxEn+8QG2+qSdmfXlR6BmRV8mAtI2zCnlLFKkUXdPTY=; b=xJ4wv44uxfcTkjksonsYSPoLox
	grwz34Za36raa2PoRSUM/J9X2RN0oMsOYfBm680O3EeOIRaZAQUu0rE2RCoeb0r1kVBdVtypjMcFS
	nNReuEi1F+t6XJmsaQtCDytyWI/QfcYVUyPXNGMO1uvfITsaCfkxN1Icm93B6QHKxEuKECEdMyYmp
	Jpry6h2L4VoP/nnMFoj2ebvB8i4jnRpaM6Ddm1GppHqGIm4f4itkCVEXHp6T9NWMNnMSqIRcPwBri
	ITwd0gDRRPZHckUUgHteDHJWXzg3jebm+mYgq+I1i7RZ+b6ML754DzaDJb5L8s186qtQKPAojhfIE
	g2oVcy2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuS4l-0000000HWMh-3mWZ;
	Mon, 23 Feb 2026 09:17:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuS4j-0000000HWLY-0Llf
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:17:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS4h-0001LL-MB; Mon, 23 Feb 2026 10:17:55 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS4g-002Chm-0U;
	Mon, 23 Feb 2026 10:17:55 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS4h-00000000nhK-1qXH;
	Mon, 23 Feb 2026 10:17:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260217-scripts-kconfig-keytoc-help-v1-1-ea5f6e9414a6@pengutronix.de>
References: <20260217-scripts-kconfig-keytoc-help-v1-1-ea5f6e9414a6@pengutronix.de>
Message-Id: <177183827543.191029.776235882151595038.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 10:17:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_011757_126499_9A686C64 
X-CRM114-Status: UNSURE (   5.97  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: Kconfig: Update help text for ECDSA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 17 Feb 2026 13:11:26 +0100, Jonas Rebmann wrote:
> We're also supporting ECDSA in keytoc and within barebox so calling it
> an "RSA to C converter" is a bit misleading.
> 
> 

Applied, thanks!

[1/1] scripts: Kconfig: Update help text for ECDSA support
      https://git.pengutronix.de/cgit/barebox/commit/?id=cc7b75947188 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



