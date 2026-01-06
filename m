Delivery-date: Tue, 06 Jan 2026 08:38:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1eW-001oV2-17
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:38:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1eV-0005F0-Qf
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:38:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gvh+f0PB0N7e6RGZp3g3t0iXotpIxNDYsMtGxqgCDC8=; b=21zpiWJ/RoEVSdzbRszZYXNO15
	OEELxfScOjPbwJSaWII/cWjOEP6ZekUZfwfXL6UbVBdU9CbtvEED5fEW4sVb5cYBdtrtuZagoKe4m
	z6IKw3+WBp4DcV2QLY4A80bLRqUZFnrGVP9L2xTSRI3DJHws1hq1/TIPWGm2aSLORun9UZMueO+h1
	/rZx7CGsULvArJzZDzc+R2+TaOWTFcszsle09Kmqnl3Z1UJqZ987lArFYPvUHipvPiChK8xeJNy4i
	PtoBtqrVly3DdRSu61TqSK4kIWs2AATb3EMnC8DJJEcJnyRAqIypu5t79sYJ0zQd4xkd4+/nY0uRA
	FTT5Eh/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1e0-0000000CWtg-0bB1;
	Tue, 06 Jan 2026 07:38:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1dx-0000000CWss-1MsH
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:38:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1dv-000595-QN; Tue, 06 Jan 2026 08:38:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1dv-009JIw-22;
	Tue, 06 Jan 2026 08:38:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1dv-000000088ZW-2N8j;
	Tue, 06 Jan 2026 08:38:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260105084604.3288407-1-a.fatoum@barebox.org>
References: <20260105084604.3288407-1-a.fatoum@barebox.org>
Message-Id: <176768509556.1939565.6310243733347968376.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 08:38:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_233817_369926_57BF1F08 
X-CRM114-Status: GOOD (  12.19  )
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
Subject: Re: [PATCH] ARM: remove unused constructor support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 09:46:01 +0100, Ahmad Fatoum wrote:
> CONFIG_CONSTRUCTORS was added alongside KASAN support, but it appears to
> be unused and not necessary for KASAN to work.
> 
> While at it, we also remove the legacy CONSTRUCTORS directive that only
> exists in the 32-bit, but not 64-bit ARM linker script.
> 
> I suspect that in Linux, constructors are needed for external modules,
> but in barebox, we don't currently make use of it, so it should be safe
> to drop.
> 
> [...]

Applied, thanks!

[1/1] ARM: remove unused constructor support
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb64ad3ea11b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



