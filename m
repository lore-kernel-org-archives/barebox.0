Delivery-date: Fri, 14 Jan 2022 18:12:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Q80-002ESW-BE
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 18:12:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Q7y-0007Hx-UE
	for lore@pengutronix.de; Fri, 14 Jan 2022 18:12:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnVrVwQh2ihXC/KtMXTREikoOn3dGNls6BXgUoQahHA=; b=Xs2Tk3Stz6Koku
	C5WkiKOghmUEoqyOMKVeufEVtnpu3AyfUyUar05S65RnEYg6LqvGvuGp+lJyk0ZnNLAxGIS+9eydX
	BoDgnWHd/rtpUwCqmlWgSaOfyq3COIAeg86NVTX1ame/0Wp1l/cj96sgClIA36bPU0irk6itTZDy5
	UV18wosf2XZ+UzIHg23ith4FCkwygo2ZD75TdaLyRToDzZUROyU8seSYMnbsIiLun/rdlMtjF6y6A
	GFIdmfc0vNi4zULpANN7RHvgcFDcH07zb6wVMfK8NZe/flEVjmYBdhB5MvLuaS95vNPAa4TrnL/ZW
	jV8RJFeGL9RTKzmAbERA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Q6l-009ubC-2d; Fri, 14 Jan 2022 17:11:23 +0000
Received: from mxout.security-mail.net ([85.31.212.48]
 helo=fx304.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Q6f-009uai-Ud
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 17:11:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id 5D49F6278E
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 18:11:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642180273;
 bh=+YuXD6sEjyKwdSMELe5ywmMUtfPGIQ7dmDPm1ZdWFZk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=KAfgLz4SwGdTLoeognSuKgVrDw8a/RtTf5+cQai282y8a34SpVh7gAWMxYFv1W01I
 QTIAzj0BOYA9Hc4KYCraKme/DJ19uvDmn4LB+QW+IPZiTtOtDjbK8z4g4hoRAaMnpu
 rK7ucYEZ1oYclbkDoRWg8fCsfkvcV1BZymVo41DU=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id 068DE62756; Fri, 14 Jan 2022 18:11:13 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx304.security-mail.net (Postfix) with ESMTPS id A2A216274D; Fri, 14 Jan
 2022 18:11:12 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 8804127E03A2; Fri, 14 Jan 2022
 18:11:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 70F2F27E034A; Fri, 14 Jan 2022 18:11:12 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 xjwHlBuXKjEA; Fri, 14 Jan 2022 18:11:12 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 5289127E0341; Fri, 14 Jan 2022
 18:11:12 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <5ed6.61e1aeb0.a1f52.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 70F2F27E034A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642180272;
 bh=YzC66Zc4RsHgTDyeDfKvmMUcUJzDdXL8GnOwG0AQSBQ=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=km5opWsKUp/juF7VsrXJ79nsJtsZk3GQ3Yi6yJI1j4ZM6G9pR6sO12U+5Ty56VK5F
 +h9HXRHvRc/mxj3vwox654cy62KiQpZ1brT98453/a81vsJl1/v//nqcfCh/lUkMpp
 1yRrMVajka9VGnFHnAMIdt2CRmt6rB+QTCBm/KGU=
Date: Fri, 14 Jan 2022 18:11:11 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>, Yann
 Sionneau <ysionneau@kalray.eu>, Clement Leger <cleger@kalray.eu>
Message-ID: <20220114171111.GC29876@tellis.lin.mbt.kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
 <20220114165456.10542-1-jmaselbas@kalray.eu>
 <f99cfd5d-f477-4564-c5e3-dac889b5c8b3@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f99cfd5d-f477-4564-c5e3-dac889b5c8b3@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_091118_293252_47EB7F70 
X-CRM114-Status: GOOD (  18.96  )
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
Subject: Re: [PATCH 10/13] drivers: add soc hierarchy properly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 14, 2022 at 06:06:34PM +0100, Ahmad Fatoum wrote:
> Hello Jules,
> 
> On 14.01.22 17:54, Jules Maselbas wrote:
> > From: Clement Leger <cleger@kalray.eu>
> > 
> > We will add kvx driver in this folder to create a proper hierarchy.
> 
> This won't apply cleanly. You need to rebase.
On master ? Or should I wait for 2022.01.0 ?
> 
> > 
> > Signed-off-by: Clement Leger <cleger@kalray.eu>
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> > ---
> >  drivers/Kconfig     | 2 +-
> >  drivers/soc/Kconfig | 5 +++++
> >  2 files changed, 6 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/soc/Kconfig
> > 
> > diff --git a/drivers/Kconfig b/drivers/Kconfig
> > index dbdf3c06f5..d66714af9a 100644
> > --- a/drivers/Kconfig
> > +++ b/drivers/Kconfig
> > @@ -42,7 +42,7 @@ source "drivers/fpga/Kconfig"
> >  source "drivers/phy/Kconfig"
> >  source "drivers/crypto/Kconfig"
> >  source "drivers/memory/Kconfig"
> > -source "drivers/soc/imx/Kconfig"
> > +source "drivers/soc/Kconfig"
> >  source "drivers/nvme/Kconfig"
> >  source "drivers/ddr/Kconfig"
> >  source "drivers/power/Kconfig"
> > diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
> > new file mode 100644
> > index 0000000000..d78f13f3f8
> > --- /dev/null
> > +++ b/drivers/soc/Kconfig
> > @@ -0,0 +1,5 @@
> > +menu "SoC drivers"
> > +
> > +source "drivers/soc/imx/Kconfig"
> > +
> > +endmenu
> > 
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 
> To declare a filtering error, please use the following link : https://www.security-mail.net/reporter.php?mid=9c47.61e1ad9d.ae4c.0&r=jmaselbas%40kalray.eu&s=a.fatoum%40pengutronix.de&o=Re%3A+%5BPATCH+10%2F13%5D+drivers%3A+add+soc+hierarchy+properly&verdict=C&c=835ed3aa69d359c0f8acda9912ca30b77899cc91
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

