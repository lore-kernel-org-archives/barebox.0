Delivery-date: Mon, 09 Jan 2023 16:13:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtq9-006ldH-T9
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 16:13:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtq7-0003ko-6r
	for lore@pengutronix.de; Mon, 09 Jan 2023 16:13:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mxANr//BCHKo1+acCrnXMvAInBxbR0JPDRqpx3qO05U=; b=bv0bNC/m6Y2S6hmloPIOAWhftX
	CfrDciHPXLipJh72PwOPmXCScHhZNnFg+q6ZjtAWU3G2u2BpFb43LohzVii5m27aP+iJXZFRAgusx
	066yyCtpUh7sXcnfvRnMrhk0d8ILh1QFrNXP8z29NqKped0RniwVeHwqFMTi6LDaKPO1GpV2S4KUn
	qgA6b3IeVcRa4WgakBVXs12h7/Jzak4Xo4/IXYnknEHFpNNGi0RgILlmsRFTYshAEy/qS/xt1Uvxp
	NJdcDCQPRaSWBhV/Oib28yhNt9cwRKLpLyd/9eHVfZ7KGjkALRwh/Zu9rEqB5uy9PvtLNZuWSFse0
	I38gUXGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtoi-0028Cv-88; Mon, 09 Jan 2023 15:12:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtoc-00289a-IQ
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 15:11:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtob-0003Mg-DE
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 16:11:57 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtoa-004sbN-PI
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 16:11:56 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtoZ-008bxm-LL
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 16:11:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  9 Jan 2023 16:11:45 +0100
Message-Id: <20230109151152.2052493-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_071158_625921_5A870F59 
X-CRM114-Status: UNSURE (   6.64  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] treewide: misc helpers for porting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These patches resulted from yak shaving around the upcoming
sync of the Atmel NAND driver.

Ahmad Fatoum (7):
  vsprintf: support %pOF format specifier
  include: driver: make dev_(get_priv|is_probed) argument const pointer
  include: sync io-64-nonatomic-*.h headers with Linux
  clk: add prepare/unprepare helpers
  of: provide of_node_get and of_node_put stubs
  include: linux/slab.h: define krealloc/kstrdup
  barebox-wrapper: define MODULE_DEVICE_TABLE

 include/driver.h                |  4 +-
 include/io-64-nonatomic-hi-lo.h | 90 +++++++++++++++++++++++++++++++++
 include/io-64-nonatomic-lo-hi.h | 90 +++++++++++++++++++++++++++++++++
 include/linux/barebox-wrapper.h |  1 +
 include/linux/clk.h             |  2 +
 include/linux/slab.h            | 13 +++++
 include/of.h                    | 15 ++++++
 lib/vsprintf.c                  | 13 +++++
 8 files changed, 226 insertions(+), 2 deletions(-)

-- 
2.30.2



