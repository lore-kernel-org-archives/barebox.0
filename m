Delivery-date: Sat, 19 Jun 2021 23:06:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luiAU-0005CS-Gn
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 23:06:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luiAT-0000VQ-O3
	for lore@pengutronix.de; Sat, 19 Jun 2021 23:06:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJNcKYKkgl5T1Xvtf87E2qKkUXzROW+ia6jK8x5yoHo=; b=KjcDK0S3iq4T+/
	OjWj+W0pucUtNsZHmWoge0muUDQnaVKT1k4ph70nKE3bLHZhVGu8JJ08+sjP7DJ65nkfvFnYfgeFP
	nkvxZz2E5IJ8qV4TgUd74pl1tDhHy5RE7uNwJFDEyva+zrkGq83Mw9yxYZhFyd6zolngJqFFhEQgd
	uGQ0YQf1T6y02QqeWOxK6XngnCouR9ozIhw5mpxlXis+swH981wrVYVQcekjMU9wNK9jDBDUEkk2P
	PfoSn3lWCmmEDJiTx3QBxeLlLli38ZofhbupQKIGOLmQNZS2eAomK4dHIMQfGONQ6Vj4gNFkPaAUS
	o4A2fKiEqcFkV8C29Ltg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lui8h-00Hap0-By; Sat, 19 Jun 2021 21:04:27 +0000
Received: from mx1.smtp.larsendata.com ([91.221.196.215])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lui8c-00Haod-Cn
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 21:04:23 +0000
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx1.smtp.larsendata.com (Halon) with ESMTPS
 id f31b4aa0-d141-11eb-960d-0050568c148b;
 Sat, 19 Jun 2021 21:04:34 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 8EDDD194B13;
 Sat, 19 Jun 2021 23:04:23 +0200 (CEST)
Date: Sat, 19 Jun 2021 23:04:18 +0200
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20210619210418.GA602356@ravnborg.org>
References: <20210414122143.30827-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210414122143.30827-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_140422_622314_E604FADE 
X-CRM114-Status: UNSURE (   9.46  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: AT91: Add skov-arm9cpu board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sasha,

On Wed, Apr 14, 2021 at 02:21:43PM +0200, Sascha Hauer wrote:
> From: Sam Ravnborg <sam@ravnborg.org>
> 
> This adds support for an older SKOV board, the arm9cpu.

Thanks for takiing care of this old stuff.
Now I need to dig the board out and check if everything works :-)

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

