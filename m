Delivery-date: Wed, 24 Jul 2024 10:07:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWX2K-002PQA-0e
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 10:07:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWX2J-000740-F8
	for lore@pengutronix.de; Wed, 24 Jul 2024 10:07:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=37keN53ucwhZPkA/wxMcDtodkjaSCY7jacVq4GDTYuY=; b=Hb99KBsq4Jvk064I+91ZPZtftr
	c6pP191NiKZUwMZaynrWrR5OOu6bU0pPtYBFSeZGdw9B/L4/HN5z4gO/wyiZC6HdPoscb4sLDU2Gc
	nvPCc3SldmiCVHzEARMaizNUiZUeCz2Y+YfzKGOgDS2pRxn97ZtqY+4/qK03faq3uCuPzTMe5UEQ8
	BxD7REfoECQmDNhYr18uRAJVo4VWxFaUkiJLck2An3u0DyKiU6L/mQDbuWiR7zlWA9S5PQjcX3x6p
	GEFYnLDMMNFuaj5hYzRis7oOdSskraS2eMxbPMmkeGcaX44zqs1C8GXdR/9ayrDaLxKOv7pdaynHK
	oXoZvSAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWX1h-0000000Eimn-3GI0;
	Wed, 24 Jul 2024 08:07:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWX1M-0000000EigS-1Oyu
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 08:06:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX1I-0006x5-Mc; Wed, 24 Jul 2024 10:06:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX1I-001oQf-9a; Wed, 24 Jul 2024 10:06:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX1I-007ndc-0i;
	Wed, 24 Jul 2024 10:06:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240722162629.3827946-1-a.fatoum@pengutronix.de>
References: <20240722162629.3827946-1-a.fatoum@pengutronix.de>
Message-Id: <172180840421.1858888.4959392125466727261.b4-ty@pengutronix.de>
Date: Wed, 24 Jul 2024 10:06:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_010648_417923_BC58A170 
X-CRM114-Status: UNSURE (   6.58  )
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
Subject: Re: [PATCH] ARM: i.MX8M: bootrom-cmd: include missing
 linux/kernel.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 22 Jul 2024 18:26:29 +0200, Ahmad Fatoum wrote:
> The header is needed for ARRAY_SIZE and kstrtoul definition, but was
> only included so far indirectly via <command.h> including <linux/list.h>
> itself including <linux/kernel.h>.
> 
> In preparation for removing the <linux/kernel.h> include from
> <linux/list.h>, include the header directly to avoid build errors.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX8M: bootrom-cmd: include missing linux/kernel.h header
      https://git.pengutronix.de/cgit/barebox/commit/?id=d8e6b4e9b6de (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



