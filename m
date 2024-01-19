Delivery-date: Fri, 19 Jan 2024 08:17:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQj7v-006f0s-1o
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 08:17:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQj7w-0001Ne-8l
	for lore@pengutronix.de; Fri, 19 Jan 2024 08:17:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RgQ6xJoWY4VDM/qck0/7lUgzm+hHqWAY98vlZ17Cq9M=; b=Y/eowMk1EQDbbLf2Wbfs2Q7K7P
	Lxx/xqZnmrnoUqEXv8Wl6G1uZzJPgtSLEuPVxqkB4UTg1DEy4DfCAoBxGofDk7ZDbHFuHXLbTCyT8
	JNuIoig9SHuG3ZFKxw2MIItOPuw+XLDritS8sZzgiUQMICcDzQqP4ybAtcMWZ50A4w3KjV7+ihRfz
	rJ3m+eluDT6UfTlIU+x4fo50IBj8luLutbt+J0tMkIWMdYus2ulT/+520v8qWhKHZi7Ogg1ka1pJh
	iZokx40pp4x+2xfsAUsFL3TDOm0ey/oc4QEEKFhMUvN7UkCY1q7QZrtj2zOEMbZ8J6QP6+vzfDNdl
	an4Sg/sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQj6q-004gDu-1Q;
	Fri, 19 Jan 2024 07:16:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQj6n-004gD2-37
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 07:16:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQj6m-0001Kq-KZ; Fri, 19 Jan 2024 08:16:08 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQj6m-000rnI-8C; Fri, 19 Jan 2024 08:16:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQj6m-0096z9-0b;
	Fri, 19 Jan 2024 08:16:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20240116-feature-imx8mp-octop-driver-v1-1-5143a215f657@pengutronix.de>
References: <20240116-feature-imx8mp-octop-driver-v1-1-5143a215f657@pengutronix.de>
Message-Id: <170564856818.2171782.7778709422650049835.b4-ty@pengutronix.de>
Date: Fri, 19 Jan 2024 08:16:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_231610_000776_4F212C62 
X-CRM114-Status: UNSURE (   9.19  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: enhance support for ocotp driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Jan 2024 16:00:58 +0100, Stefan Kerkmann wrote:
> The OTP memory address space found in the i.MX8MP extends to 0x17F[1]
> instead of the usual 0xFF[2]. Hence, the ADDR field in the HW_OCOTP_CTRL
> register was extended to hold 9 bits, shifting all subsequent fields up
> by one bit. As the access patterns are otherwise identical we inject the
> correct bitmaps for the CTRL register access via the newly introduced
> `ocotp_ctrl_reg` and keep the driver generic.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX8MP: enhance support for ocotp driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=1c2d1d4e5985 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



