Delivery-date: Mon, 20 Jun 2022 08:42:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3B6t-007owQ-V4
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 08:42:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3B6t-0004Y6-Ly
	for lore@pengutronix.de; Mon, 20 Jun 2022 08:42:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+clkqrrKfh/nu/2UXzyYgHoLbNdNETPrdY1S162GBc=; b=ctDbwK0rzrwuW4
	IfvwcVNwsuStnpVKzEX/4UbIpdNBhcIaPa3Ryv8W7AlXEC6P43VKdHk6oCva6l0QHzAFx1hKA/kgg
	8uQwyQY0II9yhKvYmw7L+9hfq5Q2C5140c25CePBOviJOdjeVD4HliaYt/QWBpqp81l/n/U8+iyeT
	0Qex4p9X+dJFI4qNOJADCcT8qPxy4+YjJpN9W+DOPCbViUv+r9xyy7W7BNYpZua/XmfSFp0/ydhrE
	rTgFh3MFJ/1DaW6xcZbXp88zGa2AybnDjiHNhy1rqbH8yeN4IKSOq21BEt9zZqx+tmLbjk4vC8ItI
	XQKC8h1xpG76mAhh/EnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3B58-00GSWR-Hk; Mon, 20 Jun 2022 06:40:18 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3B53-00GSU0-6P
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 06:40:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:message-id:references:in-reply-to:
	 reply-to:subject:cc:to:from:date:mime-version:from;
	bh=Z+clkqrrKfh/nu/2UXzyYgHoLbNdNETPrdY1S162GBc=;
	b=Dt1Hgka+mEbYAJNxb43R8yTUM0W75twptFSh3+ggCX7fxSRHA+t0HEMD/jW79pNc4fOvbP7fgDzd7
	 MsPC0PPA6QHxiIR+QmZe8j1k/FxhjHN2J1Uovzn4BHqMneq7xvfDEbmVEI/G9jrTCeNOvi7Alhf4Ns
	 eRRTVtG6eRT8FH3dBtEzgb3cKxmS877WBLHlBheX/aKEIr6/CJ0hVSCwnCcljiClRWXYrZbCsdEEsN
	 WEO226bdUeaHd/h/YLhpwPBVcYWdj5M39To8kHWMx8eS+vyIT5FSKkE9E3Lmksjpyq7mdiNdWHETTG
	 ry/PprYvNvAQOQ8CsJLaj2RxGSD36Qw==
X-MSG-ID: d0fc8218-f063-11ec-8a45-0050569d11ae
MIME-Version: 1.0
Date: Mon, 20 Jun 2022 08:40:03 +0200
From: Robin van der Gracht <robin@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl, Oleksij Rempel
 <o.rempel@pengutronix.de>
In-Reply-To: <20220617070046.GD1615@pengutronix.de>
References: <20220616131114.214628-1-robin@protonic.nl>
 <20220616131114.214628-3-robin@protonic.nl>
 <20220617070046.GD1615@pengutronix.de>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <421d42ad4180ea979f4c78156cd1bdf9@protonic.nl>
X-Sender: robin@protonic.nl
Organization: Protonic Holland
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220619_234013_709493_900F5ECF 
X-CRM114-Status: UNSURE (   7.60  )
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
Reply-To: robin@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/9] ARM: boards: protonic-imx6: Update comment to match a
 recent code update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 2022-06-17 09:00, Sascha Hauer wrote:
> On Thu, Jun 16, 2022 at 03:11:07PM +0200, Robin van der Gracht wrote:
>> Fixes: 1e817b64bc45968320597344e6b05463edd9c5e5
> 
> We don't have this commit in mainline, could you reference the
> corresponding upstream commit instead? Please write as
> aabbccddeeff ("subject")

I must have mixed those up. The commit that my commit amends:

commit 8d4698e793d823590f050b36b26f67f73d5f9e85
Author: Oleksij Rempel <o.rempel@pengutronix.de>
Date:   Mon Mar 28 14:09:56 2022 +0200

     ARM: boards: protonic-imx6: fix file system access warning

     We should not access a file system from the poller. So, do it from the
     worker. This patch will fix warning on FS access for Protonic board
     code.

     Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
     Link: 
https://lore.barebox.org/20220328120956.2402132-1-o.rempel@pengutronix.de
     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>






