Delivery-date: Wed, 29 May 2024 08:19:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCCf8-0016ZO-0k
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 08:19:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCCf7-0008Mn-JY
	for lore@pengutronix.de; Wed, 29 May 2024 08:19:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u/mDJjniCaK01lzCLe8OC3mMENieowN3IVNHEmGryoI=; b=pBy45T445FTO9b13j8EJslnsMn
	S0O7fseIKPvNkL3K+8pijfbnCuO6mSLA7uwkr4wVMwQ+F/d/noZVsBbaafI80wIcoGrBeFg+Pzo+H
	YCWZhLpMae7p0BMQnRrOQzoVkRzg8ktGy33Eb10H8leEmyY9FtIX1vC6rJwajOp+vzPTwxKnBEHyd
	6RawpmlS6JpMdH8D5P55PMtbIZ3uLe2FStIElRYCA5+qnHA5Q1K/7VKCinD0UX/q1sK64FDJpNsrO
	/YBbc0W3/6WkIIfw+jqjx6gNdbJ4sz07zAt1v8Fm9a/kg0LaI/saVFk6lNaX+PNaEPyunovVLzy1z
	Jx2i+tMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCCef-00000002zEM-330D;
	Wed, 29 May 2024 06:19:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCCeb-00000002zCs-2f3t
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 06:19:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCea-0008Ft-A1; Wed, 29 May 2024 08:19:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCeZ-003QUv-TV; Wed, 29 May 2024 08:19:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCeZ-002Snb-2k;
	Wed, 29 May 2024 08:19:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20240529045311.3227151-1-o.rempel@pengutronix.de>
References: <20240529045311.3227151-1-o.rempel@pengutronix.de>
Message-Id: <171696355584.587306.9982935318962560697.b4-ty@pengutronix.de>
Date: Wed, 29 May 2024 08:19:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_231917_715777_5BE660D0 
X-CRM114-Status: UNSURE (   6.23  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 1/2] gpiolib: extend support for non-zero offset
 GPIO banks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 29 May 2024 06:53:10 +0200, Oleksij Rempel wrote:
> Introduce gpio_offset variable in gpiolib to handle GPIO controllers
> with non-zero starting indices. This is necessary for stm32mp151aad3,
> which includes GPIO banks with 6 and 10 lines that do not start from 0.
> 
> 

Applied, thanks!

[1/2] gpiolib: extend support for non-zero offset GPIO banks
      https://git.pengutronix.de/cgit/barebox/commit/?id=9fdb89b620c0 (link may not be stable)
[2/2] pinctrl: stm32: extract and set GPIO offset from devicetree
      https://git.pengutronix.de/cgit/barebox/commit/?id=1f5bdfbdae27 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



