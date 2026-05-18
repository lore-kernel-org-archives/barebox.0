Delivery-date: Mon, 18 May 2026 12:43:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvRm-0016VJ-1z
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 12:43:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvRm-0007UB-0p
	for lore@pengutronix.de; Mon, 18 May 2026 12:43:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7IeU2c/QXsJLPr+9ygy275WqR60+oFMhZ6774qN/0gs=; b=ZRiWUlESCr8v7GSV+gy13IYdZ2
	1fNNZs2j75mS6+qUR896dRhXowSOHS1xBvB/itgGoTW7jwJCITh1nkj6xIohvopEGnZBvP6PXH9p1
	h0XgEYMqZESt8be3H58KNte8UPe5obvODAYsVpmLSNwe6Hl+vaTcFdHqgTqEyLrKPe3cnf6vGp3YE
	sEMScREEq48SaVwRo7MaMGAoixeWDku7t8S7oQ2srwvhCN2F9kE77IFhRpxIpS8RBg35kJrzbf6oP
	xs1+BsFHectTKedbUWNLtf+/PCAIILSYy5I1saOOvh91NWi5b2t9b6pv0tO1br8IX5dVJjrDS0K65
	xeMeaLQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvQe-0000000FHle-1KIj;
	Mon, 18 May 2026 10:42:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvQc-0000000FHlQ-41TC
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 10:42:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=7IeU2c/QXsJLPr+9ygy275WqR60+oFMhZ6774qN/0gs=; b=o/Ux8tcTjdgVP0q3DnHwW8+SSx
	Fu/tCkA4ATvLdquXV6gR8kJJYZYt2g4XpY46BeGOqV5ns9JcUHh61mClbwOUvjfXCSgQg4HsszhYI
	7ULO/cBUcHUpj5wwsk+1vVMc5oCDpEKZ0Fjm5ckF9oaizbrOol1d03HVsRBz8ToTKzWGaX2lb6Jd2
	vgS45BBsjsVccWmkk1m0lYamlbPUL+PoDTOP2vWMwvkvIbnQfwntpzGvBeABwy0Sm6ukgiPXIxsxR
	1XSBcxJOtgCz1sbSiBk0PzRUDPwVYNbLpGzdjuDWu+bEQ5kA29hM1Mjw44FdO575TxUpEeCdA3V3d
	1Oq+RR7g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvQX-0000000AnkC-3QQc
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 10:42:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOvQW-0007J7-Hh; Mon, 18 May 2026 12:42:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOvQV-000Zso-2v;
	Mon, 18 May 2026 12:42:24 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOvQW-0000000GwEh-1jf5;
	Mon, 18 May 2026 12:42:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Mark Diener <markdiener10@gmail.com>
In-Reply-To: <20260518085134.139464-1-a.fatoum@pengutronix.de>
References: <20260518085134.139464-1-a.fatoum@pengutronix.de>
Message-Id: <177910094440.4037080.2490289282900018074.b4-ty@pengutronix.de>
Date: Mon, 18 May 2026 12:42:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_114227_163816_BC7103FE 
X-CRM114-Status: UNSURE (   8.51  )
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
Subject: Re: [PATCH 1/2] startup: point out that /env/bin/init is legacy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 18 May 2026 10:51:31 +0200, Ahmad Fatoum wrote:
> It's 7 years ago that commit 90df2a955e3c ("defaultenv: Convert init script
> to C") changed the default to having the init in C instead of
> /env/bin/init.
> 
> The latter is still supported, but not a good idea for new platforms, so
> make it clearer by calling it "legacy" in barebox console output and in
> the docs.
> 
> [...]

Applied, thanks!

[1/2] startup: point out that /env/bin/init is legacy
      https://git.pengutronix.de/cgit/barebox/commit/?id=cf2f67645ad2 (link may not be stable)
[2/2] doc: user: barebox: update typical barebox startup log
      https://git.pengutronix.de/cgit/barebox/commit/?id=f30ef429a8cb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



