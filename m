Delivery-date: Wed, 31 Aug 2022 08:41:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTHQ2-002QjG-Oi
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 08:41:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTHQ1-00081O-Ju
	for lore@pengutronix.de; Wed, 31 Aug 2022 08:41:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T2FARnycKKbHXBCNnxN2NWBlC2RZfRFeXM9VqNDZSzk=; b=pTceHXyynL6TXgQxSkZ6dcnYgy
	iwRjJ3hhevOA6imoBF7wnFRwoQFf2bRHecSoC4WMnHVRWHozwV+8SCWxVtQecBgrOo+SqOC+AsgEV
	kjQv4NC8FixIBqhQK9l6DiGAKyz1OddODXjtpB0Xvxpm8nQ12BDEnE695LDh249oYyPAj2LYuMnNE
	ugOv6X+rcYy6zim96B42Qe3AfiVq/GJS//0lQ4pByx8nZ2q8KiTtgOLSkgVbBmUWxPRFI/SlHX2x3
	TuUjCKI1lViD1CtmSMrTkcaXYmwbKMdaQ7l7HKuRdKYMT//C+cPR6U4eRgTb4qYipqdi00IUEsDMw
	+0mFWahw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTHOb-004LxS-89; Wed, 31 Aug 2022 06:40:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTHOV-004Lvl-Qp
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 06:40:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTHOT-0007iM-TU; Wed, 31 Aug 2022 08:40:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTHOT-0005y0-BP; Wed, 31 Aug 2022 08:40:09 +0200
Date: Wed, 31 Aug 2022 08:40:09 +0200
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220831064009.GJ24324@pengutronix.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_234011_882530_447A8661 
X-CRM114-Status: GOOD (  19.37  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4 00/21] add "windowsize" (RFC 7440) support for tftp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 30, 2022 at 09:37:55AM +0200, Enrico Scholz wrote:
> The tftp "windowsize" greatly improves the performance of tftp
> transfers.  This patchset adds support for it.
> 
> The first two patches are a little bit unrelated and enhance the 'cp
> -v' output by giving information about the transfer speed.  They can
> be dropped if they are unwanted.
> 
> I tested the function with an iMX8MP platform in three environments:
> 
>   - at home over OpenVPN on an ADSL 50 line  -->  27x speedup
>   - 1 Gb/s connection --> 9x speedup
>   - connection over 100 Mb/s switch  -->  4x speedup
> 
> In the test, I downloaded variable sized files which were filled from
> /dev/urandom.  E.g.
> 
> | :/ global tftp.windowsize=128
> | :/ cp -v /mnt/tftp/data-100MiB /tmp/data && sha1sum /tmp/data
> |         [################################################################] 104857600 bytes, 98550375 bytes/s
> 
> For slow connection speeds, smaller files (1MiB, 4 MiB + 20 MiB) were
> used.

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


