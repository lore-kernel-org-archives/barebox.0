Delivery-date: Mon, 05 Jan 2026 15:09:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vclGp-001Xso-1j
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 15:09:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vclGo-0001kr-7G
	for lore@pengutronix.de; Mon, 05 Jan 2026 15:09:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CeWapiJhe+/1zyc7CtFlm3YEWhi6KDt1Hic9oyiP29s=; b=BBHuFxTR4eBsTe0kHOraei5q8k
	JFynkMMpCX42BFXHrh6PdNBoNCZ3NnPLzL29umvTDtL5LsbKtD351RYR0gmNF52pFZvCpfSPZRlzF
	EyqCM2Wx00g4KSXGvGrGJEcxv/9eSEh82bZjIHl5jYWFFtLCkxxeJwWPZgR8AOIeZ8mMmYCA8UI9F
	jANtmbCTt3wyn4tqMjVN2+kMd/q9j8Qv6jamFMHqekwvtd6sqThT2Z1yE55d9evFVUr/Slc4r6eQR
	8jervd+llM3Z4Q1uNnjKDPa0ma9PYtEnhwXr1hzpuTfJyWYEzcetKwT8xWyopuuBY9Bzzksqczb61
	OW+CXnsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclGL-0000000BWNY-1uJo;
	Mon, 05 Jan 2026 14:08:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclGI-0000000BWLu-3Hor
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 14:08:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vclGH-0001bQ-7k; Mon, 05 Jan 2026 15:08:45 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vclGH-009BTj-0A;
	Mon, 05 Jan 2026 15:08:45 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vclGG-00CTli-30;
	Mon, 05 Jan 2026 15:08:44 +0100
Date: Mon, 5 Jan 2026 15:08:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aVvF7LW9-lAvPTuZ@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_060846_821074_4DC08FAC 
X-CRM114-Status: GOOD (  13.30  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: barebox-bringup utility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Claude Code struggles to to bring up barebox properly with
labgrid-pytest and running barebox on real hardware with the barebox
integrated pytest infrastructure is also not easy as there are several
assumptions about QEMU in it. I thought letting Claude write a small
python tool to start barebox in QEMU. It turned out to be useful for
interactive usage as well, so here it is:

https://github.com/saschahauer/barebox-bringup

It makes starting barebox as easy as:

barebox-bringup -c ~/test/arm/imx6s-riotboard.yaml
barebox-bringup -c test/arm/virt@multi_v7_defconfig.yaml

It will open a console which captures the barebox output from the start.
The tool has options to capture to a log file and to accept input from a
fifo.

At least with real hardware the closest I could get was:

labgrid-client -c ~/test/arm/imx6s-riotboard.yaml -s barebox console

This loses output though, as the console is only started after barebox
has already started, so I usually had running a permanent console on
another terminal.

Maybe there are ways to improve the barebox pytest or to improve labgrid
itself, but in the meantime somebody might find this useful as well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


