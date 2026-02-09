Delivery-date: Mon, 09 Feb 2026 15:23:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpSAq-00Aa92-36
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 15:23:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpSAq-00022i-0o
	for lore@pengutronix.de; Mon, 09 Feb 2026 15:23:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SUAFKc7WmjgkuXWmsh12kSxuihTqL7Td+of+DCLz+nU=; b=1DY0EQaJfmYfr31mqLpoVh7v5L
	bJh1tRuTRyqoaeseG50dueRRLituIeqXwq9bVegfH6fs/5yRl4ltInuen2mbhAWuaI8mj0fteDRrE
	H2O6QwfMK1fNVAmEbnc/8SmV8vSTgWTkznvU3NYoUwcW6A/uWW8FlVZ7nuvl9eavIT3+8SUQWUkF5
	ez4qfYDE8OKqA23Xi/TaZlvs5w2rSJqsRVgD6Hh5/BT+7l8UsfT7aRPK5Mz1OTe2m9mhiroeFXrgh
	nWotasOfFWt3xqGVR9BsGUxzH0RgnNDt1USba2C0EE9LDzOu73uE/oWwGuoHPRul5jcfllBDjuRzu
	JVyjsI1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpSAT-0000000FVOe-1qHY;
	Mon, 09 Feb 2026 14:23:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpSAQ-0000000FVOC-0uIW
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 14:23:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpSAO-0001ye-Fu; Mon, 09 Feb 2026 15:23:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpSAO-004u7X-2a;
	Mon, 09 Feb 2026 15:23:08 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpSAO-00000002oyp-0JfX;
	Mon, 09 Feb 2026 15:23:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: 9l@9lo.re
In-Reply-To: <20260205153540.2900244-1-a.fatoum@pengutronix.de>
References: <20260205153540.2900244-1-a.fatoum@pengutronix.de>
Message-Id: <177064698807.672611.8077508240836463896.b4-ty@pengutronix.de>
Date: Mon, 09 Feb 2026 15:23:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_062310_260511_13C0ADFC 
X-CRM114-Status: UNSURE (   8.08  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: tlv: fix link error when CONFIG_NET is
 disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Feb 2026 16:35:39 +0100, Ahmad Fatoum wrote:
> ethaddr_list and eth_of_get_fixup_node are used unconditionally in
> of_tlv_fixup, but there is no dependency on CONFIG_NET for CONFIG_TLV.
> 
> Turn the ethernet-related fixup code into dead code if CONFIG_NET is
> disabled and emit a warning to fix this.
> 
> 
> [...]

Applied, thanks!

[1/1] common: tlv: fix link error when CONFIG_NET is disabled
      https://git.pengutronix.de/cgit/barebox/commit/?id=53c72e610a31 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



