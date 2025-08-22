Delivery-date: Sat, 23 Aug 2025 11:35:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upkeQ-003cwV-2m
	for lore@lore.pengutronix.de;
	Sat, 23 Aug 2025 11:35:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upkeP-0001Nr-Nt
	for lore@pengutronix.de; Sat, 23 Aug 2025 11:35:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lYLtf7iFo6sj7bdjljuu99Ik5jJ3yDCBQb4j8xsLl1c=; b=PsYFfzn82z2Al8GaYXivOBvTQw
	1KorkxZNM+eVJdqJxGapHEvzu0H+FZSJx6FVr8mNZB4ov6QDk8Vy+UCCrXT0PLS9EYCuNPc585R/p
	KRMtMZm4GlOmY309gfgN/uWJAiakR+X622LnlqmesDMLMlCmJ/VJ0+DAJkbWTzoGTkQdqwFaKtkc6
	0zmCGRt8t071Z3ZB6TngtPIBW//FGTCF/hU4TybjaYKgHio0DnklD+uJFFYM0MqzGo3L7cRhKVnsh
	G+oREFK3uOH6zdahJFe/fK1TOwkSEAJ+yzd+d1RHAqDTZzvc54A4p5Hx1Gp5GWjTTf+0QKGV0y26R
	qUDhuOsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upkdq-00000004SEN-3wSq;
	Sat, 23 Aug 2025 09:34:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upRlG-00000002cIP-1bSq
	for barebox@lists.infradead.org;
	Fri, 22 Aug 2025 13:24:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1upRlC-0007rA-Th; Fri, 22 Aug 2025 15:24:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1upRlA-001aJo-0i;
	Fri, 22 Aug 2025 15:24:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1upRlA-000000062VZ-0gWb;
	Fri, 22 Aug 2025 15:24:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250813081627.3448631-1-s.hauer@pengutronix.de>
References: <20250813081627.3448631-1-s.hauer@pengutronix.de>
Message-Id: <175586908815.1439586.5512344991485508898.b4-ty@pengutronix.de>
Date: Fri, 22 Aug 2025 15:24:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_062454_422042_DC8FD48E 
X-CRM114-Status: UNSURE (   8.68  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: k3: add syscon-reboot-mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Aug 2025 10:16:27 +0200, Sascha Hauer wrote:
> This adds reboot-mode support for the AM625 and AM62L SoCs.
> 
> We only add usbdfu, emmc and nand for now. Most other boot modes require
> additional board specific configuration in bit[9-7], so these have to be
> added in a board specific dts. Also we only touch the primary boot mode
> and leave the secondary boot mode untouched.
> 
> [...]

Applied, thanks!

[1/1] ARM: k3: add syscon-reboot-mode
      https://git.pengutronix.de/cgit/barebox/commit/?id=adf7f3fb2cf1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



