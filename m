Delivery-date: Thu, 13 Jun 2024 09:06:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeXg-005Et4-13
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 09:06:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeXf-0004G9-PT
	for lore@pengutronix.de; Thu, 13 Jun 2024 09:06:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L+Dj9yMOs2GVO/xCr2nz1873LClmGBfLlRmySTh0DgI=; b=NEMPa95deco21secKUVT+JdK/9
	iMKJh3SuQAix61BoJYI7qxdwaq/pivp03eVmDvnjVapcS0dCNOjvfocSh4bOr19pQLYoo+y56WKPd
	wuZoFd7WUqll+/Ostj5laamOw35RIW7A9ZARc6dkF90UdgO9knZziB1VZmEc8TkEmPh16893lKSKr
	24e5EuLhNnJMdepTS2I7b94xZF3oZuacPvCxOLL7I1Dsr9/PDbXSYX8ZnXPRhCeIyyC0Dsckq+Guo
	Fe0KIoa9FI898Q/FVA2s2nchKWDlTn6ypaVRhnqK38+ObqkCFWajkv14ZJKD81lr4gZxIPlKyoIWB
	DYZpQhUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHeXF-0000000FPRr-3TFq;
	Thu, 13 Jun 2024 07:06:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHeXD-0000000FPQn-1G6U
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 07:06:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeXB-0004AC-Rt; Thu, 13 Jun 2024 09:06:09 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeXB-001yJS-FQ; Thu, 13 Jun 2024 09:06:09 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeXB-00BSCJ-1L;
	Thu, 13 Jun 2024 09:06:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <20240611082714.2963587-1-a.fatoum@pengutronix.de>
References: <20240611082714.2963587-1-a.fatoum@pengutronix.de>
Message-Id: <171826236941.2729979.3389044743332482707.b4-ty@pengutronix.de>
Date: Thu, 13 Jun 2024 09:06:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_000611_379519_1109D0DA 
X-CRM114-Status: UNSURE (   7.72  )
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
Subject: Re: [PATCH master] serial: stm32: suppress -EPROBE_DEFER messages
 using dev_err_probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 11 Jun 2024 10:27:14 +0200, Ahmad Fatoum wrote:
> A return code of -EPROBE_DEFER is not necessarily an error as the clock
> driver may indeed be probed later. Use dev_err_probe to silence the
> error message in this situation and to store it for later use if the
> probe is deferred permanently.
> 
> 

Applied, thanks!

[1/1] serial: stm32: suppress -EPROBE_DEFER messages using dev_err_probe
      https://git.pengutronix.de/cgit/barebox/commit/?id=9b549d1f6756 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



