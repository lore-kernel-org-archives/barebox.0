Delivery-date: Wed, 08 Jan 2025 15:07:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWio-000lcz-36
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 15:07:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWio-0003OH-UB
	for lore@pengutronix.de; Wed, 08 Jan 2025 15:07:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y8vWn2MNNPe/xS05dBpNIbCO1yFCwVYvJ0vH7SotlXs=; b=gloiDffzv75QEBbdiMIcLqR+Bt
	SNtzMuwwvCjHg6TPhSud58zBjM5tMlMeJK1j7+OFdRUxwemrFgDJ5ZTtgQSzlNg36Q3EqNafP/jwl
	nlJR5AwabeLpidAGZF1ORif7hLTNzsnbaREVLEvRGenn8smRcMvN1fmGaMsHH29rmeYxCzQGyLtal
	kuW2dWuWsbVCBDWxYau7vcGvDfSO9d7Rx7S4BDNsNVevkTRo//H3f/eJ62MZk5m5riZZZu+1rGJdK
	4lvUFDC5ReqI0lqBVzwDWxOv6JAC4nhTDd76KExtBE8+4VcVcE5qG0oEc3UoreINNhE3uJg2kRihR
	yi+ekxqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWiR-00000008jxE-3vF5;
	Wed, 08 Jan 2025 14:07:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWiP-00000008jwq-1O9s
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 14:07:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWiM-0003HR-Rc; Wed, 08 Jan 2025 15:07:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWiL-007X6b-2t;
	Wed, 08 Jan 2025 15:07:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWiM-0008qa-1t;
	Wed, 08 Jan 2025 15:07:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250107110825.3081026-1-a.fatoum@pengutronix.de>
References: <20250107110825.3081026-1-a.fatoum@pengutronix.de>
Message-Id: <173634523858.33997.8098935941475512417.b4-ty@pengutronix.de>
Date: Wed, 08 Jan 2025 15:07:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_060721_371686_99B3DB95 
X-CRM114-Status: UNSURE (   8.28  )
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
Subject: Re: [PATCH master] startup: fix infinite loop falling into menu
 without /env/menu/mainmenu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 07 Jan 2025 12:08:25 +0100, Ahmad Fatoum wrote:
> If MENUFILE (/env/menu/mainmenu) doesn't exist, an infinite loop will
> keep executing this non-existent file.
> 
> If this happens, let's exit the infinite loop and hang barebox instead.
> 
> Previously we dropped to a shell in this situation, but this was changed
> as menu-only boots should not be circumventable and drop to a shell due
> to errors.
> 
> [...]

Applied, thanks!

[1/1] startup: fix infinite loop falling into menu without /env/menu/mainmenu
      https://git.pengutronix.de/cgit/barebox/commit/?id=427b037cf323 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



