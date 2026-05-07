Delivery-date: Thu, 07 May 2026 13:21:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwmt-001wlz-17
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 13:21:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwmq-0001b9-Al
	for lore@pengutronix.de; Thu, 07 May 2026 13:21:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nyRAYrlSm+2g4qbEA86M4ukOAaW/UepoDoBA0NDEYTg=; b=xbIyw1NFsai2uMGykhMnnfjxu4
	YnI2MlQ7TGNnXtf84VNhx3pd/D5x5boEMT0yCiEoRJQXfE6PzU5T0AM16AzTQ6tsTCJK4bxiOGpsy
	hOV4wwrImqxtRpygBwq7Yjz7Nl5OHPRUU5wowRfy5DbjLpZiw70SnW6+9FuLEvIa7afU2xBCJHT0M
	qhHYqbcL1pGTSSk2JeVhsDFZM6YPLNcKqDH4NT3ZAFi1b5z2+00HYWEeiUS3vsknuKtJyfgLrWVLD
	87+q33W1YePyD4FJSg65FNLTnREu8HULqKYbO7CMZxEDTNH3GRkB9SfHS06vogLfnarTXwZ3O47rr
	v3eMYmzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwla-00000003bI1-0k5S;
	Thu, 07 May 2026 11:19:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwlY-00000003bHf-0alO
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 11:19:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=nyRAYrlSm+2g4qbEA86M4ukOAaW/UepoDoBA0NDEYTg=; b=CIzniOvg0U0ITM7lsNtrcoNYIW
	0MEJyuiekq6OPxwY/RTyER4r/UInyHYJ7FzBPt96Ur87Sx5pMrbbarsCcYkE3ZiiDk5a3Q2TElx4F
	I/QrExJKG7+sF0F8McBEhyKPkMhfwLMKuZLlWsam0/CPJJGdmNgbiBq93OX9XbCUoD3eJIkW9zyqF
	54WX+l0Pa8CkNNYftGbMCAvfVi5hHBz5irDYUHYicHSghozpF28u3e1E5i0JSWx8rDWQLbvkypHNP
	KFGwauXZlfcasKse1/zAK0KvCWin+nyTIEz7dNh9kTDys+QeTVDNW+ELh28NIMscE+jTB5hO88+51
	Jnd6A/Dw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwlU-00000003KwH-3RNg
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 11:19:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwlU-0000mk-Gf; Thu, 07 May 2026 13:19:36 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwlT-000uem-2n;
	Thu, 07 May 2026 13:19:36 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwlU-0000000Blrm-0wTW;
	Thu, 07 May 2026 13:19:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260503082348.2755843-1-a.fatoum@barebox.org>
References: <20260503082348.2755843-1-a.fatoum@barebox.org>
Message-Id: <177815277622.2805523.6820824371801922503.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 13:19:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_121937_236480_2FB478D6 
X-CRM114-Status: UNSURE (   5.39  )
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
Subject: Re: [PATCH v2 1/2] include: ktime: move ktime_t definition
 globally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 03 May 2026 10:23:19 +0200, Ahmad Fatoum wrote:
> To allow use of the type without including the ktime.h header, define it
> in linux/types.h. This is also where Linux defines it.
> 
> 

Applied, thanks!

[1/2] include: ktime: move ktime_t definition globally
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea0030ec5bc9 (link may not be stable)
[2/2] readkey: handle standalone ESC keypress with timeout
      https://git.pengutronix.de/cgit/barebox/commit/?id=68d07f38e8e8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



