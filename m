Delivery-date: Wed, 25 Feb 2026 08:46:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vv9bC-005SCR-0k
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 08:46:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vv9bC-0001gU-Iw
	for lore@pengutronix.de; Wed, 25 Feb 2026 08:46:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NPA5Edv0n1xvj8g2VWaeR4c7Tjb2pa6WiK1vsJQGyyk=; b=JfczAFJVzbPPIsDKBgIkvue7sc
	6nmIT9tkHwZMjG2/Ub9SMKOxfOmeuj4jr6qh6QHkuO7wvVlvGq0U1eJKMeEM/YT3SoK1Jiiw97tdz
	zU9RDu0V7Q9v7oobJLQclGgjSyIHTgvIVzQWP3FMJ1RzUyMvI2byTtOJ/hwyp3qObYtEzKp2QRPI7
	+knOjHyZJclxZY9N4/3p0RqJdAtyMlczRhLEV+rOEkrYUFQBcnYcxLPUE9H/DoKiJ+OuwXmlMfz/x
	H3jwIuyGbPssOPinPiKW9ewaXKcqcRwFmgScDyR/zUPmqtIxILFAXsuNi1BLNEvrmuyg9TTOoQhCi
	/tTVHIIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9aa-00000003RUb-1yCy;
	Wed, 25 Feb 2026 07:45:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9aU-00000003RUB-1wHF
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 07:45:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vv9aQ-0001Vf-MT; Wed, 25 Feb 2026 08:45:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vv9aP-002Wpc-0W;
	Wed, 25 Feb 2026 08:45:34 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vv9aQ-00000004g43-1oOA;
	Wed, 25 Feb 2026 08:45:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260224155643.1835640-1-a.fatoum@pengutronix.de>
References: <20260224155643.1835640-1-a.fatoum@pengutronix.de>
Message-Id: <177200553442.1114448.3564636429437985029.b4-ty@pengutronix.de>
Date: Wed, 25 Feb 2026 08:45:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_234538_656250_7429B22A 
X-CRM114-Status: UNSURE (   7.13  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] fixup! ARM: i.MX6: load optee in PBL before barebox
 proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 24 Feb 2026 16:56:29 +0100, Ahmad Fatoum wrote:
> firmware: hide FIRMWARE_IMX6_OPTEE for non-ARCH_IMX6
> 
> PBL_OPTEE can be enabled on a number of platforms, so tighten the
> dependencies to hide the symbol when it's not relevant.
> 
> 

Applied, thanks!

[1/1] fixup! ARM: i.MX6: load optee in PBL before barebox proper
      https://git.pengutronix.de/cgit/barebox/commit/?id=4cc4b98ff26b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



