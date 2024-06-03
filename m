Delivery-date: Mon, 03 Jun 2024 19:10:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sEBCW-0015j3-1j
	for lore@lore.pengutronix.de;
	Mon, 03 Jun 2024 19:10:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sEBCV-0004SL-Ve
	for lore@pengutronix.de; Mon, 03 Jun 2024 19:10:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=l8TDpsjEkDDJbzBryVMxnQccqIcJPZefYpcBm5qsTM4=; b=kbbMOeBrIUE2kTX7njadYVbO4i
	4UJK2eF/DFrRtQ8juAdYntAKKdOTeR6UoAOAucU9UfWMP5p4C1SY1HDxpZU51Tt5+d2aRO1YX1Dca
	X8NSDlZ7hVfNZa/AJ1cp3U8V1wuQVIG5/bp0w5qHsJx79C0ZQI7tKkwgo19M++zWYvT88azkEFJ0/
	rKogHCdpiUjAwWvTWckhvH09Y051Lu3Suyk0ftluUoSgyEwh5jjrHjGtUhR9iLONIAFBUB2LOWDqH
	a9s9hsJTfDq0HGZHD/kbPR1ExnrNkupfBgfG++Ff3oV30CE2+J5BVA0bHo7FbyZG8ty7DcmHOWKrx
	2/0ro+Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEBBs-0000000HSop-1i8P;
	Mon, 03 Jun 2024 17:09:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEBBo-0000000HSoG-40oT
	for barebox@lists.infradead.org;
	Mon, 03 Jun 2024 17:09:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sEBBl-0004Pk-9j; Mon, 03 Jun 2024 19:09:41 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sEBBk-0006Ko-Lf; Mon, 03 Jun 2024 19:09:40 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sEBBk-007Vdc-1o;
	Mon, 03 Jun 2024 19:09:40 +0200
Date: Mon, 3 Jun 2024 19:09:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Zl341MMAYanIfGAt@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_100945_116907_D6E2E2A8 
X-CRM114-Status: GOOD (  12.72  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: barebox + picotcp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Antony,

I am currently playing with your barebox picotcp integration in order to
get it into mainline. I am currently on your picotcp v2.1 branch and
noticed you had to disable TCP support. I wonder if v2.1 is the way
forward or if it's the v1.7 based branch instead. The v2.1 branch is
newer, but also hasn't seen any activity for multiple years now. One of
the main features of the v2.1 branch is that it introduces
PICO_SUPPORT_TICKLESS, from which I don't exactly know if we want/need
it, but what I do see is that the stack won't compile when this option
is enabled.

Do you have any thoughts what could be the way forward?

Regards
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


