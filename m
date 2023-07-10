Delivery-date: Mon, 10 Jul 2023 21:48:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIwsK-0069Om-Vg
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 21:48:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIwsI-0000We-8P
	for lore@pengutronix.de; Mon, 10 Jul 2023 21:48:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gF0h6DYp84ERdi0ohnFP/VQXEJGwbapINh1K03f4eig=; b=cDubLy4+67hAijpdaxdhJdJolF
	Cr7cQ8AueH2so78JPo3iLboqHvoyv7KogG8BiHUtC89kAn/yvS3tWQWMaL9AGnLNYa4VvQhtSgeDY
	0+wZ4opquihD0wBF7Rc+SqRYFY6nZGO8uiELbDgWenAOxhhcvNBTt33g7Ezn8lLhiHRHMmCXRsdek
	CsRrEMiR+hzhky3dCjK13/Q9tjM2GCS6ZbqY1lPMaHoqeCXPt5ujSrUaonJQeGpsr1eWW4WdzvuLN
	cjKbGZsBE5MWoZ6Lz5EKXIhPbaCizdRXQGFGIICow2dIFtDRk6sLa3BDlVLa8zaJl5YdEmLmr9UMY
	VUEFZsRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIwqt-00Cahr-2X;
	Mon, 10 Jul 2023 19:47:19 +0000
Received: from mailrelay1-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:400::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIwqp-00CaeZ-0P
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 19:47:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=gF0h6DYp84ERdi0ohnFP/VQXEJGwbapINh1K03f4eig=;
	b=cLvf7Ra3RzHflGX+2giXPxOEpp/uArMfjESsHVKAYu6/Fa1B6z9tkk/trZrNSqnL1GIcKiImkkZ4y
	 VDtDLhi+E2OcFUTMlAUliyJIY0/gf8rXlz/TrQlbZcH0t8YAasyMo3id1JdWISBwU0SUy66LQ7C1UD
	 U7d198c7w/SyaaT/Ks6eXdEGadXw5jxXso/aRzZ6h5fNZIkrwARXL5J7SBp0PAD1PByPhixptqx8gy
	 b5SsjnIsrvjULU/00contpRRMelkIi2gZUq+1EC1hyf2CU2z2xBB+4Nef8wI2WtQJKhYqeSU4deitK
	 kP94jQSDoUHxTSJP+sfj3OyzbWhsj+Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=gF0h6DYp84ERdi0ohnFP/VQXEJGwbapINh1K03f4eig=;
	b=Um0ZcBhO2A/hNQzIYjqY9eSDiXVilpMkrFuGN74nbmBfEq+OyNZbXH9ztWDDpW+YlyalDkvHTYZ8+
	 vx/1C3GBA==
X-HalOne-ID: 8a25619e-1f5a-11ee-a667-99461c6a3fe8
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay1 (Halon) with ESMTPSA
	id 8a25619e-1f5a-11ee-a667-99461c6a3fe8;
	Mon, 10 Jul 2023 19:47:04 +0000 (UTC)
Date: Mon, 10 Jul 2023 21:47:03 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20230710194703.GA19256@ravnborg.org>
References: <20230710172335.26701-1-jmaselbas@kalray.eu>
 <20230710172335.26701-3-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230710172335.26701-3-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_124716_638420_9681FE8E 
X-CRM114-Status: GOOD (  12.61  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLACK autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/8] mci: Add dwcmshc-sdhci driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Jules.

On Mon, Jul 10, 2023 at 07:23:30PM +0200, Jules Maselbas wrote:
> This driver initially started as a modification of dove-sdhci driver,
> it has been heavily reworked to be closer to rockchip-dwcmshc-sdhci by
> using more common sdhci code.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/mci/Kconfig         |   8 +
>  drivers/mci/Makefile        |   1 +
>  drivers/mci/dwcmshc-sdhci.c | 520 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 529 insertions(+)
>  create mode 100644 drivers/mci/dwcmshc-sdhci.c

Unless there are good reasons that I miss you could squash this with
patch 8. It looks funny that you add a driver and then delete a lot of
code because you updated some infrastructure later.

This is to have a clean git history, which one could always ague about.

	Sam


