Delivery-date: Tue, 18 Jan 2022 00:04:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9b2v-0051Hv-QU
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 00:04:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9b2u-00011C-IG
	for lore@pengutronix.de; Tue, 18 Jan 2022 00:04:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o+8hwMS61TlWs/9JT1NgOxsJ+yT457qoEXD9+tUI/2U=; b=ZAv8qtjGPl9Jig
	YCC+KXbLcfqOik+rKqXn3koLwMrCWRdKwVjtlqa+0Fulcd71d6rOZp43Qcnd5FHLudFDN1dCmw1ym
	vcuJ15fwEpn/h/55c+3IGl8ZKvFvJ9MIFuKjtPjAYgHzV7hpMnt1xGdqqYu91RJN9klZV5BqLycws
	6RJ8gCiBNUAu7umwnW5eHaBmY+gxOHOa/LuUbnxNSjMehfL1HcFD1m5I6Rqc2zotyVeWt1NGXMFn3
	ai6Rf4EEZ1yx5M0hCoG6DvKgaSl41JcJHxAb7Vdj/YvzumSKpg2jyVCZwUsXbxOfxnPTlgWUpnhIW
	VYlz9JuEQ54i+KTTc3WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9b1W-00GXRg-CN; Mon, 17 Jan 2022 23:02:50 +0000
Received: from smtpout30.security-mail.net ([85.31.212.37]
 helo=fx306.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9b1R-00GXQo-VD
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 23:02:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx306.security-mail.net (Postfix) with ESMTP id A38F9399688
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642460560;
 bh=Az1vnYsGRPwde1OxpEh0C1YeHyHH0CG0ZsuqDf9Y6eA=;
 h=From:To:Cc:Subject:Date;
 b=aOdtDfyCK+Iko4rk1sojsDGSNFyuLXvgCEcE5i5W8KqXQkwvEUxAGVc82JGqRpHgV
 I0/thdWxnd6UMJQn6AfRU1k2lI0Xxwmu/Bgzdk4/JNxuLV8n/vQSk3Ik3AG1Upbd+n
 Fb2Vv5c6td8PtW/f46aknw/NRmLl6uJKQclg2R5s=
Received: from fx306 (localhost [127.0.0.1])
 by fx306.security-mail.net (Postfix) with ESMTP id 60C02399681
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <1d8.61e5f590.5d02.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx306.security-mail.net (Postfix) with ESMTPS id 075D7399670
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id D96AD27E0341;
 Tue, 18 Jan 2022 00:02:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id C15CD27E03DD;
 Tue, 18 Jan 2022 00:02:39 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C15CD27E03DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642460559;
 bh=1+G2WogD/ykJkHUEeFePeD3lDhTmt/PKy1euzTYG0Lk=;
 h=From:To:Date:Message-Id;
 b=QcwonBiM02IRy/4YWpwLtVgkhlkb7imkxZqQBY8bSXP4xetuQeiTPv9Y/rZcUJjb/
 Xe0ltWCcCXG3sOnCrwhQzUtMCkrUHhSn6eC8RSMbQQ26FJSwpmbVhoNUFltG0qUlSb
 R8P9cUvik6hDBLTWQ2FRFX1qeYWpXqWfl3ZZyRJU=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Rztgpbd0hcKf; Tue, 18 Jan 2022 00:02:39 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id ADDEE27E0341;
 Tue, 18 Jan 2022 00:02:39 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 18 Jan 2022 00:02:30 +0100
Message-Id: <20220117230235.13549-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_150246_199454_C861EA9A 
X-CRM114-Status: UNSURE (   9.01  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/5] Add support for QOI image format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

changes in v2:
 - added SPDX licence identifier
 - added comment on modification done on qoiconv.c
 - added pr_fmt macro and removed keep_file_data=1 in lib/gui/qoi.c
 - reword few commits.

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
 lib/gui/qoi.c       |   97 +
 lib/gui/qoi.h       |  673 ++++
 lib/logo/Kconfig    |   27 +-
 lib/logo/Makefile   |   55 +-
 lib/logo/logo.c     |   10 +-
 scripts/Kconfig     |    5 +
 scripts/Makefile    |    1 +
 scripts/qoiconv.c   |   63 +
 scripts/stb_image.h | 7756 +++++++++++++++++++++++++++++++++++++++++++
 13 files changed, 8682 insertions(+), 15 deletions(-)
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

