Delivery-date: Thu, 20 Jan 2022 09:47:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nAT6e-007Ukj-87
	for lore@lore.pengutronix.de; Thu, 20 Jan 2022 09:47:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nAT6c-0000h2-Ks
	for lore@pengutronix.de; Thu, 20 Jan 2022 09:47:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjUHYF0LHTpcnZlNHZeRvdytq1uX53s0WgWUxuqyQSY=; b=XWXkdxXQTgtzYq
	iEdPSArMdoqybzKMpr+SwZZmJdeMHLko/ejd8FZxBwSFpoDmw2TTJK71D1XPzPhjZO0kX8EqDGIN9
	mgNBJql5m+3qZ3nMbPBo5A4tqCFaVAOhfETb5phz3qxpKPXed9IBcLO9sy+9zoUIbA0xzXLFhffrg
	9tBi4tmcJ78/X4migoWaxLYbFP964HU6q7GG79WeJ75xOpGOwjB+EfM2rK46tFu1Aus44qVmL8imq
	e1xM4252PwfkelQBZUA8ckmMk/I46ttturxnUv7OMu09xt1Gw13oq1cIEDG4OJrzykWy4z0N8iB6I
	hU6Eui88f2GGi1Bna0lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAT5R-009tGR-RM; Thu, 20 Jan 2022 08:46:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAT5M-009tDr-0i
 for barebox@lists.infradead.org; Thu, 20 Jan 2022 08:46:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1nAT5J-0000WI-2D; Thu, 20 Jan 2022 09:46:21 +0100
Message-ID: <ad53b46112655690263be156e8fdc7366ad77cd3.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: barebox@lists.infradead.org
Date: Thu, 20 Jan 2022 09:46:20 +0100
In-Reply-To: <CAMHeXxNgfUoMQe3aiK8wkV5ZdSbaBCSB3YXKM4-8zVUMemOvZA@mail.gmail.com>
References: <20220120074733.176041-1-r.czerwinski@pengutronix.de>
 <CAMHeXxNgfUoMQe3aiK8wkV5ZdSbaBCSB3YXKM4-8zVUMemOvZA@mail.gmail.com>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.42.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_004624_103748_B2CB5D7D 
X-CRM114-Status: UNSURE (   5.26  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kbuild: dtc: use env to resolve echo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Trent,

On Thu, 2022-01-20 at 00:36 -0800, Trent Piepho wrote:
> There's another in scripts/Kbuild.include

Yep, I have a patch for that as well. We haven't hit this since as-
instr isn't used anywhere within barebox.

- rcz

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

