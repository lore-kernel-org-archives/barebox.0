Delivery-date: Thu, 22 Aug 2024 12:52:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh5R0-00CDq8-0e
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 12:52:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh5Qz-0005KO-Kr
	for lore@pengutronix.de; Thu, 22 Aug 2024 12:52:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zzqjClofmMdqfHAPqwbWooUdWZYkj/kGhQdVo5chhms=; b=k9cA8gyt5uIIpb5uo39SV+lDrX
	sk7HB0ABgs3ch8Eww51LNRC/h2ZfLqyIRiHH3AYO1MjF2ISrrpoN18C+fYlanyUMlchEztd8zX5YU
	loi+557A0fni+fXGHBYax4JdKEqUaNsE+r2KuStxKnrbLEmrO2p/oM7bFLhuSaonhiYloxdIy9NN7
	0MQh2QI6vWbKlwfffFbXDMYWSQbhqTxZOlIrs15bm3Dbo9SNKFOqdaYq+OpVqcZW/jvXsQX9dgpfH
	H3o/b/eK13yhnZGAV6/mQ1rlhvAE+OMuQk4JwhU7xv9GYORArUSbmdEkVJMMXglgdJbORc0SCIMb1
	2hbi5rPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh5QK-0000000CUAA-230D;
	Thu, 22 Aug 2024 10:52:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh5QH-0000000CU8x-1YIS
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 10:52:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sh5QE-0005Bf-B2; Thu, 22 Aug 2024 12:52:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sh5QD-002EL1-U7; Thu, 22 Aug 2024 12:52:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sh5QD-007nSZ-2p;
	Thu, 22 Aug 2024 12:52:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240820124034.2870742-1-a.fatoum@pengutronix.de>
References: <20240820124034.2870742-1-a.fatoum@pengutronix.de>
Message-Id: <172432392587.1858406.6751307374729498518.b4-ty@pengutronix.de>
Date: Thu, 22 Aug 2024 12:52:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_035209_437536_2572357B 
X-CRM114-Status: UNSURE (   8.43  )
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
Subject: Re: [PATCH v3] acpi: fix compilation for 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Aug 2024 14:40:34 +0200, Ahmad Fatoum wrote:
> Build test on 32-bit failed because of forcing the bigger alignment on
> the flexible array.
> 
> Removing the alignment in turn broke the CI tests for 64-bit, so
> let's go back to using a packed struct, but have the alignment follow
> the size of the pointer.
> 
> [...]

Applied, thanks!

[1/1] acpi: fix compilation for 32-bit
      https://git.pengutronix.de/cgit/barebox/commit/?id=cd20189cd18b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



