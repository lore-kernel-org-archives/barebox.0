Delivery-date: Fri, 07 Feb 2025 09:28:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tgJik-009Z8R-15
	for lore@lore.pengutronix.de;
	Fri, 07 Feb 2025 09:28:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tgJik-0001Ko-GX
	for lore@pengutronix.de; Fri, 07 Feb 2025 09:28:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ygucU7eyupVI37bdoRlRPJ7xcWg/jWIOk3DHCVUJnNg=; b=X20QAltjNLtHtCebCR2rl3jg4F
	v+wotQd63NGmJnw0BKsuPcpwsq0FrN6DJR/8nIJf3TigWCV5Mi9evK+wcaqmjhSzROM2sAo5dnYfw
	wKLwtowATr2wyz+JaY+0TPiJcZYpn+aJoFtBR0h1+f7wC+YGcT6DNT0df/xOAbXtS54TAMN/XNVQS
	qO59jYnN+mXlhG4wrTsZ9sUOubYgw7JfsZ6bU+hNIGI2bZ4i96/9wadxIWZVaMAIkGdUzqg6wHI4S
	iYYXWAJk6hnXvgEC1qrEfFet4mN3ci9/+ONyrqVF9KZHDmHJGjjj+vsMgy/Vs7FGh1O4jauoySbjm
	m2NL9B8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgJiK-00000008obh-3hJr;
	Fri, 07 Feb 2025 08:27:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgJiH-00000008ob4-3Xh9
	for barebox@lists.infradead.org;
	Fri, 07 Feb 2025 08:27:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgJiG-0001CJ-O0; Fri, 07 Feb 2025 09:27:48 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgJiG-003whn-1d;
	Fri, 07 Feb 2025 09:27:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgJiG-0010H2-1R;
	Fri, 07 Feb 2025 09:27:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20250205102549.27015-1-jmaselbas@zdiv.net>
References: <20250205102549.27015-1-jmaselbas@zdiv.net>
Message-Id: <173891686844.239361.18192152268825416500.b4-ty@pengutronix.de>
Date: Fri, 07 Feb 2025 09:27:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_002749_884371_D390A376 
X-CRM114-Status: UNSURE (   6.34  )
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
Subject: Re: [PATCH] scripts: include: rename printk.h to printf.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 05 Feb 2025 11:25:49 +0100, Jules Maselbas wrote:
> The include scripts/include/asm-generic/bug.h relied on a printk.h
> compatible header which is located in the scripts/include/ and was
> not updated when printk.h was renamed to printf.h.
> 
> 

Applied, thanks!

[1/1] scripts: include: rename printk.h to printf.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=f7a4435177aa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



