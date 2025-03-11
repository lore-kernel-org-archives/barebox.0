Delivery-date: Tue, 11 Mar 2025 09:15:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trumL-00CbBP-1a
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 09:15:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trumK-000809-BD
	for lore@pengutronix.de; Tue, 11 Mar 2025 09:15:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NUIWbDbBaFnS7vSrPQoXRy+KMm2NpOKRt+7P0iAgIsE=; b=MQG8BOiVaGIW0PMl+udPQmCHh/
	+8zCD5bUkxXREtJczeTJcWsmAVapto46Tuo59zlyi7V/g3Zu4AqWNfe1qCznF9fzNiwgiEOrEw4R0
	znDccdB3v0Wn6rBTukjbI5En1d78otoLmKpgc34aJ4mka6LNF1xpwvWE4SbeKZdcIILIYpxEaOo6G
	SxggvSEkzofPuBpvJM/Si7JWeU0sddEg6lPImCdHF0+qliv5l0GVWwMjN4TWriWdETL6c9xnlK25/
	S8QC7IxPjrteYVqH+r+nn+zju6JAQJZnrxCl5SVi8Aof3ZDLTCx/xUmj734f9ptnkfC0xnrkRz7GF
	H6pcxAlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trulq-00000004ybS-29sC;
	Tue, 11 Mar 2025 08:15:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trujM-00000004y5S-3P8X
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 08:12:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1trujL-0007Wg-En; Tue, 11 Mar 2025 09:12:51 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1trujL-0059C6-0r;
	Tue, 11 Mar 2025 09:12:51 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1trujL-007fzI-0U;
	Tue, 11 Mar 2025 09:12:51 +0100
Date: Tue, 11 Mar 2025 09:12:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <Z8_wg9fWKN4s0vrd@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
 <20250310174058.t3rsxws6syxz2rqp@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250310174058.t3rsxws6syxz2rqp@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_011252_849083_02D9E872 
X-CRM114-Status: GOOD (  19.92  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/13] am625: support secure loading of full barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 10, 2025 at 06:40:58PM +0100, Marco Felsch wrote:
> Hi Sascha,
> 
> On 25-02-28, Sascha Hauer wrote:
> > On K3 SoCs only a small barebox is loaded by the ROM into SRAM. This
> > barebox then loads the full barebox from SD/eMMC or USB DFU. In a secure
> > boot environment the full barebox must be authenticated. This series
> > implements two ways for accomplishing this.
> > 
> > First way is to utilize the ROM API to authenticate images. The other
> > way is to compile a secure hash into the first stage binary and check
> > if the full barebox image matches the hash. Using the ROM API means
> > different first stage and second stage images can be combined whereas
> > hashing binds specific builds together avoiding mix and match attacks.
> 
> before having a closer look on your patchset, do we really want to have
> the 2nd case to be available?

Yes, as explained to avoid mix-and-match attacks.

> If we really want the 2nd case to be
> available we should bound it to CONFIG_INSECURE (if not already done).

Ok, will do.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


