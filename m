Delivery-date: Fri, 14 Oct 2022 18:45:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNoX-008iN6-A9
	for lore@lore.pengutronix.de; Fri, 14 Oct 2022 18:45:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNoV-00076m-6d
	for lore@pengutronix.de; Fri, 14 Oct 2022 18:45:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0kmZ+WprNZ5mw4SeVhYpBDh37N3sQ4JdnbOi+peAhM8=; b=qktmrvW1fwAG3bWvEBzq+V2HhY
	7U9hFyq4pk6crD68D3zN81rFrOBTm2LB4mT2b5piP1qeluR2O5ZUctipxq1OcHOKjHadTqmvoFxty
	c1rjrsiUvzeBaQ0epuSpX9xOa3vR9yEopm29QPMFj1+NwRe8hqfa6DAYrXjFxbvMJJgnFJ7CH6UNl
	8Dntg36mIjyq0VWKDbKxYxS/K0t13t+nCm3kiZIPnPCNOwIF24b0B++Ryq49xZa4gNq2pScJHFoFo
	X3G4bCFdBU8gyX6rhIf/iUazJJJmbatZwugQMzfWdsAmW2Kh23XmtVXFBm73xAc07jfTIQMv9YmVX
	6dQjsSNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNnI-00FPq2-JV; Fri, 14 Oct 2022 16:44:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNnC-00FPpg-I7
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 16:44:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNnA-0006xl-03
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:44:12 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNn9-0003pL-Pb
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:44:11 +0200
Date: Fri, 14 Oct 2022 18:44:11 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20221014164411.sxgz5h5cw6zfu2nl@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221014163534.3812272-1-m.felsch@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_094415_894479_FBE5CFEF 
X-CRM114-Status: UNSURE (   8.77  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/8] Barebox-State on-disk partition support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-10-14, Marco Felsch wrote:
> Hi,
> 
> this small series adds the support to store the barebox-state on a
> on-disk partition like mbr/gpt. Note for testing you need a very recent
> dt-utils package. I will send the patches soon as well and will add a
> link to the patches here later.

The required user-space patches can be found here:

https://lore.pengutronix.de/oss-tools/20221014164204.3812506-1-m.felsch@pengutronix.de/T/#m2f222141796f930be0f93e11401f143335b00e7c

Regards,
  Marco


