Delivery-date: Wed, 20 Oct 2021 08:20:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1md4xF-0001Sd-Kr
	for lore@lore.pengutronix.de; Wed, 20 Oct 2021 08:20:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1md4xE-0000wK-LB
	for lore@pengutronix.de; Wed, 20 Oct 2021 08:20:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ne0BGS/D0ulExIM+LhZW0vwp4czNqRXLLWt9JldkyIk=; b=VuUO2eMjPIKwIq
	rc8SZX9E0vjddTT3ACcb/9SpdgHxSCZphgjbHnCXAb80JYMhPjJShodM6AeGKDXqMwSJyHLJKpqtH
	6+/8DRCVLNAAvjh9m1B4HIUh+x3kwU47QlW8HU4ZfrGQypAA9CeK5XToxgYyNJpLePFpQ//TtnCU5
	JY4wPW2GIJtQFbChsFVTpLZOnq8NZ8arDiX0+y5bHUL0EJ9LZYNK8HXKgTaZYWcGw2ZU5ghNbQIfA
	QE760uCjqoWiATaRDY/l7OdBRwNjx3QnTXcWbPS7zjwOABrEyEPqjcE0EPupoZzpd8RRKl3gpUEM+
	Hk7zWlbpjK6s89Odquyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md4vR-003T4U-QO; Wed, 20 Oct 2021 06:18:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md4vM-003T3v-AE
 for barebox@lists.infradead.org; Wed, 20 Oct 2021 06:18:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1md4vK-0000lb-UK; Wed, 20 Oct 2021 08:18:02 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1md4vK-0003Zz-A3; Wed, 20 Oct 2021 08:18:02 +0200
Date: Wed, 20 Oct 2021 08:18:02 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211020061802.GF16320@pengutronix.de>
References: <20211019102306.31884-1-o.rempel@pengutronix.de>
 <CAMHeXxNn+DBLC4ePGUzmT25917uMhe_3i18O_6nu3yYJG-GbQg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxNn+DBLC4ePGUzmT25917uMhe_3i18O_6nu3yYJG-GbQg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:50:44 up 244 days,  9:14, 116 users,  load average: 0.22, 0.16,
 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_231804_382188_0CB77B02 
X-CRM114-Status: GOOD (  24.96  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/1] usb: net: Add support for the Realtek
 RTL8152B/RTL8153
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Trent,

Thank you for the review.

On Tue, Oct 19, 2021 at 11:50:08AM -0700, Trent Piepho wrote:
> On Tue, Oct 19, 2021 at 3:24 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > +
> > +       buf = malloc(size);
> > +       if (!buf)
> > +               return -ENOMEM;
> 
> Barebox could use xmalloc here.  Ditto for other malloc/return ENOMEM patterns.

done.

> > +static int r8152_write_hwaddr(struct eth_device *edev, const unsigned char *adr)
> > +{
> > +       struct r8152 *tp = edev->priv;
> > +       u8 tmp_addr[ETH_ALEN];
> > +
> > +       memcpy(tmp_addr, adr, ETH_ALEN);
> > +
> > +       debug("** %s (%d)\n", __func__, __LINE__);
> > +
> > +       ocp_write_byte(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_CONFIG);
> > +       pla_ocp_write(tp, PLA_IDR, BYTE_EN_SIX_BYTES, 8, tmp_addr);
> 
> This writes 8 bytes from a buffer of 6 bytes.

Ack, done.

> It doesn't seem like the temp buffer is even necessary.

it was const conversion. Now I converted complete write chain to const.

> > +/* Generic MII registers. */
> > +#define MII_BMCR                0x00    /* Basic mode control register */
> > +#define MII_BMSR                0x01    /* Basic mode status register  */
> > +#define MII_PHYSID1             0x02    /* PHYS ID 1                   */
> > +#define MII_PHYSID2             0x03    /* PHYS ID 2                   */
> > +#define MII_ADVERTISE           0x04    /* Advertisement control reg   */
> > +#define MII_LPA                 0x05    /* Link partner ability reg    */
> > +#define MII_EXPANSION           0x06    /* Expansion register          */
> > +#define MII_CTRL1000            0x09    /* 1000BASE-T control          */
> > +#define MII_STAT1000            0x0a    /* 1000BASE-T status           */
> > +#define MII_MMD_CTRL            0x0d    /* MMD Access Control Register */
> > +#define MII_MMD_DATA            0x0e    /* MMD Access Data Register */
> > +#define MII_ESTATUS             0x0f    /* Extended Status             */
> > +#define MII_DCOUNTER            0x12    /* Disconnect counter          */
> > +#define MII_FCSCOUNTER          0x13    /* False carrier counter       */
> > +#define MII_NWAYTEST            0x14    /* N-way auto-neg test reg     */
> > +#define MII_RERRCOUNTER         0x15    /* Receive error counter       */
> > +#define MII_SREVISION           0x16    /* Silicon revision            */
> > +#define MII_RESV1               0x17    /* Reserved...                 */
> > +#define MII_LBRERROR            0x18    /* Lpback, rx, bypass error    */
> > +#define MII_PHYADDR             0x19    /* PHY address                 */
> > +#define MII_RESV2               0x1a    /* Reserved...                 */
> > +#define MII_TPISTATUS           0x1b    /* TPI status for 10mbps       */
> > +#define MII_NCONFIG             0x1c    /* Network interface config    */
> 
> These are defined already in linux/mii.h

done

> > +
> > +static u8 r8152b_pla_patch_a[] = {
> 
> Surely all these firmware images can be const too.
> 

done

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

