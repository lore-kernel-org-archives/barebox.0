Delivery-date: Mon, 02 Jun 2025 13:46:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM3cy-002wqW-1l
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 13:46:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM3cy-0005Sl-1H
	for lore@pengutronix.de; Mon, 02 Jun 2025 13:46:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HH3NhW0mKwqWb5W11vO3ALxq0liNMYQVw5JMUCPa94o=; b=rVH3y5pgANq/d0wP5SDPKyXajU
	miIsSLt5XyatLW3MK1JePdaJ9PDKdXwtvh9Ir54ZhRTUw8EIMELvxIMM2YzQAmBj4aHfQ1GZsgLTF
	XzoLbErW+NInW44+lBsxdkuTlG6uYS4y/z5l+xlYLgWt33dfS1s6s/u0rVnXy8nLlOvDerBJjLL5/
	zTmeUOBDmbxj8Psdwvw+/s2JyCFmsgtsJmMOtv4Lo0bfu+E1YG8dg75nAuUOiwDD/WruvkfI8DTUY
	SYr8jK8xc0fBjAyH/e7H142L9zXlyoko43T3UpbNwiRyx30cFJZ+geAnzk1O1YCvgc2gOueGM/lRS
	ovpGTw1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM3cM-00000007IZQ-09xh;
	Mon, 02 Jun 2025 11:46:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM3bB-00000007IKz-2tEs
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 11:45:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM3bA-0004lt-8d; Mon, 02 Jun 2025 13:45:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM3bA-001Ro9-0G;
	Mon, 02 Jun 2025 13:45:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM3bA-003qOv-02;
	Mon, 02 Jun 2025 13:45:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250528055751.1368503-1-a.fatoum@pengutronix.de>
References: <20250528055751.1368503-1-a.fatoum@pengutronix.de>
Message-Id: <174886470000.916388.10261275882614146947.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 13:45:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_044501_747924_AFF446F5 
X-CRM114-Status: UNSURE (   6.44  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] commands: bthread: fix format specifier for
 ulong
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 May 2025 07:57:51 +0200, Ahmad Fatoum wrote:
> Adding __printf to the bthread_run definition in the follow up commit
> will make it evident that we are using a wrong type for a %u format
> specifier.
> 
> 

Applied, thanks!

[1/1] commands: bthread: fix format specifier for ulong
      https://git.pengutronix.de/cgit/barebox/commit/?id=54b15cf42fa0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



