Delivery-date: Fri, 14 Mar 2025 17:17:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7io-00E4dM-0U
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 17:17:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7im-00061J-Os
	for lore@pengutronix.de; Fri, 14 Mar 2025 17:17:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JPEV3iGpJYjvEp0GGyfba1Hb5aGe+3b8zVPY9oXLJd4=; b=JG6/itvMVPLjYdLM0F/Ow3eRWY
	fjPOVZoIGbuIld2BRAko5l5PnY8Xc4Wlq9TKpbsgIxDEf08Mcn+MxTi5Ir13keLrRuEAPnrJQ2/ww
	QFtwWoM59lCQB/Iw5aJvAx/aj6oTBpv664escx0dc+blY0gyI5GsIz2hYm0kyLXgfiaTZujaCfZWp
	C0hT9/a6TRO7IqaUTyN9qwqOLSNnPOXSRMT9iJWud3NLZrVniOF2Tsh0hijERx6KhBtH65kDIj8gh
	iHXWpkSwMN7T/sA40N/cfNA4x1DMRD/UPL5tg8XsxdVbtXRhKdls0/bkcR5fUDljGpYBlNVVqqV+p
	ym5RIULA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7iO-0000000Eim1-2CK5;
	Fri, 14 Mar 2025 16:16:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7eg-0000000Ehil-0XOC
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 16:13:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7ee-00056Q-W1; Fri, 14 Mar 2025 17:13:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7ee-005jFf-2Z;
	Fri, 14 Mar 2025 17:13:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7ee-00HIPn-2L;
	Fri, 14 Mar 2025 17:13:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20250312112057.570001-1-o.rempel@pengutronix.de>
References: <20250312112057.570001-1-o.rempel@pengutronix.de>
Message-Id: <174196878072.4122330.5724496373208605972.b4-ty@pengutronix.de>
Date: Fri, 14 Mar 2025 17:13:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_091302_168602_493735A3 
X-CRM114-Status: UNSURE (   8.02  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/3] net: dsa: Add global forwarding mode support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 12 Mar 2025 12:20:55 +0100, Oleksij Rempel wrote:
> This patch introduces a global forwarding mode control for DSA switches
> in Barebox.  It adds a new `forwarding` parameter that allows enabling
> or disabling forwarding  between all ports on a DSA switch.
> 
> This enables users to configure global forwarding dynamically via:
> dev.switch0.forwarding=1  # Enable forwarding
> dev.switch0.forwarding=0  # Disable forwarding (isolated mode)
> 
> [...]

Applied, thanks!

[1/3] net: dsa: Add global forwarding mode support
      https://git.pengutronix.de/cgit/barebox/commit/?id=e49028e88017 (link may not be stable)
[2/3] Documentation: networking: Add DSA switch support documentation
      https://git.pengutronix.de/cgit/barebox/commit/?id=861b6fcd7943 (link may not be stable)
[3/3] net: dsa: sja1105: Add support for global forwarding mode
      https://git.pengutronix.de/cgit/barebox/commit/?id=816fb00dbf28 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



