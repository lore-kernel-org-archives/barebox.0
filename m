Delivery-date: Tue, 01 Apr 2025 07:55:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzUak-006s9H-2Q
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 07:55:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzUak-00046c-7j
	for lore@pengutronix.de; Tue, 01 Apr 2025 07:55:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=voUHcTaq1CvGooxnUQKwDF2gamvW3WVceOtsMCZ2Dho=; b=PMz1o816h2zxfKRIvZ6IsUllch
	+m2ZkbCFleWoxX2FZsb9zqY6v21A9Vy80IY399YlbOORK06ipBdPnl6piqBO12F46O65Ik12M70LZ
	htrim/AWyuwjfxp2nfkoDkYvxQwREfwr1bvDAxqT7GQMw2UDkhReJrX320G28a/0W0gB8pym5qQV7
	z1odJ4Bl3/7noqaceeBV+fE0KRIEOIeUMDEj39h8sL9mUq4UdixBjY724gxDKowklnbrStmI/JLud
	LsFJbJqOtlVnJ+Q1VZ67BefDOv2T/VH/Emt7NsiJE8kISrEp6QoSEXXORNAmZzOU/wLAFiMqaETTQ
	b3VZyebg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzUaF-000000021lz-2C6Q;
	Tue, 01 Apr 2025 05:54:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzUYG-000000021Tk-0COx
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 05:52:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzUYE-0003n8-Qn; Tue, 01 Apr 2025 07:52:42 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzUYE-002iJR-1w;
	Tue, 01 Apr 2025 07:52:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzUYE-00Cy0p-1i;
	Tue, 01 Apr 2025 07:52:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org
In-Reply-To: <20250331150528.3270385-1-robin@protonic.nl>
References: <20250331150528.3270385-1-robin@protonic.nl>
Message-Id: <174348676252.3090576.3500222277273196739.b4-ty@pengutronix.de>
Date: Tue, 01 Apr 2025 07:52:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_225244_121392_14A0EC85 
X-CRM114-Status: UNSURE (   6.53  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: boards: protonic-imx6: prtvt7: Use the input
 system for key detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 31 Mar 2025 17:05:28 +0200, Robin van der Gracht wrote:
> Static gpio mapping is deprecated. Instead query the gpio-keys driver for
> pressed keys.
> 
> 

Applied, thanks!

[1/1] ARM: boards: protonic-imx6: prtvt7: Use the input system for key detection
      https://git.pengutronix.de/cgit/barebox/commit/?id=e44d472d128d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



