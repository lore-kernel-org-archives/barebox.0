Delivery-date: Mon, 16 Dec 2024 08:45:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN5nh-008jog-0B
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 08:45:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN5nh-0002Sr-1g
	for lore@pengutronix.de; Mon, 16 Dec 2024 08:45:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QRrfFoi0z5fykrhXOb+fuWrST6eMg5RwRzPoN3CKY18=; b=sZLmygmYbxTlYyxN4roMtopIwf
	4CG1njEkmPqOBtjUytRkJcwxzDGJkOTDOm7v6NWJTG6g/75p32e2rdFeATqHHyGmKg89qM9wLiN27
	1R5SozdB0mL3Wm+jmiwAW/NwEd19vnHvYfHTtFXJgsmD8LazZldRk2ViE6WM1ywY0PQpn1sRckMK7
	KPvnXVOv+xtThOVhktsHKiDMii6CiCxFldTIRrDouMBHz+W9gUz1MU5wmGYlgh+ZWITrZiD6uV2Ul
	wgrgbi+Q0Mr2EinQ2F9AJt96eRgDM0Lx+ghOfkX0KZgk9UwiUT/adCtXna1MhV9AA2VHIWatbQBzF
	gEmOAdLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN5nD-00000009J2h-1Tdr;
	Mon, 16 Dec 2024 07:45:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN5nA-00000009J20-08Az
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 07:45:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5n8-0002La-P3; Mon, 16 Dec 2024 08:45:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5n7-003em6-2d;
	Mon, 16 Dec 2024 08:45:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5n8-0068Eb-1h;
	Mon, 16 Dec 2024 08:45:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20241213-mx6q-pad-rts-v1-1-517bbb1b9aaf@pengutronix.de>
References: <20241213-mx6q-pad-rts-v1-1-517bbb1b9aaf@pengutronix.de>
Message-Id: <173433512252.1461506.15829652719341326893.b4-ty@pengutronix.de>
Date: Mon, 16 Dec 2024 08:45:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_234524_106004_E172B104 
X-CRM114-Status: UNSURE (   6.82  )
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
Subject: Re: [PATCH] ARM: i.MX6: correct UART IOMUX_PADs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 13 Dec 2024 15:06:02 +0100, Jonas Rebmann wrote:
> For SD3_DAT0, add the definition for UART1_RTS and correct UART1_CTS to
> longer use the actual address of RTS Select Input Register.
> 
> As confirmed by the i.MX manual and dts/src/arm/nxp/imx/imx6q-pinfunc.h:
> 
>  #define MX6QDL_PAD_EIM_D19__UART1_CTS_B      0x09c 0x3b0 0x000 0x4 0x0
>  #define MX6QDL_PAD_EIM_D19__UART1_RTS_B      0x09c 0x3b0 0x91c 0x4 0x0
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX6: correct UART IOMUX_PADs
      https://git.pengutronix.de/cgit/barebox/commit/?id=249fd2e7f2d6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



