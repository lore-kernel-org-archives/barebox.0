Delivery-date: Tue, 22 Apr 2025 10:37:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7987-003yS6-0O
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:37:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7986-0000fb-H7
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:37:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=87MnjgV7jPlNZnCounzbarL0a4ioHpTfnqy1WhI+OAc=; b=Zt4p/Vsz0J9eXBQgUf5BpvTqKa
	utobsY3A/f8ABWsVbmhSKS0aJUBnvIPWOKIwjWfYBL6xrdyY6+k9QIN5mloBP9rQFkSAiwomNQ0ya
	5tgeHKEDz7HyQezESZa0GXzClawzQUHtXMZau5qo+Hj402b428nhOYCm2E7vaDxsQeOA32txH3bXQ
	Ukr/ZttRl70B/GKv0yuq3EwRYSW3XNMKpD3cXuzXwANKrVcD5MunTEYejBrSo2+amMYu1G8aPDD70
	V2XH/PJ6SkZuYoUgZOWNeHsjhwIljwcK7b+PQV9YujCw9hvdt6mKK6QiFOHJQC+IYYJfLvZ1BEvjL
	skOxiaxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u797f-00000006LPO-0v7q;
	Tue, 22 Apr 2025 08:36:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Ie-00000006ABg-1ENi
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:44:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78Ic-00070X-Uq; Tue, 22 Apr 2025 09:44:10 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78Ic-001Vtt-2T;
	Tue, 22 Apr 2025 09:44:10 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78Ic-00CYqt-2G;
	Tue, 22 Apr 2025 09:44:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250422063733.126107-1-a.fatoum@pengutronix.de>
References: <20250422063733.126107-1-a.fatoum@pengutronix.de>
Message-Id: <174530785069.2993861.16911916741548751623.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 09:44:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_004412_339867_ADFC0ED0 
X-CRM114-Status: UNSURE (   6.52  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! defaultenv: boot/bnet: fallback to booting
 generic 2nd stage FIT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Apr 2025 08:37:33 +0200, Ahmad Fatoum wrote:
> defaultenv: boot/bnet: mention fallback to FIT image
> 
> When neither the normal barebox image or the FIT image exists, the error
> message will only list the FIT image, which can confuse users.
> 
> Therefore print out a message when the fallback happens.
> 
> [...]

Applied, thanks!

[1/1] fixup! defaultenv: boot/bnet: fallback to booting generic 2nd stage FIT image
      https://git.pengutronix.de/cgit/barebox/commit/?id=637b9d63f7c2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



