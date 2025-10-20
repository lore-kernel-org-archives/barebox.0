Delivery-date: Mon, 20 Oct 2025 14:59:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApU2-009ttb-2j
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTt-0001Gd-MC
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PMV2zr7ZXl0ebxeisn+jVkNRuyPPTyANGQAAIQzx1T0=; b=bkvjwo8rvq7ZwlUgEddmC8+Xdz
	tBUxzGWGiSkJFxgAksiWmkJsz2TaF38TNw+5T4GhDzX7lWnCTJfItpWceuud5apPkYCYjhiJgIITd
	TlWr945jGMl0c8jYIs39VBBF21cvr9DiPNLx+W3tjPwaAu4zkauS8LdeiAQb5SwGXdcpCkVPykPaw
	mqVqfkg7a4I2WCi/MuhpZz7n8G5NGtYB4Z2DFxIduxa3Gr7K7HM1RtBI+e7bE1U22iqQUNfKyqoGg
	86Jyxr+zWjLSgUg4WS4UXqT57zey5U0QwiuP6fXabz7wy91VsODQt6tqgLSf5lzfQkdODOvV2tKRY
	0U4C1p/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApT5-0000000Dfpt-2aiD;
	Mon, 20 Oct 2025 12:58:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSu-0000000DfY9-2H2c
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=PMV2zr7ZXl0ebxeisn+jVkNRuyPPTyANGQAAIQzx1T0=; b=hXgyFFlQEepU7hkdhBLKqXf6mL
	qkIkKpcwk86MSSnddK6r2Q0WAuqtONJc3tTeP4drQv93YFTlBWKJv+TdoiReaey50ZG9nrilFktnq
	it3wssLFd2vbWwZNomi90W1QW+efo8BhW63N45TFe4CCXaiwPg0apSHzDCK9z6Hbq66K5XVZHdR+J
	iMONUJq8i/fPP2fMc6FtERIBOMgpykt125FOWbzkxZhV0tD7xuCNbvoJIQIP+Mpok/wYe2HrqAu2B
	QCx28tPq2dGV3GnPdEYWmpstFdx7CfeHoDorOJx3WUAVPOT4WTzbA7+g5UCCo3GQd6+pSNRjt7TQ4
	X55Xeq8A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSn-00000007hmB-3kog
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSc-0008Cq-Mi
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAl9K-004Vwf-20;
	Mon, 20 Oct 2025 10:21:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAl9K-00000009wBO-2K1B;
	Mon, 20 Oct 2025 10:21:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251018-imx_gpio-v2-0-22e4fc090de6@hotmail.com>
References: <20251018-imx_gpio-v2-0-22e4fc090de6@hotmail.com>
Message-Id: <176094851054.2368595.8453212883223815372.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 10:21:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135815_209015_ABC2A12A 
X-CRM114-Status: UNSURE (   6.03  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/2] gpio: i.MX: make _get_value() able to read
 output pin state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 18 Oct 2025 11:59:46 +0200, Maud Spierings via B4 Relay wrote:
> Make _get_value() read back the dr register instead of the psr register
> when the direction is set to output. Now _get_value() can actually read
> the state of an output gpio instead of being always low.
> 
> Also add a note in the migration guide file.
> 
> 
> [...]

Applied, thanks!

[1/2] gpio: i.MX: make _get_value() able to read output pin state
      https://git.pengutronix.de/cgit/barebox/commit/?id=9749d5bb4cfd (link may not be stable)
[2/2] Documentation: migration-2025.11.0: add note about new gpio behaviour
      https://git.pengutronix.de/cgit/barebox/commit/?id=5e531faed8b2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



