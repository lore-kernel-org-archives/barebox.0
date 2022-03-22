Delivery-date: Tue, 22 Mar 2022 10:25:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWalV-002Op8-4y
	for lore@lore.pengutronix.de; Tue, 22 Mar 2022 10:25:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWalX-00056Y-2H
	for lore@pengutronix.de; Tue, 22 Mar 2022 10:25:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUJW3/DMoY05hWUyOV6IqEiAAENwHvCpcL6sJjsYNws=; b=aWggM5qP69Bc1k
	JH03kPv8xztE4k1Cs8dvqJ7qAnPrWydBMCsctpIX0G+LtJbeesKHq1l2wnLjaw7nvsx7FHMc7XCuU
	2HIubtn69rTw54gOIeOY1ZL4Zafc814b6U9bzv1tI0wekdF77PxR6/YlpwHBRSNv1USAxe02TvqAY
	k4tV7qZ0ootVwJ0zU+xyMmwNo8f9uFp4T+Wpi3onMx2gOJUHMyDQ+/mf8d4zGn9Nrt6iocmr0kAex
	OihOtkcDGtp9JZ2BzCxDoVtkUW5/gLjWVD5cJ5YfDg4XJw8+hb1KShFOXgLyUIILxbbP+5Vn3FipE
	917V+xu/sNziKsupaFuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWak6-00AaMG-1g; Tue, 22 Mar 2022 09:23:54 +0000
Received: from smtpout140.security-mail.net ([85.31.212.143]
 helo=fx403.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWajz-00AaJg-Pj
 for barebox@lists.infradead.org; Tue, 22 Mar 2022 09:23:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx403.security-mail.net (Postfix) with ESMTP id 476C755FCF4
 for <barebox@lists.infradead.org>; Tue, 22 Mar 2022 10:23:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1647941021;
 bh=WVNHsLDE911vjuASviLGR1VPZc0shlecLCRQnw81+oQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=GsqtviMHntGyZXafBAZH7FNav5dLfZegJ8q3Q2CnjpUzWR7vjzUYuwOue5niatZFP
 qjhvpghk9f4F7ltwkD4qQrDPA/8cJmTV0JZpxTM2BF+l/6hhdss1k7tXv2/A2cziMz
 CWph+v9cYq6gX19Ypx2e5VeAd/Qv7bs93KnOzkls=
Received: from fx403 (localhost [127.0.0.1]) by fx403.security-mail.net
 (Postfix) with ESMTP id C39A655FCE6; Tue, 22 Mar 2022 10:23:40 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx403.security-mail.net (Postfix) with ESMTPS id F0A2455FCCC; Tue, 22 Mar
 2022 10:23:39 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id D4C3B27E041A; Tue, 22 Mar 2022
 10:23:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id BB0DB27E0427; Tue, 22 Mar 2022 10:23:39 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 UxDZ8OoRp4qe; Tue, 22 Mar 2022 10:23:39 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id A8CF127E041A; Tue, 22 Mar 2022
 10:23:39 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <b24f.6239959b.efa52.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu BB0DB27E0427
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1647941019;
 bh=or1cB4ZiNqOGo+rj9Oqc7ItxW5ehA7UiZpeGTYsX5ks=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=bopufzlHXPwec0x1QWjS5G6pBN5t+AnV2FFTqWK6I/Vvz8P1VL733SFsH98iEskh+
 NSULJqlhcnKLv4QfQZUUQZb4NipmBjMhpLu54da/Fo3gBoYHHZil1ikbq6UsgUVnZA
 TKnICjNuFH5xmOZQTt8mEjFa7CRU7OwSUEv41HgQ=
Date: Tue, 22 Mar 2022 10:23:38 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>,
 Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220322092338.GB5398@tellis.lin.mbt.kalray.eu>
References: <20201221003251.83042-1-ahmad@a3f.at>
 <20201221003251.83042-2-ahmad@a3f.at>
 <20210106100543.GO19063@pengutronix.de>
 <20220321221717.GJ11246@pengutronix.de>
 <4bbe2758-ff16-6694-8bad-b8df2c254a48@pengutronix.de>
 <20220322081905.GK11246@pengutronix.de>
 <1c74b901-fa87-e922-0f37-e50478ac905b@pengutronix.de>
 <20220322082923.GL11246@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220322082923.GL11246@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_022348_078240_F18CB7D3 
X-CRM114-Status: GOOD (  31.39  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] fixup! usb: dwc2: Add support for optional usb phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

> > > > > > > Until this is settled, swap the order to follow what Linux does.
> > > > > > > This is suboptimal, because it means controller drivers have different
> > > > > > > order of the operations and that you can't combine arbitrary PHYs and
> > > > > > > controllers, but it seems unlikely we will support combinations that
> > > > > > > aren't supported by Linux in the first place anyway.
> > > > > > 
> > > > > > This is valuable information and I don't want it to be lost, so instead
> > > > > > of applying this as a fixup I rewrote the subject to:
> > > > > > 
> > > > > > usb: dwc2: swap order of phy_init and phy_power_on to what Linux does
> > > > > > 
> > > > > > and applied it as a separate patch.
> > > > > 
> > > > > With this patch applied, some stm32mp1 do seem to timeout when
> > > > > addressing the core.
> > > > > 
> > > > > WARNING: dwc2 49000000.usb-otg@49000000.of: dwc2_core_reset: Timeout! Waiting for Core Soft Reset
> > > > > ERROR: dwc2 49000000.usb-otg@49000000.of: probe failed: Connection timed out
> > > > > 
> > > > > When I revert this patch. Everything works fine again.
> > > > > 
> > > > > Is it possible that we can revert it in mainline now?
> > > > 
> > > > Since 0e37f94fbe1b ("phy: stm32: sync with upstream"), the phy-stm32-usbphyc now
> > > > has no poweron/poweroff callbacks, so a revert seems to only slightly change
> > > > timing. I'd suggest you dig some more.
> > > 
> > > That is not true. phy_power_on also enables the phy_regulator. Changing
> > > this order has the effect that the regulator is enabled after or before
> > > phy_init call.
> > 
> > Oh, good point.
> > 
> > > > > How can I reproduce the case this was fixing in the first place?
> > > > 
> > > > The case was that barebox calls poweron/init in a different order than Linux.
> > > > This point is moot now though because poweron is no longer provided by the
> > > > driver.
> > > 
> > > Still not true, though.
> > 
> > Isn't this the same order Linux uses? Powering on regulator and then phy_init?
> > Why does it lead to issues in barebox, but not in Linux?
> 
> I have no clue so far. Especially as this seems to have implications on
> the platform I am working on but not on the dk2. Although both use the
> same st,stpmic1 node vdd_usb for the phy_regulator.

In linux driver dwc2 (and dwc3) call phy_poweron then phy_init, which I
believe is not the right order, it should be init -> poweron.
The thing is that's a two part issue, first the usb drivers using phy
must use the correct call order, secondly the phy drivers must implement
the correct "flow"







_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

