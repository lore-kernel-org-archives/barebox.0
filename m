Delivery-date: Tue, 21 May 2024 13:04:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9NIe-00C8si-1h
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 13:04:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9NIc-0001sa-SV
	for lore@pengutronix.de; Tue, 21 May 2024 13:04:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7SnKTTu5EUYXgNkYpZZt5evnIGLipa/faakS47UX/lc=; b=z0DK+cwMa/D2BFGAKGTDlxMdkQ
	+uh8i1tg89Zl4635qNSDhF5PlbpvkDeb1HJrjZA2cRTnOJN9VgDXTfdNUVD4iDIlZ6HwLCAOUjcaN
	brCelop0/z4/xEVB0rKoj1orP3zPuVhTmSA053XKAjEJBvJQCYp0Ex2spUwgE+NuGAIk4sYwBFSn6
	6hcmDvtn7ifM7/lZwbAVniWO+z01HbjcS3D65SQU4I2MPU72AHdEmiYq5QaJvijGy7ERGcEMzboHt
	z/Xs9k8XZ/uvR4MxYzeq62YYDF50feTpSYklfj6lc0nKYoISbpsW9CYZDSpLaUs4B0/JGsT4joalv
	gBH0bRYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9NI4-0000000HDyu-3U9J;
	Tue, 21 May 2024 11:04:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9NI1-0000000HDxN-359G
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 11:04:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NHz-0001dA-VH; Tue, 21 May 2024 13:04:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NHz-002NWU-Ir; Tue, 21 May 2024 13:04:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NHz-008Oxr-1a;
	Tue, 21 May 2024 13:04:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240515060758.3580734-1-a.fatoum@pengutronix.de>
References: <20240515060758.3580734-1-a.fatoum@pengutronix.de>
Message-Id: <171628945548.2002395.13902407579904640882.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 13:04:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_040417_813259_3CC94223 
X-CRM114-Status: UNSURE (   9.10  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] list: fix CONFIG_DEBUG_LIST link failure in
 PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 May 2024 08:07:57 +0200, Ahmad Fatoum wrote:
> With the addition of PBL handoff data, we now use <linux/list.h> in PBL.
> This works fine with CONFIG_DEBUG_LIST disabled, because all functions are
> inlined, but when building with the option enabled, references to the
> out-of-line sanity checking functions breaks the build.
> 
> Fix this by omitting these references when building for PBL.
> 
> [...]

Applied, thanks!

[1/2] list: fix CONFIG_DEBUG_LIST link failure in PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=84d8445e0dfb (link may not be stable)
[2/2] pblimage: ls1028a: fix handling of short reads on
      https://git.pengutronix.de/cgit/barebox/commit/?id=27d7f5dcb305 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



