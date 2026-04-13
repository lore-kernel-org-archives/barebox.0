Delivery-date: Mon, 13 Apr 2026 13:23:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCFO0-00BhS4-3A
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 13:23:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCFO0-0001db-Et
	for lore@pengutronix.de; Mon, 13 Apr 2026 13:23:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nuvckvGEHgGSS2IobnNr/no7oQy3nvSGKNsPCj3P4w0=; b=jLsswwiqGDIgrilhd4iVrY6Kfx
	k6YXiMzOMZxTcu+QAAiKyqQoCvhGcMmRm6X4o+jfSSA9FHKR8tJpjFtNjBBA2w5frp1F5JU685kwl
	HCTHHglmO0dJ9DhZHxcT3XtwgiTJJeZwBfNHn9lLgjZ7ztQ096TUhB7/hvQz2I/BaYvrTCjEc8jQK
	ORGjAHeBzJJVxtDN79abRqoTzh7Hbxox89Mc7WCcYfntCwjZQEIG8B8GqrQ7Qy/B+TeXVkwnSP5Z4
	0w/1qSpsxqn8ImiDqi+oJBXjJmIbIXDgkQoh6rRXE0YTEQomsQOKH95XAQimYvqbCo+PpIrBP/zL+
	ClbCkHSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCFNe-0000000FZLN-4BXz;
	Mon, 13 Apr 2026 11:23:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCFNc-0000000FZKK-25eE
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 11:23:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCFNa-0001XJ-Tk; Mon, 13 Apr 2026 13:22:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCFNa-005A4T-2N;
	Mon, 13 Apr 2026 13:22:58 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCFNa-0000000Eqh7-2oxF;
	Mon, 13 Apr 2026 13:22:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260413100243.1456951-1-a.fatoum@barebox.org>
References: <20260413100243.1456951-1-a.fatoum@barebox.org>
Message-Id: <177607937866.3539112.575697123949531227.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 13:22:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_042300_542000_5D2AA225 
X-CRM114-Status: UNSURE (   8.36  )
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
Subject: Re: [PATCH] state: suppress state overwrite warning for barebox DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Apr 2026 12:02:43 +0200, Ahmad Fatoum wrote:
> Nowadays, the root != of_get_root_node() check always evaluates to true,
> because fixups are never applied onto the barebox live tree directly,
> but at a copy. This was necessary to allow repeated fixups, e.g. by
> of_diff - + or with multiple boot targets.
> 
> The check was useful to have though to differentiate between the case
> that the barebox DT is passed to Linux (where it's benign that the state
> node is overwritten) or the Linux DT having a state node (which can
> mislead as the kernel will be overwritten).
> 
> [...]

Applied, thanks!

[1/1] state: suppress state overwrite warning for barebox DT
      https://git.pengutronix.de/cgit/barebox/commit/?id=40e7f324b675 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



