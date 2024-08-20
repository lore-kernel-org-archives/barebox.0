Delivery-date: Tue, 20 Aug 2024 14:08:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sgNfW-00BZuE-0I
	for lore@lore.pengutronix.de;
	Tue, 20 Aug 2024 14:08:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sgNfV-00036g-HT
	for lore@pengutronix.de; Tue, 20 Aug 2024 14:08:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AIqzvQZRL+5TPY81R30lxrTlpxyjUyVeaxx0ErxAdR4=; b=3VNTPvIUcZh+eNW9WhGnSdsAMp
	wWhCu7wwinFShhxUbkRCJmUG+owTPh4vcstskynsMlz/VxrF5FFcn7SN4XbozGheCsDSWZycr6GJN
	PvwKnjFpMqPCo9gnzHQMwHP1a5/Vi6xNdKS7oqJlcbADMQOu3NyGol+7xL2xwn+n83gYyPlRThWan
	wjPomHbYp3aQFmm1Nil809XYnNCzTVJ0VCHbOp/q2A6/eLpmzdyeVhmJK9p92iywOA9/0ZbbBJksg
	TEJjqvPkLZfSzhEMfu5S1VCoBT9Y08zCYffeTBhfm9L3UrQDJOZ815zJn7ayhcIk+gw4Srgq+lBMw
	YaRldvqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgNeb-00000005813-3sDz;
	Tue, 20 Aug 2024 12:08:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgNeY-0000000580Q-2kcZ
	for barebox@lists.infradead.org;
	Tue, 20 Aug 2024 12:08:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sgNeU-0002wf-Qh; Tue, 20 Aug 2024 14:07:54 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sgNeU-001lWE-DC; Tue, 20 Aug 2024 14:07:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sgNeU-00Go0Z-19;
	Tue, 20 Aug 2024 14:07:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240815114455.2723000-1-a.fatoum@pengutronix.de>
References: <20240815114455.2723000-1-a.fatoum@pengutronix.de>
Message-Id: <172415567435.4005446.17379792993525621972.b4-ty@pengutronix.de>
Date: Tue, 20 Aug 2024 14:07:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_050758_725279_D4968DB7 
X-CRM114-Status: UNSURE (   8.55  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] acpi: fix compilation for 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 15 Aug 2024 13:44:55 +0200, Ahmad Fatoum wrote:
> Build test on x86 fails due to pointer cast and because of forcing the
> bigger alignment on the flexible array.
> 
> The problematic pointer cast is for the XSDT, which is 64-bit-only, so
> let's fix the cast and return an error if we somehow see an XSDT on
> 32-bit.
> 
> [...]

Applied, thanks!

[1/1] acpi: fix compilation for 32-bit
      https://git.pengutronix.de/cgit/barebox/commit/?id=4fa3b9d2b64b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



