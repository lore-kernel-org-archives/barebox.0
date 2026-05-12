Delivery-date: Tue, 12 May 2026 08:24:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMgXw-000oEz-1L
	for lore@lore.pengutronix.de;
	Tue, 12 May 2026 08:24:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMgXt-0006xF-16
	for lore@pengutronix.de; Tue, 12 May 2026 08:24:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XMZI+JYlj7vAa9ZCeHAo5tkWehyGwSYDT+d7kDkE/2M=; b=DmgBSzLwx60TMDp+lN8XXZY9cK
	0LgCCIespV+wqcug3bYLEN4Xn/F4ZAYwnBh97jqKCKg8h2j0aJ4jue18x/jtGNme1/KoChd7ppjjn
	0EiGRVKGBvCLyNlbe+SACuUjzes2bM6vSZuVIoobCqRuu4g3zz93lmSFjuAObCQTIJ4XnWnI0yU2h
	4+afgxg5eLbi2I6wFTGkUlyOWse7jqWCk1rYv6hwI7nJxHMmYRO6p2xPrnFo+pRPfUJCsI2qzwL2D
	ju0vUcMvFhGggfd1EfcHx4juMd9p8NXAYY2/Z4yp6diwMnyaqwx7PXDuQYTUASJg43J+LN2zQHywR
	8ds8Fn4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMgX8-0000000FlLm-0T6G;
	Tue, 12 May 2026 06:23:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMgX4-0000000FlKf-2XJy
	for barebox@lists.infradead.org;
	Tue, 12 May 2026 06:23:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMgX2-0006gO-2S; Tue, 12 May 2026 08:23:52 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMgX1-000NR4-0R;
	Tue, 12 May 2026 08:23:51 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMgX1-00000001TW5-3P7W;
	Tue, 12 May 2026 08:23:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Fabian Pflug <f.pflug@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260511-v2025-11-0-topic-riotboard-v2-0-788bf85842bd@pengutronix.de>
References: <20260511-v2025-11-0-topic-riotboard-v2-0-788bf85842bd@pengutronix.de>
Message-Id: <177856703180.351617.157974011193976033.b4-ty@pengutronix.de>
Date: Tue, 12 May 2026 08:23:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_232354_645023_702F4CE2 
X-CRM114-Status: UNSURE (   5.32  )
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
Subject: Re: [PATCH v2 0/2] ARM: i.MX: riotboard: Add OP-TEE integration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 11 May 2026 15:32:47 +0200, Fabian Pflug wrote:
> Configure the riotboard to use the default OP-TEE implementation
> provided by the generic i.MX6 OP-TEE firmware target.
> 
> 

Applied, thanks!

[1/2] ARM: i.MX: riotboard: add tzasc.h to flashheader
      https://git.pengutronix.de/cgit/barebox/commit/?id=3761fe242bc2 (link may not be stable)
[2/2] ARM: i.MX: riotboard: switch to imx6q_barebox_entry
      https://git.pengutronix.de/cgit/barebox/commit/?id=8ae77f2dcfea (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



