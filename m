Delivery-date: Mon, 20 Jun 2022 16:35:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3IUW-0089u4-FD
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 16:35:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3IUW-0002G7-JW
	for lore@pengutronix.de; Mon, 20 Jun 2022 16:35:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Message-ID:Subject:To:From:Date:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W46TvtQI22bpHBmPuer1tTZJnVysyWdAL6213tRemKw=; b=TkKzTR3EfY2EKQ
	PpYt1d8JpNcxzdAXHo8MV7fWxePzZQdNHkwodIQxQOMkPEVZC7U1WWbSthWFyWS0ViG45OqPAuT0M
	IfnuST2wwlWsACq9m02YjFxGuEICtH4XNvbyH7ECTCbltdSvWVKA2cbN1YmbspPuQ11LxBhbeWdpE
	855yq0unvbqPZPNDEim41p61bNJSB+R97m2gtr7/HwAyGxlOkcGkBKwAaRhylC/JVYME8pQ/XDiLO
	iby0jnJ5RdMXP+XdDLDlygiiEgdQJ/QYmEQG2qdBJtWkYeJjwM+gKjuykjAyVan/+CXf7U+Xd2s5m
	aBtmjPTNjDElXbbbTb3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ISo-0014kI-Er; Mon, 20 Jun 2022 14:33:14 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ISj-0014je-Cq
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 14:33:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:message-id:reply-to:subject:cc:to:from:
	 date:mime-version:from;
	bh=W46TvtQI22bpHBmPuer1tTZJnVysyWdAL6213tRemKw=;
	b=e5GILGdIq1fGYhd7KX8uxAZqPHEpxQ4YU2ewtsNVqkJ6xsaHDKAXmYRHbdkzRTCXvT4JbJ324PqMa
	 8AUdDuOvgYPC+bS/sUjQf8/ynEeMNKCOcDkHW7hdX+bcVoaeHGR6a0GQUyFmVkA5jWbN3TvfGlpeJe
	 HdVJNfGjJORrFqje09Dq0aSUU1n58Qae5Y0OfGlS41YWB2/Ap6+sBZQJSxIDXs0sMD3uY3SreVu9SX
	 0g2uNmgSSXAQGs3e8oNVUrrMgU0vkUgU3A9ZZw8b3Oh3d39t0YWaBJ31l5ehnxmoiEBBnqaEiqUpxE
	 f4btbgt55scS/WZmZt5ggXxRq2GewBw==
X-MSG-ID: e3b6c8ca-f0a5-11ec-8a45-0050569d11ae
MIME-Version: 1.0
Date: Mon, 20 Jun 2022 16:33:02 +0200
From: Robin van der Gracht <robin@protonic.nl>
To: Barebox <barebox@lists.infradead.org>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <28eba28ad8f42919edb1aee4e4303a96@protonic.nl>
X-Sender: robin@protonic.nl
Organization: Protonic Holland
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_073309_904472_1136ED7F 
X-CRM114-Status: UNSURE (   7.96  )
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Boot hangs during sdhci_transfer_data_dma
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

Today I tried to run barebox with CONFIG_KEYBOARD_GPIO=y added to my config.
and noticed my board hangs during boot. When I modify the probe function to
run without registering the poller[1] it boots as expected.

I started digging into the code to see how far the boot gets when I do
register the poller. I found that Barebox hangs in a do/while loop in
sdhci_transfer_data_dma[2].

The contents of the interrupt status (SDHCI_INT_STATUS) is 0 and stays that
way forever trapping the process in the loop.

Call stack:

initcall -> barebox_of_populate
   state_probe                                          drivers/misc/state.c
     state_new_from_node                                common/state/state.c
       of_find_path_by_node                             drivers/of/of_path.c
         __of_find_path                                 drivers/of/of_path.c
           device_detect                                drivers/base/driver.c
             mci_detect_card                            drivers/mci/mci-core.c
               mci_card_probe                           drivers/mci/mci-core.c
                 mci_startup                            drivers/mci/mci-core.c
                   mci_startup_mmc                      drivers/mci/mci-core.c
                     mmc_compare_ext_csds               drivers/mci/mci-core.c
                       mci_send_ext_csd                 drivers/mci/mci-core.c
                         mci_send_cmd                   drivers/mci/mci-core.c
                           esdhc_send_cmd               
drivers/mci/imx-esdhc.c
                             __esdhc_send_cmd    
drivers/mci/imx-esdhc-common.c
                               sdhci_transfer_data_dma  drivers/mci/sdhci.c


I'm not sure how this happens. It's not the first transfer taking place. I
figured that mayby the poller[1] just adds some cpu load that opens up a
window for this to occur.

Maybe something else cleared the status register right before we entered the
loop. Thats when I spotted this read/write construction[3]. It's executed
right before we enter the do/while loop and (over)writes to the irq status
register.

I removed the line with the write command[3] and my board boots as expected.
Why are we (over)writing the status register right after reading it?

Other theories on how this could occur are also very welcome :)

- Robin


1: 
https://git.pengutronix.de/cgit/barebox/tree/drivers/input/gpio_keys.c#n168
2: https://git.pengutronix.de/cgit/barebox/tree/drivers/mci/sdhci.c#n167
3: 
https://git.pengutronix.de/cgit/barebox/tree/drivers/mci/imx-esdhc-common.c#n179


