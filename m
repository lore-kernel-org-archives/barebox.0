Delivery-date: Thu, 28 Nov 2024 07:55:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGYRK-001LrW-1y
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 07:55:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGYRK-0006Q5-HW
	for lore@pengutronix.de; Thu, 28 Nov 2024 07:55:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iOsJ98gqt2aGPwFrnCtf+cOUti6aTTgftdv1ayzxxsE=; b=FtHR2fN5YP1KFpUqxReZ2ilw7f
	aPIXy3XZ72BONSuq23+W0BZjAigWIg4GVWbWMSVFaHtcMYVAKjg1TVB3lK5Y9Q8r/6U+YNbwp5YJ5
	7Z0FeO0pGXI2BH1I9bGErq2vZ+7MIp3k5Hd3+1Q3lfb/wqhd/QHoWq1Z/3Ai7d0X0FH0ePH4+iwyG
	tVix81xS/IfgC8zurls1p2fQHdlpWEj2BEJspWzgdpOf0HWnTrO5ccZrhuZne7I1ppzgynt2qIop/
	lkQqF70UcTuVLrGhXU2tZTS+OXmFf07ZnVQCrxVKWvlT7kdCTTK4nkcV975whPOD8JtBdCMCZWG/X
	rbhAPI1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGYQj-0000000EpyX-3YPt;
	Thu, 28 Nov 2024 06:55:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGYQ7-0000000EpvR-3Roe
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 06:54:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGYQ4-0006Aw-Em; Thu, 28 Nov 2024 07:54:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGYQ3-000ZHD-1d;
	Thu, 28 Nov 2024 07:54:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGYQ4-00FL06-0f;
	Thu, 28 Nov 2024 07:54:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de
In-Reply-To: <20241126153312.3758355-1-a.fatoum@pengutronix.de>
References: <20241126153312.3758355-1-a.fatoum@pengutronix.de>
Message-Id: <173277687220.3655619.815358574687302650.b4-ty@pengutronix.de>
Date: Thu, 28 Nov 2024 07:54:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_225435_862105_289979FB 
X-CRM114-Status: GOOD (  11.05  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] environment: upstream-NVMEM-compliant OF binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 26 Nov 2024 16:33:07 +0100, Ahmad Fatoum wrote:
> While we have had our binding for a long time, it was never submitted
> for upstream inclusion in the Linux DT bindings and it's unlikely to be
> accepted as there are no other bindings that reference a fixed partition
> in a property.
> 
> Linux has support for a u-boot,env binding, which is used by giving the
> partition a compatible = "u-boot,env" property.
> 
> [...]

Applied, thanks!

[1/5] of: partition: don't parse nvmem-cells in legacy OF binding
      https://git.pengutronix.de/cgit/barebox/commit/?id=02fc38464af2 (link may not be stable)
[2/5] nvmem: probe nvmem-cells container via driver model
      https://git.pengutronix.de/cgit/barebox/commit/?id=67dc0fae9496 (link may not be stable)
[3/5] environment: register barebox env OF driver regardless of /chosen
      https://git.pengutronix.de/cgit/barebox/commit/?id=64a14b10341a (link may not be stable)
[4/5] environment: add support for a single node barebox,environment binding
      https://git.pengutronix.de/cgit/barebox/commit/?id=2e5876b24293 (link may not be stable)
[5/5] sandbox: switch to new barebox environment binding
      https://git.pengutronix.de/cgit/barebox/commit/?id=6302b629aec6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



