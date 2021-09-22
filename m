Delivery-date: Wed, 22 Sep 2021 17:31:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mT4Dv-0003e0-R5
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 17:31:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mT4Du-0000WI-Sq
	for lore@pengutronix.de; Wed, 22 Sep 2021 17:31:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hr+zMXurPL8KxUynxMxRryHgxq9lhhVIebP0BK2mdww=; b=421IFa2U/nNSL6
	tShnNAb/et9BRlsIy3h3dFMPuZ2JNARqMQ+RqOlvfsRaDBywEmNLb0OF2Y95cXEo0GUrWGKm5Y9uk
	52WzY/f7om2Zvxj0BrdFnqVbIaK6DPedZAOj847aNn974yZp2yvIiZuLIY5qIHms72rCVe3K4Zt/A
	DNx5Q13x57iLOeEawPcWCyBJ6CvKnJUV/V4TWfSOE0NDgD8viytAcWs4I64onJbwF2eP0uQxKtBe0
	XYsNm7tnb/r6Q/e34okPqvm4vtF+6yffxaBpNdY16ToX32U1l7mAF7Fro/iNROB9zerd0OO/y14Jm
	R5wSo/7IkG6hREb4I/ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT4CA-008wTK-8u; Wed, 22 Sep 2021 15:30:02 +0000
Received: from mx1.smtp.larsendata.com ([91.221.196.215])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT4C4-008wQm-GM
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 15:29:58 +0000
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx1.smtp.larsendata.com (Halon) with ESMTPS
 id e5cc4fa9-1bb9-11ec-a02a-0050568c148b;
 Wed, 22 Sep 2021 15:29:37 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 2E4DD194BD8;
 Wed, 22 Sep 2021 17:29:40 +0200 (CEST)
Date: Wed, 22 Sep 2021 17:29:45 +0200
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Rosin <peda@axentia.se>
Message-ID: <YUtL6YRakBc9jQbo@ravnborg.org>
References: <20210922065000.20970-1-a.fatoum@pengutronix.de>
 <20210922065000.20970-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210922065000.20970-4-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_082956_732370_FACD0D86 
X-CRM114-Status: UNSURE (   9.34  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] Documentation: boards: at91: remove done TODOs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Wed, Sep 22, 2021 at 08:49:59AM +0200, Ahmad Fatoum wrote:
> All DT-enabled boards are now in the at91_multi_defconfig.
> The SAMA5 ones also generate first stage bootloaders with the same
> config.
> 
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Nice to see the continued progress on these atmel boards - thanks!
Patch is
Acked-by: Sam Ravnborg <sam@ravnborg.org>

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

