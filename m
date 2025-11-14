Delivery-date: Fri, 14 Nov 2025 14:15:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJte6-000v0H-03
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 14:15:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJte4-0002G1-SU
	for lore@pengutronix.de; Fri, 14 Nov 2025 14:15:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ANU3P3gf73zbm8fLoMKzTInnBbSNLDUD+2DUSBabXlI=; b=UPyqlBYl5Fmrtk29TsrZ3NWuJ8
	VzR6yKQU8ZXDOSOzGsm6ICj2KqZjZlm2MSxybTPouZq7nj0teAG1mAnKrE9/WBVvJgLIb+DzPoJm/
	0y11QfKnRQdX+M8hpBNuFIk5XquoR/LG4r4Fe+e8S2qLjJuMtmnyr4qLFNeV+slEOuGiRw16lQ1dF
	45bk8Ox5PRlTh2Km9Z2MD1Rod+cQ2HXFe4eaDZkSevUUbydRujcUSHNc7CllrgheE3BCBOWO3RjHL
	8leyD9zeYJgOY6kjntEvFTLn0tRTjLj6rjVKnWgoKb07tg/43C8nV7hiXUt2m3VJE7xxv+t7nyV/B
	lcOfBnCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtdW-0000000CEh3-0Y1N;
	Fri, 14 Nov 2025 13:14:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtdR-0000000CEgP-35jI
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 13:14:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtdQ-00026Q-5A; Fri, 14 Nov 2025 14:14:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtdP-000Qi8-35;
	Fri, 14 Nov 2025 14:14:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtdQ-00000001uRH-1NS0;
	Fri, 14 Nov 2025 14:14:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Grzeschik <m.grzeschik@pengutronix.de>
In-Reply-To: <20251113-imx-lcdif-v1-1-8c4b6e2cc444@pengutronix.de>
References: <20251113-imx-lcdif-v1-1-8c4b6e2cc444@pengutronix.de>
Message-Id: <176312607988.454725.17541261115630324782.b4-ty@pengutronix.de>
Date: Fri, 14 Nov 2025 14:14:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_051441_777412_289D0E2F 
X-CRM114-Status: UNSURE (   8.62  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: lcdif_drv: add ported driver from linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Nov 2025 09:55:15 +0100, Michael Grzeschik wrote:
> This patch is adding support for the for the LCDIFv3 LCD controller
> found on i.MX8MP and i.MX93 SoCs.
> 
> It is currently supporting DRM_FORMAT_XRGB8888 media_bus format for now.
> 
> While porting from linux mainline the following changes were made:
> 
> [...]

Applied, thanks!

[1/1] video: lcdif_drv: add ported driver from linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=e5e276142f5a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



