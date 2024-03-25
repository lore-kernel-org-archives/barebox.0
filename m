Delivery-date: Mon, 25 Mar 2024 11:01:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roh8q-003gYB-0U
	for lore@lore.pengutronix.de;
	Mon, 25 Mar 2024 11:01:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roh8p-0001Va-KN
	for lore@pengutronix.de; Mon, 25 Mar 2024 11:01:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gncCGYxIHcM5xDRltonBYnxMsPAgFJcdXnkSi8LxCfw=; b=VKL1Xs6Xg3k/lQ3l7qIzujSRsO
	3rcUXP5jntqLOqfqE2NrGYPXdpL86OfLMkqaIhgPhQ8hz6M1FNjI9laIkiDAKBS3tPiTsNr1Rwfqd
	577LnIz/JTRZw6gmc0L0zjy+tC9+eQ10YuUh5NdzuFsoAdf6VDvvu9xi7TA/RUM7ZyW3QwVkmHo9m
	YRBBLdPOLjPchQ1igEjVW+ku5XcmC7hJrrhjrdgQLEapmDK18Xbb7VbWsz6/nzrL/kUeyBg2xY6nn
	cuC7beth4O3omkstcprIRmFY0VahpfMhnYU33dyZWemP1eJct2RKelOMEDBAeDn4DMdYtgA4XUVYR
	Ps7kYsvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roh83-0000000GbT6-3cH4;
	Mon, 25 Mar 2024 10:00:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roh7y-0000000GbQY-2wmD
	for barebox@lists.infradead.org;
	Mon, 25 Mar 2024 10:00:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roh7x-0001Mn-Ex; Mon, 25 Mar 2024 11:00:25 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roh7w-008OSp-Us; Mon, 25 Mar 2024 11:00:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roh7w-00CMVF-2t;
	Mon, 25 Mar 2024 11:00:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Denis Orlov <denorl2009@gmail.com>
In-Reply-To: <20240320164404.15347-1-denorl2009@gmail.com>
References: <20240320164404.15347-1-denorl2009@gmail.com>
Message-Id: <171136082489.2946394.8065090233750539586.b4-ty@pengutronix.de>
Date: Mon, 25 Mar 2024 11:00:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_030027_135754_8282B4E1 
X-CRM114-Status: UNSURE (   7.45  )
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
Subject: Re: [PATCH] clk: fix clk_set_rate command help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 20 Mar 2024 19:43:36 +0300, Denis Orlov wrote:
> It was at odds with the list of options, with the former mentioning
> RATE and the latter mentioning HZ as a parameter. It seems that every
> other clk-related command uses HZ, so use it here too.
> 
> 

Applied, thanks!

[1/1] clk: fix clk_set_rate command help text
      https://git.pengutronix.de/cgit/barebox/commit/?id=34f75394b342 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



