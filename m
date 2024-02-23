Delivery-date: Fri, 23 Feb 2024 08:37:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdQ7K-002dkz-1i
	for lore@lore.pengutronix.de;
	Fri, 23 Feb 2024 08:37:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdQ7J-0001Um-Ck
	for lore@pengutronix.de; Fri, 23 Feb 2024 08:37:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PXF2nITTIKAJlKISH0ma6TiRBGRPcaIzOUErbcqtnNo=; b=IZuGuAkEavsuMENdxBy78NTRms
	jIu3wGtXnCFSDAp5NZFM7k+2W9mH+mWJGO4EdfBCyCcW1OVEa4Jv7TbTKLU7iZuO9FJLjvRpIjzz/
	bL43LLHeQEWsPr1h136yOeoj2cH+bTLhZ8Kji2oNy9j7sSpyYzagzVUe7lcWoz9Byibb5JHbMC5v5
	VGrb/exFC+Ndp5J4/4zVX59VVB/8MCZiczRTSbRDOWeMEKTy9oTXpRZftkMdZD0tJbswsmqfqvjZg
	UkdaMu0UMKj9E3nO3INS8F0zth7ivi1JoDY6CTvsmWPHrRbGmSQB1vM3T/OtWfyVxbMTFB+DT5odA
	JC1NW9LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdQ6C-00000008JnT-15AP;
	Fri, 23 Feb 2024 07:36:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdQ35-00000008J8J-2j9S
	for barebox@lists.infradead.org;
	Fri, 23 Feb 2024 07:35:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ34-0000qx-8a; Fri, 23 Feb 2024 08:32:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ33-002Nfa-S4; Fri, 23 Feb 2024 08:32:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ33-001FL4-2b;
	Fri, 23 Feb 2024 08:32:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ukl@pengutronix.de
In-Reply-To: <20240220172527.599962-1-a.fatoum@pengutronix.de>
References: <20240220172527.599962-1-a.fatoum@pengutronix.de>
Message-Id: <170867356580.297131.14232217175830869747.b4-ty@pengutronix.de>
Date: Fri, 23 Feb 2024 08:32:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_233254_067061_1B706743 
X-CRM114-Status: UNSURE (   8.59  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	TVD_SUBJ_WIPE_DEBT,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: i.MX8MP: dts: remove power domains
 referenced by media_blk_ctrl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Feb 2024 18:25:27 +0100, Ahmad Fatoum wrote:
> The media_blk_ctrl is hardcoded in the DT to reference a number of power
> domains that we delete. The media_blk_ctrl itself is still usable
> without them (e.g. LVDS doesn't require ISP), but the probe in Linux
> would fail, because the power domain can't be attached.
> 
> This has already been fixed once in commit 5600290f4bf1
> ("/arch/arm/dts: imx8mp: Do not mask out mediamix power domain"), but
> got reintroduced recently.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX8MP: dts: remove power domains referenced by media_blk_ctrl
      https://git.pengutronix.de/cgit/barebox/commit/?id=02f8945abcb0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



