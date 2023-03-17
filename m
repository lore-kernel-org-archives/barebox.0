Delivery-date: Fri, 17 Mar 2023 12:12:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd80j-003qqq-IN
	for lore@lore.pengutronix.de; Fri, 17 Mar 2023 12:12:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd80j-0003pp-Bn
	for lore@pengutronix.de; Fri, 17 Mar 2023 12:12:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L5nNqFTApJzB7lkWsImx4Qz6xqNDBeE1PbrSGMr7NcA=; b=C5PM5xvY1i/QlA8JXKTLyQBHeZ
	CjCkdF+I/TB5g/ABS0GhGG/AcpwDytkLZ7AR2ygXLX1TI9Rc1269Gu/ari2vcYzao9O/LitChfWpP
	c/0eTWQmBUA6kRHEDirPdQJFM2n1RFl7Gp4jJX8AOpqzCf8/uLf73DJ2bj4Se4/cBXHeuX7u0C1+N
	Gc7UPJHTkApM6kTnVs/t0Df82LzUV67mluTsMeG+0clc1pKJj/HEIeLQgh+7XJTi1gPgNeZTF48tK
	bKu/FA/UHx+J3KFtQ8Qzpp2+CkKDpSI7jVTy+zuzotAHMoPiBEn7Nj9HSQtarvEvixgIKhwj8yJwE
	onfuAnuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd7zb-0020mk-2v;
	Fri, 17 Mar 2023 11:11:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd7zY-0020m2-3B
	for barebox@lists.infradead.org;
	Fri, 17 Mar 2023 11:11:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pd7zX-0003cQ-Hn; Fri, 17 Mar 2023 12:11:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pd7zX-0001SC-9w; Fri, 17 Mar 2023 12:11:23 +0100
Date: Fri, 17 Mar 2023 12:11:23 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230317111123.GZ7446@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_041125_019403_0983E01E 
X-CRM114-Status: GOOD (  19.06  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/23] FlexSPI image/boot/update support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 13, 2023 at 02:41:39PM +0100, Marco Felsch wrote:
> Hi,
> 
> by this serie the missing FlexSPI/QSPI boot support is added. The
> FlexSPI boot option is available on i.MX8MM/N/P SoCs.
> 
> The integration is done by using the single-image approach, so no
> special QSPI image is required. The same image which can be used for
> eMMC/eMMC-boot, SD, USB, chainload now supports QSPI. This is done by
> adding a 2nd IVT header on the appropriate place and adding a QSPI
> update handler.
> 
> Patch1-4: General fixes
> Patch7-onward: Add the FlexSPI/QSPI support
> 
> ---
> Changes in v2:
> - Link to v1: https://lore.barebox.org/20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de
> 
> - patche9-10: fix $bootsource_instance to report 0 instead of 'unkown'
> - patche18-19: switch from target-device seeking to filetype offset.
> - patch23: add documentation

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


