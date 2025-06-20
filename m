Delivery-date: Fri, 20 Jun 2025 14:09:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSaYj-009HAs-11
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 14:09:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSaYi-0002VT-Pf
	for lore@pengutronix.de; Fri, 20 Jun 2025 14:09:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mfj0LVgBh22nUbYCGtn0tV3EV34uptcbxBy/zWNlgoA=; b=qndqj4f/rwmfi3SZPGmclzvKsy
	+rbFXuq/o9hM01v+rcho194VCTxBnkcHPFJQQ8dMgbWWss9oeJAHCxRefhRF/8UdTVznsgg00JDc7
	DwuXLeyrkA7inTQ0EIuwo8FTbrldXMDD1+QbmK1oYTxKy2JQsqdNth59tc3JAIO1PomNPyyBhgQv+
	TQVPgg388ulPMcE8O2qvWRHw3VWQLunbkEsw4Y/yXMJS9pkDQ2ZhBDhO0wgl7MzcVrEEam7yY2gBn
	DjiH5DBzgJeSsO+DsIUUiLf5abdAjKWJYvFY9tmt7bJRPePYl8dDA/Nrim4YGVda75YS94NDRtWyT
	WCk3Ihsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaYK-0000000FXgO-3iXw;
	Fri, 20 Jun 2025 12:09:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaPo-0000000FWOO-3dW4
	for barebox@bombadil.infradead.org;
	Fri, 20 Jun 2025 12:00:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Mfj0LVgBh22nUbYCGtn0tV3EV34uptcbxBy/zWNlgoA=; b=e8xbyjIk63EPjfCrLoDiIVTtMD
	jbQWCxfUmWSveqMAk+SZCy8eTI7LBJB7u623OKMhdmFP/kzKv8ZesfQKxvEcKlvvb9iGfbFxc2Nrw
	uxTfqur5Os6iZ+/twv8vkgidNfIGNiBvGBjpP8b4qy5+/xozw1pIyKpVjz31AQ62ZHuIe6oETMl3Q
	HAB4Ge+9xJBEwlGpB0YgFZwXEEF5q7T4pFcwunHwvwshFOhsIC/FMJb+9CT9hRdsSlbwdzrgCd6/M
	/kkieHTvb9qk6UcnspeMyo1o1+/Nc0lhjkOSEEKzd+MxRlBrfTWiONV166rHZXG+cXPWa3VTJrWMu
	FljDcG8A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaPm-00000004iva-05J9
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 12:00:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSaPk-0002Z4-Fy; Fri, 20 Jun 2025 14:00:12 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSaPk-004SGD-0z;
	Fri, 20 Jun 2025 14:00:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSaPk-00D1YC-0m;
	Fri, 20 Jun 2025 14:00:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20250619151406.3746678-1-m.felsch@pengutronix.de>
References: <20250619151406.3746678-1-m.felsch@pengutronix.de>
Message-Id: <175042081223.3104167.7037314188365927483.b4-ty@pengutronix.de>
Date: Fri, 20 Jun 2025 14:00:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_130014_186021_22458C53 
X-CRM114-Status: UNSURE (   5.00  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] crypto: caam - adapt pr_fmt to make it more clear
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 19 Jun 2025 17:14:06 +0200, Marco Felsch wrote:
> Add a "caam" prefix to make it more clear.
> 
> 

Applied, thanks!

[1/1] crypto: caam - adapt pr_fmt to make it more clear
      https://git.pengutronix.de/cgit/barebox/commit/?id=7240eee1e154 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



