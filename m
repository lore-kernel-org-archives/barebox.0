Delivery-date: Thu, 09 Jun 2022 11:27:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzERR-008cgO-9R
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 11:27:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzERQ-0001gR-2O
	for lore@pengutronix.de; Thu, 09 Jun 2022 11:27:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=buAgCQI7xKMuEF/p1BgEIH+du2kf3HCE+hk/9ffE/CQ=; b=wPlKOA4mhUdt6m
	X5212q7hP33ttBydunPSFjgzeDWRi8/asfzeMu8RqKYpBpjYImQGx1o7XtpnDLPK2qrr/YWuyHvNp
	Ei54QAtI43dHlyYeSmzTSu5Ox9+b5tkVamkqyR8YzVBcYW+wu1JDJ/8OjD+koMB/b2frgRt0RVeeH
	tGbBBIiQ378gzpx5IELEkxbWIjkW1YxItARDFB+1N54T9NaV8sew5Kz44iqNkVgnJAOLzRmLBWTZG
	bs1qCh9aus0EtheGF88Ho14okb5UU/0gWwWBodQH4QNjmMQupcyJiJqd6Nm1o2iWfdBzm1nzyiQM9
	sd5dVGqLN6bwD+RpBjKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzEPw-000df7-5N; Thu, 09 Jun 2022 09:25:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzEPs-000de3-7I
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 09:25:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzEPo-0001Hc-Mu; Thu, 09 Jun 2022 11:25:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzEPo-0004GF-DY; Thu, 09 Jun 2022 11:25:20 +0200
Date: Thu, 9 Jun 2022 11:25:20 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220609092520.GN1615@pengutronix.de>
References: <20220523092526.791716-1-a.fatoum@pengutronix.de>
 <20220523092526.791716-5-a.fatoum@pengutronix.de>
 <20220523110405.GN25578@pengutronix.de>
 <ec148873-3595-2226-2967-d2c0a330d44f@pengutronix.de>
 <20220523112534.GO25578@pengutronix.de>
 <ec9c3122-4001-5841-167b-1385944678dc@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ec9c3122-4001-5841-167b-1385944678dc@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_022524_301947_14AB8F80 
X-CRM114-Status: GOOD (  27.97  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/8] serial: imx: add $global.bootm.earlycon fixup support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 24, 2022 at 09:35:39AM +0200, Ahmad Fatoum wrote:
> On 23.05.22 13:25, Sascha Hauer wrote:
> > On Mon, May 23, 2022 at 01:10:13PM +0200, Ahmad Fatoum wrote:
> >> Hi,
> >>
> >> On 23.05.22 13:04, Sascha Hauer wrote:
> >>> On Mon, May 23, 2022 at 11:25:23AM +0200, Ahmad Fatoum wrote:
> >>>> Allow barebox compute a suitable earlycon parameter.
> >>>>
> >>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >>>> ---
> >>>>  drivers/serial/serial_imx.c | 2 ++
> >>>>  1 file changed, 2 insertions(+)
> >>>>
> >>>> diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
> >>>> index 6a933c930e9b..cf9c3f02a7ef 100644
> >>>> --- a/drivers/serial/serial_imx.c
> >>>> +++ b/drivers/serial/serial_imx.c
> >>>> @@ -234,6 +234,8 @@ static int imx_serial_probe(struct device_d *dev)
> >>>>  	cdev->flush = imx_serial_flush;
> >>>>  	cdev->setbrg = imx_serial_setbaudrate;
> >>>>  	cdev->linux_console_name = "ttymxc";
> >>>> +	cdev->linux_earlycon_name = "ec_imx6q";
> >>>
> >>> "ec_imx6q" sounds wrong for the older i.MX SoCs. I don't know how
> >>> OF_EARLYCON_DECLARE works, but this:
> >>>
> >>> OF_EARLYCON_DECLARE(ec_imx6q, "fsl,imx6q-uart", imx_console_early_setup);
> >>> OF_EARLYCON_DECLARE(ec_imx21, "fsl,imx21-uart", imx_console_early_setup);
> >>>
> >>> looks like it matches a device tree compatible entry. For the older SoCs
> >>> you should likely use "ec_imx21".
> >>
> >> Oh, I can fix this for v2.
> >>
> >>> Anyway, plain "earlycon" just works, why the hassle?
> >>
> >> Not all boards have a DT with stdout-path or probe from device tree.
> >> I ran into this issue three times now (twice DT-enabled boards, but no
> >> stdout-path, once on x86 with no DT) and figured it would be nifty
> >> if barebox could just optionally generate it.
> > 
> > Can't we set the stdout-path property in barebox?
> 
> We could, but that doesn't help on x86.

As you made adding of the command line parameter optional with
$global.bootm.earlycon I guess it's ok. Applied, thanks

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

