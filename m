Delivery-date: Tue, 29 Apr 2025 17:27:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mrb-000XED-1i
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 17:27:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mrb-0004aR-0U
	for lore@pengutronix.de; Tue, 29 Apr 2025 17:27:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ei//vfenSmVWF4DGLCoeB53JUArP9rTwt+ISxwVWAmc=; b=PFOqiwnsP8HBTeapS0QFmun3D1
	b6/a7+raqZrEUMBk5SyMp6uuFGL5JpZQ1Bnzae94tBGgS0Guw1zcXJ4SVO2IKOuMrBpWdzmCNrOxe
	GW/IfvFOMT1R/ia+l2S1AqApAsyPl9uJOzArdE+fOVmqOp6Dx+ciHflciqHHWunSDkWSfMHiC8WEY
	MN/8aRMVOMn9CAK5tU8TwIt0P7Lk2NxGFaMXMIt0IZM1uU7kdU6cYbF69B6oIaDrfcbujiBrIveFL
	PPt3vRtRr33pvcxEWssXsD6HOYqz/FPJYdCcFB/wC9mgQMWXc95BlfzXAYz0Min3/MZ68e+CiJUru
	yISQopXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mrD-0000000A7iy-15cx;
	Tue, 29 Apr 2025 15:26:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mWF-0000000A3Vp-1qqh
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 15:05:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=ei//vfenSmVWF4DGLCoeB53JUArP9rTwt+ISxwVWAmc=; b=mes0c0b0ghThXVCzpj2IfFSyO5
	lk3b7330XW2K3XySqGOUdaCfNJNW5JnhO1o/mUFmoh7aOSGqbwg9/JiSuLom2blfbI60qXPUwqFza
	fqgyE9uNVR+x+z8zm50oR41E+pU9QDSgOXvnI04DglD5p4ruThkf/xtwjk8Rb0OjrKZMuL717mbRe
	mwfrPeKTbIKBkpAOVZulfUQeKeI56lEvEeyfXzYmYqTxAR4Gm9BXhNVZHuJsoSVE9yjACnoBGOv9g
	RFA5Rs2NFkL947K71fMHZ0z78LphMIpiLAQC401uacJ0UAjJydb4juwXSlEBkWguTHGPbktkf+yYe
	25l+PJWQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9mWC-0000000DQSz-0Iqs
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 15:05:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mWB-00073W-OC; Tue, 29 Apr 2025 17:05:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mWB-000Hdw-1N;
	Tue, 29 Apr 2025 17:05:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mWB-00D51s-1A;
	Tue, 29 Apr 2025 17:05:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, johannes@gnu-linux.rocks
In-Reply-To: <20250428175424.9060-1-johannes@gnu-linux.rocks>
References: <20250428175424.9060-1-johannes@gnu-linux.rocks>
Message-Id: <174593910735.3117529.8828333399610466553.b4-ty@pengutronix.de>
Date: Tue, 29 Apr 2025 17:05:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_160508_592624_8ABA3E0A 
X-CRM114-Status: UNSURE (   6.13  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] zedboard correct comments in lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 28 Apr 2025 19:54:24 +0200, johannes@gnu-linux.rocks wrote:
> Signed-off-by: Johannes Roith <johannes@gnu-linux.rocks>
> 
> According to the TRM of the Zynq 7000 the registers under 'UART1 pinmux'
> represents the pinmux for UART0. So, I fixed the comments and also
> added the pin number for the UART0, UART1 and QSPI pins to the pinctrl.
> 
> Link to TRM page for pinmux:
> 
> [...]

Applied, thanks!

[1/1] zedboard correct comments in lowlevel.c
      https://git.pengutronix.de/cgit/barebox/commit/?id=72ea1dbb99d6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



