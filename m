Delivery-date: Mon, 22 Jan 2024 11:24:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRrTj-00BJqd-3A
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 11:24:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRrTk-0008CL-Lk
	for lore@pengutronix.de; Mon, 22 Jan 2024 11:24:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1yX+UjGyWKpkXzKjPJ4mfUpiyLn/jG1dARYgBlwh688=; b=QbUHvJHQqduEChtYEYi+KIveQ4
	2nl6jEZS/ijlh603rxyz5zBrKjq1nGUh2/XFyO/+4fBX2bksQtyotFz6OTj3w3Hg3F5YMD80Rx3U1
	+8gXpo5oAI47iYCg1NruYUOUzPBCgWXWcuv1UEopNrAPshQ7K7ntb8oluzYQm8pWPZLQouhpVV0TZ
	829KqUKXvL7JK5cmrOA6clS+ac0AeU5r1Oa0s+xUwTKHUtuEIzlPM6giZKmWNJ1ouReD4i4GxZBcW
	oogkuXRWvpXUAr4XK3geF5VD91A3r3UcyJia7U21YAIEUHXeXszyxyYfHK9p/jdihflz9MdzEUuaT
	fWP+vvOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRrSg-00BVNL-0n;
	Mon, 22 Jan 2024 10:23:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRrSc-00BVIl-0C
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 10:23:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRrSa-00082s-5r; Mon, 22 Jan 2024 11:23:20 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRrSZ-001ZRr-Pq; Mon, 22 Jan 2024 11:23:19 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRrSZ-008W1d-2N;
	Mon, 22 Jan 2024 11:23:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240119103415.1101057-1-m.felsch@pengutronix.de>
References: <20240119103415.1101057-1-m.felsch@pengutronix.de>
Message-Id: <170591899973.2029708.15061814118465322568.b4-ty@pengutronix.de>
Date: Mon, 22 Jan 2024 11:23:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_022322_116738_419B5985 
X-CRM114-Status: GOOD (  11.50  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] ARM: i.MX8MM bootsource: fix serial detection
 for QSPI boot source
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 19 Jan 2024 11:34:15 +0100, Marco Felsch wrote:
> The current code override the serial download boot mode which is set in
> case the BootROM decide to fallback due to an empty QSPI. This lead into
> the wrong boot source detection and barebox will try to download the
> rest of the image via QSPI instead of using the serial download mode.
> 
> Fix this by reorder the detection, first try the generic bootsource and
> if this fails try to detect the QSPI boot mode. This is also how u-boot
> does it in the first place.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX8MM bootsource: fix serial detection for QSPI boot source
      https://git.pengutronix.de/cgit/barebox/commit/?id=1ef7fe34de79 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



