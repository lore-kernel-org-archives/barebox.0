Delivery-date: Mon, 10 Jan 2022 23:15:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n72wW-00GQ0G-UY
	for lore@lore.pengutronix.de; Mon, 10 Jan 2022 23:15:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n72wR-0005No-1O
	for lore@pengutronix.de; Mon, 10 Jan 2022 23:15:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=abrEIbln4qlClv7uXooZ4B75ww54Uk1cAsS8QtV7KFI=; b=D/1zFXqe1be8zy
	m77J5rwrf3ifu+1Q9fnNn758AtJ4lW+vvvOob6b3bkigt3BOauYzkP0evokfnRwzAdGCzR3Wmydzm
	zoTGXUzaSnEm4awCRmUOm+qbv3HpV86yuEB7UvqDz7nYRx/lUYH/nQ8sKGza7DWM5/b5/EiwKHSx5
	nXb2ipxxKse7CV9d2oRkCaW+GRfs5M9d357S/v2pnphV/AGtAYJsOTUvotnqqcxaWEw4sH5+fbhQB
	cFw9SMjwGiLPt5HQhZX6hnTMaKtDfavaiyWWFln1ChqviqW3ITXLkcrMwntyq/zp8JwBY9HHop0sT
	E1Rd8gOmXaQONdiil9ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n72ut-00DawL-FZ; Mon, 10 Jan 2022 22:13:27 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36]
 helo=fx301.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n72um-00DasQ-6A
 for barebox@lists.infradead.org; Mon, 10 Jan 2022 22:13:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id 5921724BD035
 for <barebox@lists.infradead.org>; Mon, 10 Jan 2022 23:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1641852795;
 bh=aCgOXaxopeLbF9z/DPZjJNLY+C/gqxJ9AfTYaivKqkw=;
 h=From:To:Cc:Subject:Date;
 b=0GEyzBOFXik6RuG0BojMaHKNHbbRwh1GkYHLTIVRcZHLnO7hob3X8qQbjIp5lr6aI
 bB8vIRTe1GKD/QvpQG6GueW4cVOOkhHkDvX0UOxUcngeSw8tkq7FEGEdCRmSR4yPqo
 jmiWmXNS720IzrH/WFvIwPtH3qS5HgIrKAuSuT4k=
Received: from fx301 (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id 02B7A24BD036
 for <barebox@lists.infradead.org>; Mon, 10 Jan 2022 23:13:15 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <4662.61dcaf7a.5c85a.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx301.security-mail.net (Postfix) with ESMTPS id 8ECF224BD035
 for <barebox@lists.infradead.org>; Mon, 10 Jan 2022 23:13:14 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 38C0E27E03F8;
 Mon, 10 Jan 2022 23:13:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1C84A27E03ED;
 Mon, 10 Jan 2022 23:13:14 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 1C84A27E03ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1641852794;
 bh=Ep354NveAvhEJs8jwfKgrHaqWMrGw45dqLRlXF1a8ro=;
 h=From:To:Date:Message-Id;
 b=OSFmDl7hBg9hAgO+0uuuNz5m/BpYROsDxZASvu/yg5jUMjoZVoOkksuQJ1IOs75Xy
 DqClU0ZFkwyknKGlKUEzc+Si28pB48NN5q6Pt1E1+KDRMY/xc+DoVKgi4urGjS8zcM
 U+/LUgvpNvS75kUUM7yxxWke1INKNYiyyn9fzSb4=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id VDFkyLfBdOs3; Mon, 10 Jan 2022 23:13:14 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 073C927E03DD;
 Mon, 10 Jan 2022 23:13:14 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 10 Jan 2022 23:12:50 +0100
Message-Id: <20220110221255.5003-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_141320_392951_37705161 
X-CRM114-Status: UNSURE (   8.82  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] Add support for QOI image format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ho ho ho,

I had some fun past weeks playing with the QOI image format[1] and I've
added it's support to barebox. I also made the builtin barebox logo image
format selectable, with bmp, png, and qoi...

I am not sure if this be of a great interest to barebox anyway here it is.

[1] https://qoiformat.org/

---

Jules Maselbas (5):
  filetype: Add QOI format image type
  gui: Add qoi image format
  scripts: Add qoiconv to convert png to qoi
  logo: Enable image format selection for the logo
  logo: Add choice for the QOI image format option

 common/filetype.c   |    3 +
 include/filetype.h  |    1 +
 lib/gui/Kconfig     |    5 +
 lib/gui/Makefile    |    1 +
 lib/gui/qoi.c       |   94 +
 lib/gui/qoi.h       |  671 ++++
 lib/logo/Kconfig    |   27 +-
 lib/logo/Makefile   |   55 +-
 lib/logo/logo.c     |   10 +-
 scripts/Kconfig     |    5 +
 scripts/Makefile    |    1 +
 scripts/qoiconv.c   |   91 +
 scripts/stb_image.h | 7756 +++++++++++++++++++++++++++++++++++++++++++
 13 files changed, 8705 insertions(+), 15 deletions(-)
 create mode 100644 lib/gui/qoi.c
 create mode 100644 lib/gui/qoi.h
 create mode 100644 scripts/qoiconv.c
 create mode 100644 scripts/stb_image.h

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

