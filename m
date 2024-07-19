Delivery-date: Fri, 19 Jul 2024 08:23:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUh1L-000kfL-1F
	for lore@lore.pengutronix.de;
	Fri, 19 Jul 2024 08:23:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUh1K-0006pH-Re
	for lore@pengutronix.de; Fri, 19 Jul 2024 08:23:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UX4KWHXKMTSLYi7nHn2FcBE7WThB/IOrHGYHLPd55XQ=; b=mG3YvrucNyD5SODXtnU7a1YmR/
	1Q3/ck8AHYk93nvGciiRhin5J+EnvSfrX8ccs32+o/qJvDSxhC2tjuesBmIbkB5yFp6X0EylgwPYX
	dwU1VVTrwDyOiEq+YlVDWNv3gTCFPEq/niJb8T8YUDqOCJ81+b1eXMkrqXHZsKcIJg/4EUT9WRtcI
	A9IAq0m7u5sGr3AUVgCDMhJR9TDpQvZ7IIQ7WHEcemqgU6zN/csoNkzYSw3Sw7dk/RR334jb77Atb
	+hDnIgrlr/sXIu4dKiuf33OXoJPGkTAjfvYQGU4E44HXq9LjgDoPEBd7xB4u23mEYzrzGivHQCvJN
	RGdNOSGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUh0s-00000001neM-27jE;
	Fri, 19 Jul 2024 06:22:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUh0p-00000001ndR-3I4h
	for barebox@lists.infradead.org;
	Fri, 19 Jul 2024 06:22:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUh0o-0006lX-Cx; Fri, 19 Jul 2024 08:22:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUh0o-000ccS-01; Fri, 19 Jul 2024 08:22:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUh0n-002Pez-30;
	Fri, 19 Jul 2024 08:22:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240716115645.1954110-1-a.fatoum@pengutronix.de>
References: <20240716115645.1954110-1-a.fatoum@pengutronix.de>
Message-Id: <172137015792.575264.17528772858124515199.b4-ty@pengutronix.de>
Date: Fri, 19 Jul 2024 08:22:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_232239_854445_CE4DAB1A 
X-CRM114-Status: UNSURE (   6.31  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: xfuncs: employ compiler attributes to aid GCC
 warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Jul 2024 13:56:45 +0200, Ahmad Fatoum wrote:
> We already use __alloc_size and __realloc_size in <malloc.h>, so GCC can
> warn about some types of memory safety issues at build-time.
> 
> Let's have the same for xfuncs.h as well and additionally specify
> __returns_nonnull, so the compiler could provide better diagnostics.
> 
> 
> [...]

Applied, thanks!

[1/1] include: xfuncs: employ compiler attributes to aid GCC warnings
      https://git.pengutronix.de/cgit/barebox/commit/?id=e80f48216932 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



