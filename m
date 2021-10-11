Delivery-date: Mon, 11 Oct 2021 11:38:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZrlF-0002N5-5i
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 11:38:21 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZrlE-0001dW-8L
	for lore@pengutronix.de; Mon, 11 Oct 2021 11:38:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hYjii2H63/E9lBSkrOsfxiHvoKnrN0psTKIZLuV75NE=; b=fdOKXv31uQ5jsKL3KpEQx83sKi
	oEmCkynxabjXKJMPKGB3YZCnwsQr+pY4xL2t1eJxplj7LHsNVX+y5WdR4RltRxFbfPQOVz35ZTmNQ
	D5mg0I9DsCT8Gzxp+YnZUp2r5XnX2y8/NN9kEqZxtDbiSVaz+HGCDtGnr3LlF5zX5+B129hb9AioT
	vQs7o+tnPGhxLTVoOi11+9hN6xgUlp2U8dipir6KZHxmzNbLdccLjzV2GBNUTwrPTNcFIR6rQINh4
	nhpRpFRX+71NhGY5a7QMU+dbxTPu7/gkK+/W98rD/z+jp7KfMQdoxg3gDm7ozW7oKoPfCXpfgyVru
	Qso3CIeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZrje-008Ygh-O6; Mon, 11 Oct 2021 09:36:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZrjY-008YfF-TI
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 09:36:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZrjX-0001W4-EO; Mon, 11 Oct 2021 11:36:35 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZrjX-0004I0-5A; Mon, 11 Oct 2021 11:36:35 +0200
Date: Mon, 11 Oct 2021 11:36:35 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211011093635.GA28453@pengutronix.de>
References: <20211006084323.14051-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211006084323.14051-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:36:23 up 235 days, 13:00, 140 users,  load average: 0.29, 0.21,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_023636_977995_40B9B432 
X-CRM114-Status: GOOD (  18.86  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 0/8] add noswitch support for skov boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 06, 2021 at 10:43:15AM +0200, Oleksij Rempel wrote:
> changes v4:
> - rename skov_no_switch to skov_have_switch
> - use xasprintf instead of xzallox + snprintf
> - use alias for ethernet0 node detection and make it compatible with the
>   old DTs versions.
> 
> changes v3:
> - add missing byte in the switch path generation
> - make sure it work with old devicetrees
> 
> Oleksij Rempel (8):
>   ARM: dts: skov-imx6: add USB nodes
>   ARM: boards: skov-imx6: fixup_machine_compatible() add optional root
>     node
>   ARM: boards: skov-imx6: add switch detection
>   ARM: boards: skov-imx6: disable eth0 for barebox if no switch is
>     detected
>   ARM: boards: skov-imx6: fixup different DTS variants
>   ARM: boards: skov-imx6: start using deep-probe
>   ARM: boards: skov-imx6: add defaultenv with eth1-discover script
>   ARM: boards: skov-imx6: use separate DTS for the iMX6 Solo variant

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

