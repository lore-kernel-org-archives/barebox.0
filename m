Delivery-date: Thu, 26 Feb 2026 13:10:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvaBs-005sR7-1K
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 13:10:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvaBs-0006sV-4k
	for lore@pengutronix.de; Thu, 26 Feb 2026 13:10:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QBiheskRjyaPbAMW1/dv5lKgIBg/1z/mRv4WuH+VwNo=; b=kMMpequurc8b0F4wCmcJhf5U18
	xKbQNIkm2wLcYaWXAoBnmZ31W0rYUPKqOmqV7L7/RHVQ+GdNnun73BrZnzCeUV0+wMhElasKfne/f
	AHYgmSPM9e8yXezL8LvZBYa2zFOlJktu3D5QeOzVbJft2P5uZcKWJOO/uBIATqAjFja7baldTJzjw
	/4SoEY7KKkFyKEUs6w/5abUysb1o/s3FhuZWOrgqhOJ63vZbey6x3ukM5M6Cla7JQ4ISC1hLMGvlg
	T4tApmuEEZ+NwuQ/Swb2aq7KLg4Cfaz8XkYhCyF0yOqZt3Zck6oC85RzCFsTZShaVKtQow6uWY9sh
	mBDV19tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaAe-000000065q4-3BM1;
	Thu, 26 Feb 2026 12:08:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaAc-000000065py-498z
	for barebox@bombadil.infradead.org;
	Thu, 26 Feb 2026 12:08:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=QBiheskRjyaPbAMW1/dv5lKgIBg/1z/mRv4WuH+VwNo=; b=O+sLFdksoxmITyqlkntjqMzIE6
	bQIsyNg1JwgOfHgslY6o5euEubBf1DpU9GLJ/abzVRrm3VNTv6XTM+e3KCbG/DeewJymPaED9aIOU
	9qODerqRD+d3hNa12eagAAO4SILRpYcCHqPaBkPdN/aPoS1FGJlU+c2z3vQ2VcdTfsTl/nz+6/pYe
	AdFqWHSvveWSpZB5Qisg6fIyG3OugQJaTC7BL4nk7SRPfwxAcnr8LVS4tUAaoaAQ4qxOx0DcMhX3v
	VL4D9SP8qBhiwSSdQgPODEVWihO2sKMWTVLiAOYW9QMuQS0uP27WZclsQQdjXPKzXi2gSvXA/hZd0
	AOQbYHDQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaAZ-0000000AutY-2qBR
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 12:08:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvaAY-0006Xu-WD; Thu, 26 Feb 2026 13:08:39 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvaAX-002izR-1V;
	Thu, 26 Feb 2026 13:08:38 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvaAY-00000008ZYl-3BxA;
	Thu, 26 Feb 2026 13:08:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260226102044.1746261-1-a.fatoum@pengutronix.de>
References: <20260226102044.1746261-1-a.fatoum@pengutronix.de>
Message-Id: <177210771875.2043074.966580765062127455.b4-ty@pengutronix.de>
Date: Thu, 26 Feb 2026 13:08:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_120839_919486_606AB4AC 
X-CRM114-Status: UNSURE (   5.59  )
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
Subject: Re: [PATCH] fixup! security: optee: add helpers to register OF
 overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 26 Feb 2026 11:20:41 +0100, Ahmad Fatoum wrote:
> security: optee: fixup: emit stubs if CONFIG_OF_FIXUP_OPTEE disabled
> 
> sandbox allyesconfig build fails, because it has CONFIG_HAVE_OPTEE=y,
> but no CONFIG_OF_FIXUP_OPTEE.
> 
> 

Applied, thanks!

[1/1] fixup! security: optee: add helpers to register OF overlays
      https://git.pengutronix.de/cgit/barebox/commit/?id=2ac598b0e4aa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



