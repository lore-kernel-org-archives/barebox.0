Delivery-date: Tue, 16 Apr 2024 15:37:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwj0V-003Qmn-0k
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 15:37:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwj0R-0002ot-DW
	for lore@pengutronix.de; Tue, 16 Apr 2024 15:37:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rZZ7pFgjwDOjOxBuWpGIS5rV3CzjpwBB5ceEN4SFNaM=; b=BTGdQ+RL6/YQ74qJVNE3qP9yqr
	qcW34+IvrHH5Q86//kwCbX06dQFOagoqMLenI1A3ivnvQVnXYticqHlG8+fTVeAx2IE45EvWwctvM
	tTcLhPdOKGI23kr639+lIECZAjIA9tYCwkXjajrqVo0fGQ3XbTX2b6XobUFMGhDt0DUv2xELALHKv
	kiJeT3myspTnIi/PYPh9UP0BiklQl8ZrND2sDkKCwHFjRTXQCA/bJJvttJw1r/kSfVGm7rNQ+hkye
	P0SscsmBy91Qh9cMI8L9G6ZxXwEAxEBNEVINQ2PUoqRjPaV6IFWdlEeyboj6ZOudLtq9vyKqI7Ygo
	OpscHloA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwizs-0000000CLw4-18ra;
	Tue, 16 Apr 2024 13:37:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwizj-0000000CLu0-43hQ
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 13:37:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwizi-0001Wg-Gu; Tue, 16 Apr 2024 15:37:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwizh-00CcTx-V7; Tue, 16 Apr 2024 15:37:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwizh-008QyS-2r;
	Tue, 16 Apr 2024 15:37:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Tomas Marek <tomas.marek@elrest.cz>
In-Reply-To: <20240410163446.14401-1-tomas.marek@elrest.cz>
References: <20240410163446.14401-1-tomas.marek@elrest.cz>
Message-Id: <171327462587.2009707.4548653520723057571.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 15:37:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_063708_040438_43AA0C0F 
X-CRM114-Status: UNSURE (   4.25  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] gpio: Add Intel gpio controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 10 Apr 2024 18:34:46 +0200, Tomas Marek wrote:
> 


Applied, thanks!

[1/1] gpio: Add Intel gpio controller support
      https://git.pengutronix.de/cgit/barebox/commit/?id=e476edd5322f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



