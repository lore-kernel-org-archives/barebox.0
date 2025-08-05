Delivery-date: Tue, 05 Aug 2025 11:01:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDYK-007Epo-1z
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:01:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDYK-0007LA-45
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:01:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vK2XlRK8/yK09KJaHZ71lObyLNIRoAvz50HYoUdt+W4=; b=Udi4RutyI1LNkbtTtGPxrO6NQJ
	aHfyowF2Uo7Iyp9lRVjvEoMRpX8uMqJBbaL4zD3Gg36A8K3Zwwb0eQhZtMkgQUDbY529zuxTVYfL6
	BV5DbOqx8EL9o0O2Wh/lJsXWL+2VOuKUI0Z7WfaRtRXHYlPGFpjK8BLPbVQUJ2R8OhsZ0mECxeoxr
	yZVYWtzfevMYdtRMXe2V/nEvcz7etfOicproyBWEBbMCvxiHQ3Bw/oKm7Jgxlq97PBUV5VcNxF6Kg
	c7hveO+1kRwdtsRw1NZFsYWD6i0rwZgPfedLb4BLzxpY0IAm+ftUwB0bQnmS4aZIOig97VRrujcpl
	HWe/w7NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDXr-0000000CHz1-02v6;
	Tue, 05 Aug 2025 09:01:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujD0H-0000000CA2n-031D
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 08:26:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD0F-0003ow-Pg; Tue, 05 Aug 2025 10:26:35 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD0F-00C0hk-1G;
	Tue, 05 Aug 2025 10:26:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD0F-00Efap-14;
	Tue, 05 Aug 2025 10:26:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bo Sun <bo@mboxify.com>
In-Reply-To: <20250717131431.1127636-1-bo@mboxify.com>
References: <20250717131431.1127636-1-bo@mboxify.com>
Message-Id: <175438239532.3496452.5551807724011169608.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 10:26:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_012637_057209_E5D0BF75 
X-CRM114-Status: UNSURE (   5.99  )
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
Subject: Re: [PATCH] of: platform: rename parameter 'bus' to 'node' in
 of_platform_bus_create()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 17 Jul 2025 21:14:31 +0800, Bo Sun wrote:
> The parameter represents a device tree node, not specifically a bus.
> Use more accurate naming following device tree conventions.
> 
> 

Applied, thanks!

[1/1] of: platform: rename parameter 'bus' to 'node' in of_platform_bus_create()
      https://git.pengutronix.de/cgit/barebox/commit/?id=1f2fd7c50a85 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



