Delivery-date: Sat, 18 Dec 2021 14:57:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myaDY-00AbsO-KT
	for lore@lore.pengutronix.de; Sat, 18 Dec 2021 14:57:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myaDU-0002ev-An
	for lore@pengutronix.de; Sat, 18 Dec 2021 14:57:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hLQ/zE8aU87DxmnZZk2u0RLZUekwFA4vjb+cw1XWWas=; b=IXthJj0o8ACk/A
	3rTOadzscdXTslJpW4AJwgYyHd4UQh8yXzKX2TBoSIcRl72k5fc9xxz59BIq6vHRnFB7ZHf4Pnqhy
	QVSLvidwubAvn6rQh/EtZhKp6K1vZPQs6gHQ3hb24lI6Upd1RTT2CItuv/nQY9DYlnWrDpKhdwlG/
	MW5N51DrQS2m5qxLsV2JS/HfD0r9f7z3loLXCaakaSYnuHS7JV12o/OBwpbWCV+H3XUeAjhUA7799
	u1tgEUhFpWphasjsaMBEUlLk9WrEiGjSuAA7gebmWYIPSsCHeXkraB/XR//ivUaci3MXln6pIPjOX
	7Ave3l55XYdjtUNvIJaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myaBe-00DvsE-Je; Sat, 18 Dec 2021 13:55:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myaBZ-00DvrG-K1
 for barebox@lists.infradead.org; Sat, 18 Dec 2021 13:55:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1myaBU-0002XP-9Z; Sat, 18 Dec 2021 14:55:36 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1myaBS-0007dT-IK; Sat, 18 Dec 2021 14:55:34 +0100
Date: Sat, 18 Dec 2021 14:55:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Graichen <michael.graichen@hotmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Message-ID: <20211218135534.GT6003@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
 <95d50bc1-9073-9f69-5237-c7f4bd97b1e6@pengutronix.de>
 <AM9P192MB08700F746095EAC3423BAD019B799@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM9P192MB08700F746095EAC3423BAD019B799@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:39:59 up 7 days, 22:25, 36 users, load average: 1.20, 1.10, 1.09
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211218_055541_686941_C485E06B 
X-CRM114-Status: GOOD (  29.13  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/25] EFI improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Michael,

On Sat, Dec 18, 2021 at 01:07:42PM +0100, Michael Graichen wrote:
> 
> 
> Hey,
> 
> 
> 
> Am 15.12.21 um 12:07 schrieb Ahmad Fatoum:
> > On 13.12.21 22:08, Sascha Hauer wrote:
> > > This series contains several improvements for barebox running on EFI.
> > > Most patches are around the efi-stdio driver in which handling of ansi
> > > escape sequences is greatly improved. With this series efi-stdio is now
> > > able to parse and handle the escape sequences barebox issues itself
> > > properly.
> > > The EFI SNP network driver suffered from packet loss on some machines
> > > because other protocols were polling for packets as well. This is also
> > > fixed with this series.
> > 
> > Very nice. :-)
> > 
> 
> yes, I have just started testing the efi boot methode and these patches on
> one of my computers.
> 
> But how can i change the keyboard layout to QWERTZ (german)? Or where would
> be the right place to implement that?

Neither barebox nor the underlying UEFI imeplements different keyboard
layouts. I think the right place to implement that in barebox would be
in drivers/input/. For that to work the driver for the simple text input
protocol would have to be converted to an input driver. You could also
implement it in drivers/serial/serial_efi.c, but there it would work
only for that single driver, not for USB keyboards.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

