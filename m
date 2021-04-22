Delivery-date: Thu, 22 Apr 2021 23:47:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZhAt-0004oW-La
	for lore@lore.pengutronix.de; Thu, 22 Apr 2021 23:47:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZhAs-000362-Q8
	for lore@pengutronix.de; Thu, 22 Apr 2021 23:47:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=37QrJn+GPktXz87yO4FsEh8NzM5V9T90V2kDGk4djWU=; b=CeH7KzpNC7dAWujZBhV9qxJsz
	Io0YgEngu1RFTJr64boLTaaGi5tbw6N/dDB2KoZFRrfBLqWJxL2FSeOIFifIP+Zt9ansAZ8H+RaSu
	wnS2Un3OGIq8RJcMK+uSkEYHl3h94JwE41UehhyiLFP7BRnJ6ekfmFtU/oqOqlHBRct8uud+x3ZBD
	VY5YYiCZ68cPewun5yhQc05D4U+Dzlk/IhrA2ORx0qK1lqn6HqPoLaIhjhv9tkh3sSAbFoadfdV21
	07ijkyUvdWsnfNyQBH4H0PXor9ZrpLqiArIbJx/IfRF/lw0BokBnvak8U3WD0mcFBBwEXdNpJUBLd
	S9869ZWZQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZh9b-00HXzK-6X; Thu, 22 Apr 2021 21:46:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZh7F-00HXlx-J6
 for barebox@desiato.infradead.org; Thu, 22 Apr 2021 21:44:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hlweGpV9FdoQ2TzFv+ZG9GTTIyusjCb90updN01lx9Q=; b=jDju4/2hf5gyTZ8TxsKNhYwrdq
 kO+93frl/zF+Zl/Ea1WC1H5y0qC+fIHjqGxOjgD9pqD5ZW1okfn9nyg9/TP3fT3N5f82FId03jsLC
 59XVZU4Cp019+dYsRH2XSpXzI8bLE4AdeeQ7ozXieHeV67EfXa5ZJfih5NAlcqHio0p2Gavo5+PAq
 xygq6hFFy1GMZr0hxV7ZKd1jdOqBPr3fDwznIe+1dAFMOKAKgYNFO88uErdnLjLfGVFKMQGJAWGnF
 ZdLxBgk2r2ix0zgPI6fegWLtRdMF8OJMF5gMQEr8GSRRMrCCC1cCC/z2OjeGkP0hGRLuyv5okki3D
 kYdUvElg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZh7C-00E0ZA-RK
 for barebox@lists.infradead.org; Thu, 22 Apr 2021 21:44:04 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1lZh74-0002hh-ML; Thu, 22 Apr 2021 23:43:54 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1lZh73-0002FG-Dy; Thu, 22 Apr 2021 23:43:53 +0200
Date: Thu, 22 Apr 2021 23:43:53 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210422214353.ivs7npc72pfjspks@pengutronix.de>
References: <20210422110849.1556472-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210422110849.1556472-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 23:43:32 up 141 days, 11:49, 39 users,  load average: 0.01, 0.05,
 0.04
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_144402_906851_DD3602D2 
X-CRM114-Status: GOOD (  12.93  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: demote reset reason print to debug level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21-04-22 13:08, Lucas Stach wrote:
> The i.MX reset reason is not really helpful on its own, as it needs
> to be augmented with other information like the watchdog state to get
> the real system reset reason. As it stands this log is more confusing
> than answering any questions a user might have.
> 
> Demote the log to debug level to stop this confusion.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

