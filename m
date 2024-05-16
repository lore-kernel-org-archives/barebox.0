Delivery-date: Thu, 16 May 2024 08:10:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7UJq-00GrXC-2Q
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 08:10:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7UJq-0006yB-7S
	for lore@pengutronix.de; Thu, 16 May 2024 08:10:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a80bgfGhqIBcGO2QGwUbQtQ3FCm67Fl7m9ZQRSczWDw=; b=3tEhmCU6q+j8jVLXtYHphYGlCl
	BzL8n2PcVfHK/rXgAldpeuNjFdr9d7xcOYmZGZ8jRaD+yZbdDjuM8uOKDxKRUyDpOa8dJmsIHSj+A
	+OX4cYIt/BOl7N5NhdeiMJng4EOtJresl7bJlooatk5Ex+P6gn4n+8BbC2mbKLCcbLGryCUWctJl9
	QIPmbZ3jq+fQl0rSbG0zFw6wZ+f8T9/44uCdfsacD6xOmpfz2Zt4qB44BPLcMniJMY2qW4z489/7J
	Db6DZEZ9RcIEcgbSkvYCBOnc6sTipO/H9Mc4AkDlLLNe9ECqC9kHuHtUHlCZmzL5Yc+ecjn1FIPn0
	/oLUjz2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7UJR-00000003paZ-0c3h;
	Thu, 16 May 2024 06:09:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7UJN-00000003pZK-1cxg
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 06:09:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UJL-0006hO-OP; Thu, 16 May 2024 08:09:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UJL-001fIh-C9; Thu, 16 May 2024 08:09:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UJL-00BSGP-11;
	Thu, 16 May 2024 08:09:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240515110037.267796-1-a.fatoum@pengutronix.de>
References: <20240515110037.267796-1-a.fatoum@pengutronix.de>
Message-Id: <171583979131.2730230.12048782349198635509.b4-ty@pengutronix.de>
Date: Thu, 16 May 2024 08:09:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_230953_546216_AFA4BD2A 
X-CRM114-Status: UNSURE (   5.98  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ddr: imx: rename ddr_get_firmware_ddr to
 ddr_get_firmware_ddr4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 May 2024 13:00:37 +0200, Ahmad Fatoum wrote:
> The omission of the 4 was likely a typo. Adding it makes it clearer what
> the function does and serves symmetry with ddr_get_firmware_lpddr4().
> 
> 

Applied, thanks!

[1/1] ddr: imx: rename ddr_get_firmware_ddr to ddr_get_firmware_ddr4
      https://git.pengutronix.de/cgit/barebox/commit/?id=81c131efcaa5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



