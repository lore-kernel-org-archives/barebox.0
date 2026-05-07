Delivery-date: Thu, 07 May 2026 12:39:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw8q-001vvx-2a
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 12:39:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw8o-0001F8-7h
	for lore@pengutronix.de; Thu, 07 May 2026 12:39:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hh+BgDBQ4HSWyd/Yed4zx5feactthRJ7WIdX0ASiBCg=; b=iS2D9H+K60i5btPVgJtLKLK1L1
	uaJGEn+IbNa2JMeKdba+siyBNoLUgq8v2eSTtF0RMuTD+cbA7io5L6+GnW0q56f5LO/Q2GrTmNjKt
	7V/bZAWYdjQn3JuKG908b6iatv3o3HZ1L0I/BdoCLTId9BeBKhDENm2JKjdc9n7I67dEXsqgbXiY9
	z8+JaljYu8ZEU/W7l2QZf+C6kenafTmeYyp4IZmETpWv8shQA6NphHEfRRJxJHsB9SPVqh+STZwCW
	cvAzzKw4laGCV8rYxJMF1bvsSQT8NU9owvNT6D8iN7TTf6TvqkfRm0ytzkTLOz2zciP579cyECjPX
	9keTP1gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7w-00000003Vjc-3DVO;
	Thu, 07 May 2026 10:38:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7u-00000003Vht-0umi
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 10:38:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Hh+BgDBQ4HSWyd/Yed4zx5feactthRJ7WIdX0ASiBCg=; b=gzqi5FFOYYZ555sOxuqOyz2Ui6
	ETYlk9MQnv91A9zFq0SDUiQ3cxVQrq+ArR8NKVgOI6Ct+ENo572ZHRXT9SmkmteGwZ6NZwcJd8H9C
	jfE+v2C9pYUapidQ80VyLsura4wl3ZSEHg7csmOrWY4BSf5XJwUEdX3XLYSlHiMcphclFiyRzGHC6
	/qA8EMD3OCyLLY3+h/JHePAqnyMmovjkCVzNjTtDDLTSGI8p4zQhOV2S7ThbrUVqdOnq1JSd9bzrF
	482mdIf3FcX/wHaLrGbwSYYVsbadAOefL96dxqz5n4DAS0Rporokl99nJFmkamaUE4Rt8R2dZNTwn
	MS3qqcag==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7o-00000003ENu-05h3
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 10:38:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7k-0000T6-H9; Thu, 07 May 2026 12:38:32 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7j-000uD1-20;
	Thu, 07 May 2026 12:38:32 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7j-0000000BjIN-4AXN;
	Thu, 07 May 2026 12:38:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260501090801.1041468-1-a.fatoum@barebox.org>
References: <20260501090801.1041468-1-a.fatoum@barebox.org>
Message-Id: <177815031199.2795644.5924323248653598469.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 12:38:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_113836_490780_B176639E 
X-CRM114-Status: UNSURE (   6.22  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] serial: efi-stdio: implement DEC save/restore cursor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 01 May 2026 11:08:00 +0200, Ahmad Fatoum wrote:
> term_getsize() employs the DEC save/restore cursor control sequences
> (\e7 and \e8) in its determination of the terminal's size.
> 
> efi_process_escape() did not handle them and instead expected that all
> \e are directly followed by a [.
> 
> Implement support for \e7 and \e8 and have the function silently skip
> any other non-bracket \eX escape.
> 
> [...]

Applied, thanks!

[1/1] serial: efi-stdio: implement DEC save/restore cursor
      https://git.pengutronix.de/cgit/barebox/commit/?id=75205ab32035 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



