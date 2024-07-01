Delivery-date: Mon, 01 Jul 2024 14:36:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGGh-000VDe-1B
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 14:36:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGGg-0002cb-Q5
	for lore@pengutronix.de; Mon, 01 Jul 2024 14:36:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oDETe7oIshagRJ/MFwn+hGb2jLcqbFU3MoH70mApLS0=; b=gfc3fM0pbYdF2RFhUSFqfiQet6
	D4wi9GoH9z4UmPk+Z73r+hTAC0tBRyIB8/EzUNi6wTQAPZAOwJF6NnrTo98TtYC2uOWxngjVcsekc
	yedFxZviZLrKce7QMjwFdo8MpBGeOtduBJnGyjNWdJegz35mgawRFaGSYl6+6au4DALPBmS87pEya
	bsOBfnEIIK+d1lSAnKJMJyTC3Utlvz2CIn818tMrujI8K+PIFJFrEzdTP+Ygex1YfuGwsQQWJTxI7
	sUyYgMszVnWtoVYoAzyTtx61LasP8KUZIWXmRlheCg3cMZC3V/64gidOtLO19AJtA23+OiZYotdFi
	xJoVJIZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGGE-00000003FmP-3irZ;
	Mon, 01 Jul 2024 12:35:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOFtE-000000034hP-42vr
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 12:12:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOFtD-0000v7-Nu; Mon, 01 Jul 2024 14:12:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOFtD-006MwA-6Q; Mon, 01 Jul 2024 14:12:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOFtD-006MC9-0S;
	Mon, 01 Jul 2024 14:12:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Denis Orlov <denorl2009@gmail.com>
In-Reply-To: <20240623204805.44070-1-denorl2009@gmail.com>
References: <20240623204805.44070-1-denorl2009@gmail.com>
Message-Id: <171983593113.1515219.5217315522700364369.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 14:12:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_051213_051275_FD5ECB34 
X-CRM114-Status: UNSURE (   8.76  )
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
Subject: Re: [PATCH] MIPS: use more consistent type for memory size values
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 23 Jun 2024 23:46:53 +0300, Denis Orlov wrote:
> Switch from using u32 to unsigned long for these. It is unlikely to be
> actually utilized on 64-bit builds, but this feels a bit safer,
> considering that we work with the whole register width (32 or 64 bit,
> depending on the config setting) for the corresponding value on the
> assembly side.
> 
> 
> [...]

Applied, thanks!

[1/1] MIPS: use more consistent type for memory size values
      https://git.pengutronix.de/cgit/barebox/commit/?id=fe213ae27c4d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



