Delivery-date: Tue, 11 Mar 2025 09:34:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trv46-00CbQh-0G
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 09:34:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trv44-0001jA-VA
	for lore@pengutronix.de; Tue, 11 Mar 2025 09:34:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G5ojBypRmkECZht2g+hbGdlBZHFAlWs52I79CD6DKhM=; b=tZrp8Z5oyzbOr9AJoqSuehJSVr
	kasPSD7u7OjTrNLaJOLz3U6d8gvkwlaT3B0WxiVZThoPmI55vUSRwOsBjQO0DkdYGviKqA8I9+ui0
	XkYXue7sXh/UivJZEFEQdR3MtTnb38g7OPCsFDQusSdvdx+r+DJgtIY5c/r+HhmGv9oO0+lRZnR8H
	T2GL87xS6kwC+irk56/EKHD3CSW9iUgoP7atPKLYTdm5zr9vzaz9IPSpkgqf7ZR/heOkY1/THzVdD
	AlIqu8Jv44Sb1B7/BxvSpbulXpYQ271mn4rI5BZE/oxXzOjjYBH7IZI2zhcS9kPnUBWDlf3viyQvD
	npwNuZ9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trv3c-000000050bv-2hN5;
	Tue, 11 Mar 2025 08:33:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trv1o-000000050Tt-07vN
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 08:31:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trv1m-0001Sy-Om; Tue, 11 Mar 2025 09:31:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trv1m-0059E2-1s;
	Tue, 11 Mar 2025 09:31:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trv1m-0064Jz-1f;
	Tue, 11 Mar 2025 09:31:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250307075927.973504-1-s.hauer@pengutronix.de>
References: <20250307075927.973504-1-s.hauer@pengutronix.de>
Message-Id: <174168191451.1446554.5728074660413908810.b4-ty@pengutronix.de>
Date: Tue, 11 Mar 2025 09:31:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_013156_071628_D9C707E3 
X-CRM114-Status: UNSURE (   7.35  )
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
Subject: Re: [PATCH] ARM: at91: remove obsolete defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Mar 2025 08:59:27 +0100, Sascha Hauer wrote:
> sama5d3xek_defconfig is obsolete. The sama5d3xek is now covered by
> at91_multi_defconfig. It currently falls back for building for
> the AT91RM9200-EK instead of the sama5d3xek, so just drop it.
> 
> 

Applied, thanks!

[1/1] ARM: at91: remove obsolete defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=2341f810eab6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



