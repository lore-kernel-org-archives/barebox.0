Delivery-date: Fri, 06 Mar 2026 11:50:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vySlc-008eRN-0C
	for lore@lore.pengutronix.de;
	Fri, 06 Mar 2026 11:50:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vySlc-0003SO-DT
	for lore@pengutronix.de; Fri, 06 Mar 2026 11:50:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=br2vjeNwHMS0gu7DbOTqOmG6T0nl0lwKmTfbIK+mHOA=; b=niKcXwRp2soBX0vL3tkV9OcPDa
	jgT0G2rXPFRS4WCITLmRreM+JGqvhjZgdokaU5khwLLwXLjesrivNAGHv2shC28c49yaHcC5pQWFt
	nfOG/ej0S9Oi9LaE+x/hUSjpurv3fsy8yywJ6Ul6D7/5Z0zJIFxSj5yFz0UYVW+QCQDyiHEglQ0w1
	eqXz0j207Uj8eZ7bbD9KKIYuCY3pYJX8a0y4BgdYztc/hDLon8sgSkgheBgbn0ctVMNmtPrpiJtpJ
	JudIKZ8z+TMEuKNPBu5EQyX62HKsK86cFRYBCXn3IyCdVzjrBlb25+YRNGOQhFeNvoQ0N1IU6cIga
	fkiEqkkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySlC-00000003VV7-2zEh;
	Fri, 06 Mar 2026 10:50:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySl9-00000003VUd-3CI1
	for barebox@lists.infradead.org;
	Fri, 06 Mar 2026 10:50:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vySl8-0003LD-48; Fri, 06 Mar 2026 11:50:18 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vySl6-0042HZ-1s;
	Fri, 06 Mar 2026 11:50:17 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1vySl7-00000004ASu-3Wcs;
	Fri, 06 Mar 2026 11:50:17 +0100
Date: Fri, 6 Mar 2026 11:50:17 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <47lsia2feh4myvtr3nyxiwmkye7vufp4jaodm4nwbxtx5muje5@f77kdjdibms2>
References: <20260306103812.1330722-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260306103812.1330722-1-u.oelmann@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_025019_982599_C2CAAEA8 
X-CRM114-Status: UNSURE (   6.70  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i.MX: hab: always lock SRK hash after fusing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-03-06, Ulrich Ölmann wrote:
> The flag IMX_SRK_HASH_WRITE_LOCK has been present since the introduction of
> barebox' hab command in [1], but only got its first user recently. Keeping SRK
> hash locking optional is dangerous though: after programming the SRK hash,
> leaving it writable allows later manipulations which can render a device
> unbootable.
> 
> Make SRK hash programming always burn the corresponding lock fuses on all
> supported i.MX variants (IIM/OCOTP), and remove IMX_SRK_HASH_WRITE_LOCK.
> 
> [1] 9dc622d5622c ("i.MX: hab: Add HAB fusebox related convenience functions / command")
> 
> Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


