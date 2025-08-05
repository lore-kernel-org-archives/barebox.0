Delivery-date: Tue, 05 Aug 2025 11:01:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDYJ-007EpT-0k
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:01:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDYI-0007L3-NF
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:01:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oqbCTMOFqb0jEPSvX4FeLtLgVQlfQcByEvVBkgkWf10=; b=bbDM4ZpI+TWhz2eDxnipcdEBRI
	OEMog42wwthgevexXeyIe5NDcT1w1K7f/tGz4y7Kwb4CL+8zED5s33fM/J0OHVBglWZ7JmDrViMA+
	fbYCLLRw4jYtwNWPTmKRAROU9YAU4vxyTs/B2zyU/WyqRO82Ml9wkIEnYKGvu9UtZwCcLdTRPSF0l
	L3O458Hixi/icsh2plGCGurLcqKV3cRl2MshlUMXoxfe+DRZcefHxDfnOa5+ykOJVXJrvV5C1xGmK
	ViSrvXoaEfMMwM0ZIlEcCVQrFEjRyn/Na8yA9BcDauUShrHBLZH0Y+jwCScpp/KptgqU2xXLCWxu0
	+gowVLvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDXm-0000000CHwv-2Idd;
	Tue, 05 Aug 2025 09:01:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCtF-0000000C8Uy-2qIZ
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 08:19:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCtE-0003Dr-Bf; Tue, 05 Aug 2025 10:19:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCtD-00C0h4-1j;
	Tue, 05 Aug 2025 10:19:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCtD-00EenT-1X;
	Tue, 05 Aug 2025 10:19:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Renaud Barbier <Renaud.Barbier@ametek.com>
In-Reply-To: <20250715201908.2515578-1-a.fatoum@barebox.org>
References: <20250715201908.2515578-1-a.fatoum@barebox.org>
Message-Id: <175438195946.3493396.9444062364812354742.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 10:19:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_011921_722182_853EC93C 
X-CRM114-Status: UNSURE (   8.86  )
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
Subject: Re: [PATCH master] drivers: fix buggy comparisons of casted
 device_get_match_data to zero
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 15 Jul 2025 22:19:08 +0200, Ahmad Fatoum wrote:
> device_get_match_data returns NULL when no match data is available,
> which a cast to uintptr_t turns into a zero.
> 
> Most drivers either put valid pointers into the match data or they
> reserve a literal value of zero to be "unknown".
> 
> Three drivers don't do that though and use 0 as valid value for the
> match data and thus the check against zero breaks probing drivers with
> the corresponding match data.
> 
> [...]

Applied, thanks!

[1/1] drivers: fix buggy comparisons of casted device_get_match_data to zero
      https://git.pengutronix.de/cgit/barebox/commit/?id=964a91e4427f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



