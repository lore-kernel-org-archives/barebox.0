Delivery-date: Mon, 20 Oct 2025 15:35:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAq2f-009uXK-2w
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 15:35:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAq2f-0007B0-D5
	for lore@pengutronix.de; Mon, 20 Oct 2025 15:35:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kRf7YH2UC9hjvTshmjhsVdgZ5rdiVNEUUiQvCAT5qzo=; b=e6OkEw/ZCA42Nj6cnaABPwO7qQ
	aUVcadlcebBV8bu4RwTu3TRunMX6RJ+fKQWeswg3vEU7oPumsDvoytQJTe2G439VuxeTRR1dGQmuB
	iHTYiLmIaQqZf4WxMH+zt2bMPyWcSBPKl2TtbFtr3SKCdztnN7PjRf0+CNtn0zH/xFyxCHlIwy9/8
	sOBXsjbvPC6H9+qTRd/sFxHPbm5bi70dyxjheQTynT7GwzTIJpvbsMgzR8rRLT68AqbsdDMLxTGQf
	ZTBJj+Oa4jIn7KZmwUjjWNCZjGXeW/ysHlpyefhqvxUbbvk3T1+zZTNsqgz/vUlONOa98tLGSWQc4
	Vrydi1lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAq2G-0000000Dnx7-3FSk;
	Mon, 20 Oct 2025 13:34:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAq2E-0000000Dnw9-0Dc1
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 13:34:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAq2C-00075N-8s; Mon, 20 Oct 2025 15:34:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAq2C-004Yfi-0G;
	Mon, 20 Oct 2025 15:34:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAq2C-0000000ABlH-05WK;
	Mon, 20 Oct 2025 15:34:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251010065749.3141299-1-a.fatoum@barebox.org>
References: <20251010065749.3141299-1-a.fatoum@barebox.org>
Message-Id: <176096728801.2428472.10705407720489461500.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 15:34:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_063450_107126_FDA5C6DC 
X-CRM114-Status: UNSURE (   6.74  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] Documentation: fix warnings during config build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 10 Oct 2025 08:57:43 +0200, Ahmad Fatoum wrote:
> js_splitter_code contains backslashes that are meant for Javascript and
> not for Python triggering a warning:
> 
>   conf.py:275: SyntaxWarning: invalid escape sequence '\p'
>     .split(/[^\p{Letter}\p{Number}_\p{Emoji_Presentation}\-\.]+/gu)
> 
> Setting soruce_suffix to a string also seems deprecated:
> 
> [...]

Applied, thanks!

[1/3] Documentation: fix warnings during config build
      https://git.pengutronix.de/cgit/barebox/commit/?id=ca5b0a22a80a (link may not be stable)
[2/3] scripts: container.sh: support -e for environment variables
      https://git.pengutronix.de/cgit/barebox/commit/?id=2919a0e6fed8 (link may not be stable)
[3/3] Documentation: add contributing section
      https://git.pengutronix.de/cgit/barebox/commit/?id=dfe9ff3b85b0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



