Delivery-date: Mon, 06 May 2024 08:17:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3rex-005c2b-0z
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 08:17:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3rew-0002YZ-Pt
	for lore@pengutronix.de; Mon, 06 May 2024 08:17:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uoB9lTp993MaQtMJGkb++CbzN0DNOEt4MnFaOxvrt5E=; b=xSTmI41g/tG9/Eo6T30ieV8QKX
	T2wegBaJyOI2yg1aZ4gWO8ghX5c3wF8+C81aa6RfDM1Xb9hUPCETqxTOk8epfOf1t4zuE43bA1gLj
	pBfFao+GExWyljgpTWAY2+Lp2Vp+ULADHFn40j2RgK24Tn4wQYWS4l1KjkPgQmD5X4w8eMr4bNmxQ
	dGeF2mQcHH6ZkPFIf/DMAI5O17SSG6AX5fM+uuxi7VyW75meb9WDewf05LUkFHri3to4svE7WL/ol
	SWzJe+KdPf2oeg/K/eAE6d9h+L8eUURlyCXIp7TnWywch3GE3LTuXYMq+hqSBK+jm3UCKMOclEt3y
	D3D5makQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3reH-00000006Gtq-1xN5;
	Mon, 06 May 2024 06:16:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3reE-00000006GsT-2Q7r
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 06:16:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s3reA-0002Rf-I6; Mon, 06 May 2024 08:16:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s3reA-00GD9N-5f; Mon, 06 May 2024 08:16:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s3reA-001NTY-0M;
	Mon, 06 May 2024 08:16:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240503100856.1222507-1-a.fatoum@pengutronix.de>
References: <20240503100856.1222507-1-a.fatoum@pengutronix.de>
Message-Id: <171497618210.328517.17562536778253014687.b4-ty@pengutronix.de>
Date: Mon, 06 May 2024 08:16:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_231626_651409_1CF8616E 
X-CRM114-Status: UNSURE (   7.05  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] pblimage: suppress stdout output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 03 May 2024 12:08:56 +0200, Ahmad Fatoum wrote:
> Any output, stdout or stderr, during normal operation looks jarring when
> interleaved with Kbuild, so utilities should just be always silent on
> stdout and print errors to stderr if they occur.
> 
> The pblimage tool violated this and had a stdout debug print left-over and
> printed part of an error message to stdout instead of stderr. Fix both
> instances.
> 
> [...]

Applied, thanks!

[1/1] pblimage: suppress stdout output
      https://git.pengutronix.de/cgit/barebox/commit/?id=302db826b67c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



