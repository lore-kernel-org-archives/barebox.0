Delivery-date: Tue, 20 Aug 2024 14:08:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sgNfV-00BZtu-0n
	for lore@lore.pengutronix.de;
	Tue, 20 Aug 2024 14:08:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sgNfU-00036O-MG
	for lore@pengutronix.de; Tue, 20 Aug 2024 14:08:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SHqDzmBIQWcrxlB68X8g0cYaqfN2isfMeelWlAOhFM8=; b=ChikIjdeMgDeUBsIk+0e50PK6+
	cs8gaJkKRBVg2WTZSu+SUYyFdJafR16yO2nt60VoZUe/I10drcX3D4Mh0jDRxXOXFs3nSql3sZ3Fv
	XTIW+b0fE1tv9fM/A7JBRF3KLS18DkB1V919wWWD6yOl4f36r06HQTTyZz32Iu3igUPf02FEiQ0F+
	pY3LpPO2Ib15A1PMH2Os0bqR2Vwi0+MnUq1JLzHbsuho3ZUvRX06CSxVsqKRT1eY8kBNTVkx//FUq
	S6DDMnPjjFB+YvltOcnFvTOtxC/YOadQPd22ctsFdB7jC176ArVx1JdKAo+flmPG3lZ8UbZdA3i4P
	XD1NBGbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgNeg-0000000582O-2qRF;
	Tue, 20 Aug 2024 12:08:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgNee-0000000581g-0x1z
	for barebox@lists.infradead.org;
	Tue, 20 Aug 2024 12:08:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sgNeU-0002wg-Qh; Tue, 20 Aug 2024 14:07:54 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sgNeU-001lWF-De; Tue, 20 Aug 2024 14:07:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sgNeU-00Go0Z-1C;
	Tue, 20 Aug 2024 14:07:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240815065646.1156788-1-a.fatoum@pengutronix.de>
References: <20240815065646.1156788-1-a.fatoum@pengutronix.de>
Message-Id: <172415567436.4005446.11474985151638230302.b4-ty@pengutronix.de>
Date: Tue, 20 Aug 2024 14:07:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_050804_296006_DEED330F 
X-CRM114-Status: UNSURE (   8.61  )
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
Subject: Re: [PATCH 1/2] include: linux/math.h: promote DIV_ROUND_UP_ULL
 args to 64-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 15 Aug 2024 08:56:45 +0200, Ahmad Fatoum wrote:
> DIV_ROUND_DOWN_ULL promotes division arguments to 64-bit, but
> DIV_ROUND_UP_ULL did so only for the division, not the addition for the
> round up. This would lead to a wrong result when the 32-bit addition
> wraps around.
> 
> Linux has an explicit cast to fix this, so do likewise in barebox.
> 
> [...]

Applied, thanks!

[1/2] include: linux/math.h: promote DIV_ROUND_UP_ULL args to 64-bit
      https://git.pengutronix.de/cgit/barebox/commit/?id=6866796d1ce0 (link may not be stable)
[2/2] i2c: efi: use DIV_ROUND_UP_ULL instead of native division
      https://git.pengutronix.de/cgit/barebox/commit/?id=2c24ed8454a0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



