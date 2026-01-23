Delivery-date: Fri, 23 Jan 2026 09:18:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjCNb-004Q0G-0w
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 09:18:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjCNa-0002wC-B4
	for lore@pengutronix.de; Fri, 23 Jan 2026 09:18:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PhcJ91cZGWShtGhhi9Mon/+vx+besivZjnn6Sy5AVKA=; b=z0ubc/438/yiYwHkTKy36BhIf2
	XN8cOCGiWLkw17RgKVWVTkQSvuPKlkqtxuS15ZkYGnvFJ7u7knm7wVBuJ63gKz7HbYcRJ2PHDZkfJ
	uunUhbOTcIgjhVhLBkzFpZ7Bck/OjtU3gWXgdxpcJwB2Q9+sPGMaievGazYvMiY8sS+oLvHRRQn4v
	puKpsL7xkTUtZ1pE2M+xVel2ETEUmoy9hp0lxmTYMY/gLLvUPBmeu21HWta/PT6Hp3+Vt3LBojg6v
	l9hDaro96UyklQcoHLtRc5sGtLDXokpo3ar8nl2ErY6h7Mf2BtDlKjTSHVAbev009FT7HGZTAagyZ
	Qg5Qa/dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCND-00000008Ryo-2Uwv;
	Fri, 23 Jan 2026 08:18:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCNB-00000008Ry9-0ayR
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 08:18:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCN9-0002qt-G4; Fri, 23 Jan 2026 09:18:27 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCN9-0023rb-2X;
	Fri, 23 Jan 2026 09:18:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCN9-0000000GFzF-0ErB;
	Fri, 23 Jan 2026 09:18:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, 
 "Claude Sonnet 4.5" <noreply@anthropic.com>
In-Reply-To: <20260120122741.634724-1-a.fatoum@pengutronix.de>
References: <20260120122741.634724-1-a.fatoum@pengutronix.de>
Message-Id: <176915630705.3874526.6412306748946205328.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 09:18:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_001829_188482_19A6FCD4 
X-CRM114-Status: UNSURE (   8.23  )
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
Subject: Re: [PATCH] commands: cd: implement support for cd - and $OLDPWD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Jan 2026 13:27:35 +0100, Ahmad Fatoum wrote:
> We have no $PWD an we would have to populate it globally, because all of
> barebox shares a single working directory. What we can easily do however
> is populate $OLDPWD to give shell scripts a way to resolve some
> artifacts relatively and then revert back to the original working
> directory, so implement that as well as cd -.
> 
> 
> [...]

Applied, thanks!

[1/1] commands: cd: implement support for cd - and $OLDPWD
      https://git.pengutronix.de/cgit/barebox/commit/?id=11558f18b0fc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



