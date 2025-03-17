Delivery-date: Mon, 17 Mar 2025 09:58:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6Ic-000Y1o-07
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 09:58:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6Ia-0001AY-VL
	for lore@pengutronix.de; Mon, 17 Mar 2025 09:58:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qN1gluYQZvCGS2lD6k8MEgfb0FYVgG8xt0faOTA9LIs=; b=UsQN1WxGB41oLZ53RYnd2shRzW
	1uDulp8WOu77w47ac24FnCnexcTmVL+ASgjWcStQ+IfMfFZBTdYN+r7uuFOBpzHtlv22gIzkZU13U
	0WoeO5K6sZauz9GwGCU5MX7/GgY+nGJt5zjluVl5o06n+TIFazpR1XWD/ZXW4acoRh0jaDvLJpq57
	Cm3Zw6a2+4v2CSAiwfr5PDguBNr1448Lzsv1P6oyjeBhkPnXskPuH2e1fsFAMriNEk5BFIPLTGPY7
	9DnxVF6bFRXSlUwKRtWiyQifGq0ou+lMdqcr+EBg0AQKz5nC0O5c2bQA+c6p4Jns+rkZyi5Blad89
	RLbrOo/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6I2-00000001pll-1KcW;
	Mon, 17 Mar 2025 08:57:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6Bj-00000001oZc-2SFh
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 08:51:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6Bi-0008Dj-CF; Mon, 17 Mar 2025 09:51:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6Bh-000DOy-2T;
	Mon, 17 Mar 2025 09:51:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6Bi-00H2q9-0P;
	Mon, 17 Mar 2025 09:51:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20250314205321.16898-1-jmaselbas@zdiv.net>
References: <20250314205321.16898-1-jmaselbas@zdiv.net>
Message-Id: <174220147012.4062446.2175121099935247908.b4-ty@pengutronix.de>
Date: Mon, 17 Mar 2025 09:51:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_015111_627456_C2E2104E 
X-CRM114-Status: UNSURE (   4.79  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH] treewide: use fallthrough pseudo keyword in
 switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Mar 2025 21:53:21 +0100, Jules Maselbas wrote:
> 


Applied, thanks!

[1/1] treewide: use fallthrough pseudo keyword in switches
      https://git.pengutronix.de/cgit/barebox/commit/?id=9f644e676574 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



