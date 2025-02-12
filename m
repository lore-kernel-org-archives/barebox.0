Delivery-date: Wed, 12 Feb 2025 15:04:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDMG-001Rzt-0W
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:04:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDMF-0008SE-0I
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:04:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kfV9H2EBTv1OPJMd/DVwHOkR85AiU+T1+lUW7h2ZUJY=; b=RU1a3HQrLP4vM+LUMzGsh/Cqzb
	p223mu/diMZnIE4ki7uUgWFsLQSBRTG1PZpzdJKsMoi5wFgg2XYS9EKf+qRjrgMPvXutazMIJX5U6
	70+UP4AjXPCO/8Zo8+5b6kZSp6EoLdlApcU+8anD/kcUM6lMMyJY1riyjzxKAWu7f9vbiNFjyW6Ex
	Spjs8q45fIrRftzMS5y2T1hVby8zRoB6ik1qZGJAGwaLonTEQWORfUbe4z/BmDUsTviLrEKZplfon
	JXoUWHuCy4nmJyT0QipvKSbFgvb6ec70Ly+DpDSUYjBmgNOrDZsyS/ypzAAy8/q7fnVh+Z9Ns6FGc
	pFPbV1og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDLb-00000007ayW-0fb2;
	Wed, 12 Feb 2025 14:04:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDLY-00000007ay8-0Tt1
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:04:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDLU-00084d-Qv; Wed, 12 Feb 2025 15:04:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDLU-000awf-24;
	Wed, 12 Feb 2025 15:04:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDLU-00AdZX-1p;
	Wed, 12 Feb 2025 15:04:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250207072013.226803-1-s.hauer@pengutronix.de>
References: <20250207072013.226803-1-s.hauer@pengutronix.de>
Message-Id: <173936904856.2535388.12714236788748890360.b4-ty@pengutronix.de>
Date: Wed, 12 Feb 2025 15:04:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_060412_155217_599C5FCA 
X-CRM114-Status: UNSURE (   9.18  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] soc: k3: Add support for Texas Instruments K3 ESM
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Feb 2025 08:20:13 +0100, Sascha Hauer wrote:
> The ESM (Error Signaling Module) is used to route error signals within
> the K3 SoCs somewhat similar to interrupts. The handling for these is
> different though, and can be routed for hardware error handling, to
> be handled by safety processor or just as error interrupts handled
> by the main processor. The u-boot level ESM driver is just used to
> configure the ESM signals so that they get routed to proper destination.
> 
> [...]

Applied, thanks!

[1/1] soc: k3: Add support for Texas Instruments K3 ESM driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=5ab2acff066c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



