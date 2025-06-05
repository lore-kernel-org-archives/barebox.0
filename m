Delivery-date: Thu, 05 Jun 2025 13:58:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9ES-00408Q-2g
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:58:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9ES-0006aW-Aa
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:58:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xxaqzrzsMANeK/3DpMzZto/ysGPPUje6iXNQw0vmDuQ=; b=zpo1eJYoiciR3XCfc2UZcbW9am
	NgmxaiYRsCmtDV7eom5eXu8UAgwN8EXSLF9uytCJLHZQt3nklBp6HRUH6QIf5e5sqiVOYTYejEeBW
	eh4iAzhCU15uIAdnL5Dxv0z1cfMB2hwpoRqL4B36BuRXvO89e/SOLidvi+gxRDjBz8UFTPa4tnid3
	jd2+EupAo00MBn1NOGsInLL1C+eOYvtg06BwqatBJowbNqp7XOuSxC8EHbUk8T05Fr0gijQDvSV4v
	QvfioE4/rmO+Tk2w0dmAevJktW47CwLQ4VxXAbl0AXZ8IYS32XqwxUpqEpCD7BSW+0tZznXBh+72w
	XKyfgByQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9E4-0000000FQgq-2JJR;
	Thu, 05 Jun 2025 11:57:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9CH-0000000FQUb-0xSq
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:55:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9CF-00055Q-Sn; Thu, 05 Jun 2025 13:55:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9CF-001x3E-2H;
	Thu, 05 Jun 2025 13:55:47 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9CF-0022KQ-23;
	Thu, 05 Jun 2025 13:55:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250605112533.1960069-1-a.fatoum@pengutronix.de>
References: <20250605112533.1960069-1-a.fatoum@pengutronix.de>
Message-Id: <174912454763.485573.10050707301111862861.b4-ty@pengutronix.de>
Date: Thu, 05 Jun 2025 13:55:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_045549_269471_C70E63BA 
X-CRM114-Status: UNSURE (   8.24  )
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
Subject: Re: [PATCH 1/3] common: tlv: clean up device name setting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Jun 2025 13:25:31 +0200, Ahmad Fatoum wrote:
> Now that dev_set_name has a __printf attribute, we get a warning that we
> are not using a string literal as format argument to it.
> 
> Fix this and while at it avoid a superfluous memory allocation.
> 
> 

Applied, thanks!

[1/3] common: tlv: clean up device name setting
      https://git.pengutronix.de/cgit/barebox/commit/?id=8e4dc8d579df (link may not be stable)
[2/3] treewide: use only string literals as format string
      https://git.pengutronix.de/cgit/barebox/commit/?id=baacf2803551 (link may not be stable)
[3/3] fastboot: switch to using error format specifiers
      https://git.pengutronix.de/cgit/barebox/commit/?id=a95a2c4c5e09 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



