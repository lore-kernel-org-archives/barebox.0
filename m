Delivery-date: Tue, 29 Oct 2024 14:40:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5mSp-002IQ3-08
	for lore@lore.pengutronix.de;
	Tue, 29 Oct 2024 14:40:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5mSp-0007Cs-Mk
	for lore@pengutronix.de; Tue, 29 Oct 2024 14:40:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NLmyC+uSGAtSU1hUbyKuSMKCcHBIuv4tjUm7ekprpOE=; b=jCAjGOpWJD9WG2TpPzEe2uLPuO
	PYXDKsTZYLE6pZ5BhUd/9cssJUH9Bj6/CYOdVGsy3/LHZK2KnzFkc49ARPp1xtOT5GlfXC6jIbu6n
	MCFAvREOltAi49Jo3XPfMGudrP2vExfsf74kaQJOlbUWSnxSbfRTn5odWICpMU8WVcz6XfWUpjwVz
	mVpUWbC7QzjzpMRT/9krFWPz/ErWZzju1MCiqQRPTrgCYbsYcBqnYkt4Qj5lhlkL5XQMzizCo2TUH
	0My3Ir7dzxNuOvU5xFRvJ+aoeyeFE7dpqEJ/ierK/EZeiOMt3LyA62fcN8Ko3zKj0sP0GLtCT0MTg
	3Qtw7TLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5mSE-0000000EbPI-1UgJ;
	Tue, 29 Oct 2024 13:40:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5mLS-0000000EaNg-3Idt
	for barebox@lists.infradead.org;
	Tue, 29 Oct 2024 13:33:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t5mLO-0006Wg-H2; Tue, 29 Oct 2024 14:33:10 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t5mLO-00126z-16;
	Tue, 29 Oct 2024 14:33:10 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t5mLO-002aw2-0p;
	Tue, 29 Oct 2024 14:33:10 +0100
Date: Tue, 29 Oct 2024 14:33:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <ZyDkFmfY5-X52Rmy@pengutronix.de>
References: <20241028-fix-noisy-debug-calls-v1-0-e84ce4272313@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241028-fix-noisy-debug-calls-v1-0-e84ce4272313@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_063314_849316_E066B74D 
X-CRM114-Status: GOOD (  16.12  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] downgrade noisy debug calls in block devices and
 ramfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 28, 2024 at 05:17:00PM +0100, Stefan Kerkmann wrote:
> These two patches are the outcome of an investigation why loading a
> fitimage from an eMMC took nearly 7s - the sheer amount of generated
> debugging messages slowed down the system by a factor of ~21 with
> KConfig options:
> 
> 	CONFIG_COMPILE_LOGLEVEL=7
> 	CONFIG_DEFAULT_LOGLEVEL=6
> 
> Which is the current default combination for barebox.

This is not the default combination. The default is:

CONFIG_COMPILE_LOGLEVEL=6
CONFIG_DEFAULT_LOGLEVEL=7

The rationale is:

Do not compile in debug messages by default (CONFIG_COMPILE_LOGLEVEL=6)
unless DEBUG is defined in a source file. When DEBUG is defined then make
sure the messages are printed (CONFIG_DEFAULT_LOGLEVEL=7).

There are tons of debug messages throughout the code which normally
shouldn't be compiled into the binay.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


