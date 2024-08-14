Delivery-date: Wed, 14 Aug 2024 11:13:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seA4r-009UI9-1o
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 11:13:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seA4r-00068Z-04
	for lore@pengutronix.de; Wed, 14 Aug 2024 11:13:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CsWaBOhJHFEtvrwumx2V4Fz0hoey9y+OIn3pqF6S0ik=; b=4ErRa6rbRE3MLsUs03a7wDA5kd
	e0yXVtAh43+l9xcETN/FBGqxljxy1x2MHLOMxlqypgOKjDULQ8X0yYSAeTeLJXDRyhRMZURve9vnH
	of6n31kx7kLm4hwdQsYSNxpPl6RHM7L3JECdtTRP4LQr7/vZUUJ4131aaMql3yuBmihMB9VrQIgpU
	h4iNB0yL/uii7mpgyOyONVW23PaiaWKIJm2NNmJmak2r18XUwW8a3NvTZrUUZHzrG51PvyTOlnNa2
	GhAgfoGTQ28i0TKOMhmHRoaMCrMUMt4P4PK6i5M8FCdhAbx6V0ZLNjcpD8H8jztUUf34fukuR2rN/
	MYfWykEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seA4M-00000006Lee-1USm;
	Wed, 14 Aug 2024 09:13:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seA4K-00000006Ldx-0daL
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 09:13:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seA4I-00063r-MV; Wed, 14 Aug 2024 11:13:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seA4I-000KHW-9Z; Wed, 14 Aug 2024 11:13:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seA4I-005RIW-0m;
	Wed, 14 Aug 2024 11:13:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240809141755.312665-1-a.fatoum@pengutronix.de>
References: <20240809141755.312665-1-a.fatoum@pengutronix.de>
Message-Id: <172362680223.1296547.14464614952232456391.b4-ty@pengutronix.de>
Date: Wed, 14 Aug 2024 11:13:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_021324_224681_38379544 
X-CRM114-Status: UNSURE (   7.78  )
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
Subject: Re: (subset) [PATCH 1/4] ARM: add ARM32/ARM64 symbols for use in
 generic code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 09 Aug 2024 16:17:52 +0200, Ahmad Fatoum wrote:
> The CPU_32 and CPU_64 symbols are only defined for ARM, but they are
> still confusing to encounter in common code, because they have no
> explicit reference to ARM. Add ARM32/ARM64 symbols that can be used
> instead.
> 
> 

Applied, thanks!

[1/4] ARM: add ARM32/ARM64 symbols for use in generic code
      https://git.pengutronix.de/cgit/barebox/commit/?id=e490bb32045f (link may not be stable)
[2/4] efi: payload: force PBL_FULLY_PIC for ARM64
      https://git.pengutronix.de/cgit/barebox/commit/?id=95c7524fd756 (link may not be stable)
[3/4] efi: payload: alert user if CONFIG_FS_EFI is missing
      https://git.pengutronix.de/cgit/barebox/commit/?id=12a4d57229ae (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



