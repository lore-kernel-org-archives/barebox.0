Delivery-date: Tue, 06 Aug 2024 10:24:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbFUv-006lgY-2Y
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 10:24:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbFUv-0001SB-7t
	for lore@pengutronix.de; Tue, 06 Aug 2024 10:24:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G5emZu67wDr7ZmcecbyASIkiSEPD8IlKX7sMWVKrEt8=; b=b3Cmh2yFh2o6mNlmJzb17wWqfW
	NgphO5skcvohEF3/JZoUD6jsl7SJlXEWwAenna31MtBD7OWqJ3ihYx64xj+ph8jhn2fcvhCo7d7qL
	xfIO1UEYEsVQn7mPKDCPw4Ybhr0XhdFgcKa3cEFGI+Ty09xkc2xy2vntygefhlShMdvkHX2r8BR+/
	/B7nUBrtG3fVr87RLy1zOWgP5sa7nFRaiSCmAUQWQrbnfitO3yL/++1IFzuqLegcjgE+bPcyk2TwS
	AbKkblJ+YzAvsJx2fH+YQkVJcBgC7HkIYZuLIzzI/t2egveqTQmyKeONiMMttdSPyfcsVzcP2XbjG
	DRYpR5WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbFUP-00000000vR5-17f5;
	Tue, 06 Aug 2024 08:24:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbFUL-00000000vQf-4BQV
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 08:24:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbFUK-0001Na-GL; Tue, 06 Aug 2024 10:24:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbFUK-004uV9-3S; Tue, 06 Aug 2024 10:24:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbFUK-00EN2f-04;
	Tue, 06 Aug 2024 10:24:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: lgo@pengutronix.de
In-Reply-To: <20240806081203.1538702-1-a.fatoum@pengutronix.de>
References: <20240806081203.1538702-1-a.fatoum@pengutronix.de>
Message-Id: <172293265201.3425003.17688361578067239263.b4-ty@pengutronix.de>
Date: Tue, 06 Aug 2024 10:24:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_012414_065950_53EAE27D 
X-CRM114-Status: UNSURE (   6.74  )
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
Subject: Re: [PATCH] console: countdown: report who is interrupting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 Aug 2024 10:12:03 +0200, Ahmad Fatoum wrote:
> Fastboot and RATP automatically abort the boot countdown, so the user
> can send more commands.
> 
> In cases where services talk either protocol unbeknownst to the user,
> this can be very confusing, thus print an info message whenever this
> happens.
> 
> [...]

Applied, thanks!

[1/1] console: countdown: report who is interrupting
      https://git.pengutronix.de/cgit/barebox/commit/?id=b3038874c855 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



