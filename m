Delivery-date: Mon, 04 Mar 2024 11:29:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh5a1-008AcR-2N
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 11:29:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh5a0-0003ZC-UD
	for lore@pengutronix.de; Mon, 04 Mar 2024 11:29:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MBRR8AJI2eO8SOvFTd+H/X90ymaHv5O3+DT/ikbotMI=; b=yJNF2l7p16zmUSWQ669aP9v4KI
	QiAEKrG8T6rPWDBjnLIsW4ECxzsujnyOa8tvG9P4sX0XoqCgzkfSr8h5tkG4RxvIUyqbqYI7aOdjn
	X9naHjfBB4+415BCKsy0jolU4WBVgFmfhVPJQAId8r6Slx4VGYVj5lBybrr1PuNj3CKaeBF68/dsJ
	4/99anYpNNa4fiI+CeMXGAeaM27AFValWXDlpWlvCOIwbDIH4slKOkz1573L9/af+Go+8gYgs3LYp
	rJtjzjM1WprbtrBxIpgFWdk6cjalpkex6oujrS5Lr8Tx1LJBBGjfi7JUlHJz/ofwD5UG+mTAvlpdW
	UTTnol6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh5ZC-00000008bh8-2OEf;
	Mon, 04 Mar 2024 10:29:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4uB-00000008UB8-2Y29
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 09:46:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4u5-0002pn-V1; Mon, 04 Mar 2024 10:46:37 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4u5-004KC6-IG; Mon, 04 Mar 2024 10:46:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4u5-00BWL1-1c;
	Mon, 04 Mar 2024 10:46:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Stefano Manni <stefano.manni@gmail.com>
In-Reply-To: <4b448318f71f2677bc28c2241c5bf0c081073564.camel@gmail.com>
References: <4b448318f71f2677bc28c2241c5bf0c081073564.camel@gmail.com>
Message-Id: <170954559749.2745884.11662159687641017577.b4-ty@pengutronix.de>
Date: Mon, 04 Mar 2024 10:46:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_014644_505103_CA03D3CA 
X-CRM114-Status: UNSURE (   8.87  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: sabresd: Add support for i.MX6DL board
 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 01 Mar 2024 17:18:25 +0100, Stefano Manni wrote:
> The SabreSD comes with different SoC variants. This patch adds support
> for the i.MX6DL based board. the DCD data has been taken from U-Boot
> 2023.04
> 
> 

Applied, thanks!

[1/1] ARM: i.MX: sabresd: Add support for i.MX6DL board variant
      https://git.pengutronix.de/cgit/barebox/commit/?id=7328dbe79895 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



