Delivery-date: Fri, 02 Aug 2024 07:49:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZlAi-005N1m-1b
	for lore@lore.pengutronix.de;
	Fri, 02 Aug 2024 07:49:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZlAh-0005w1-Ua
	for lore@pengutronix.de; Fri, 02 Aug 2024 07:49:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yUlPng9JNEBsAkJFQt4KZmarqo28WUeOo4P4Iq/7lk0=; b=ton65FeOwdaxLoVw4EEYlXNedQ
	VJHTUJEVEGxYyb4qu6xgZggK/I59CtNE0XMixiIiPjPnLGetuTkFZIqDH/8YAMD9W/ayWgzXlfCyS
	XRSBO1vecW0+JXoG6MeR3g2SCE52aai92aQz4uIiwH0xIOcGJN4Lh0N6X5yesCkz0+c9eiep1kH7l
	Tt3+XgwF1WL9h4vfSZUvTnSSWbYdcE6rq1lwEWyGgFNO/OmNXKA1j/rJ+idAbBnl4kxSQdMOvWBtm
	Ty6myhkyS4CazMf1uOY++ALBBhEl83o4EfigDJ9cgQ6Uy04CshHylBUP9JNRsmGNjN5Fa5ZnwIDc7
	h7LASVCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZlA7-00000007jYa-2Kel;
	Fri, 02 Aug 2024 05:49:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZlA3-00000007jY2-1ZzO
	for barebox@lists.infradead.org;
	Fri, 02 Aug 2024 05:49:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZlA1-0005sW-Ke; Fri, 02 Aug 2024 07:49:05 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZlA1-003w90-7d; Fri, 02 Aug 2024 07:49:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZlA1-009R3u-0Y;
	Fri, 02 Aug 2024 07:49:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox <barebox@lists.infradead.org>, 
 Anand Moon <linux.amoon@gmail.com>
In-Reply-To: <20240801134707.11356-1-linux.amoon@gmail.com>
References: <20240801134707.11356-1-linux.amoon@gmail.com>
Message-Id: <172257774516.2248915.6543204146644746006.b4-ty@pengutronix.de>
Date: Fri, 02 Aug 2024 07:49:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_224907_448676_817FD38B 
X-CRM114-Status: UNSURE (   6.43  )
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
Subject: Re: [PATCH 1/2] Fix Kconfig coding style from spaces to tab
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 01 Aug 2024 19:17:06 +0530, Anand Moon wrote:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig
> 
> 

Applied, thanks!

[1/2] Fix Kconfig coding style from spaces to tab
      https://git.pengutronix.de/cgit/barebox/commit/?id=c1d7a1cca0e5 (link may not be stable)
[2/2] Fix Makefile coding style from spaces to tab
      https://git.pengutronix.de/cgit/barebox/commit/?id=e58395c76b2e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



