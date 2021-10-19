Delivery-date: Tue, 19 Oct 2021 20:52:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mcuDj-0000Q6-5f
	for lore@lore.pengutronix.de; Tue, 19 Oct 2021 20:52:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mcuDh-0007uA-Uy
	for lore@pengutronix.de; Tue, 19 Oct 2021 20:52:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKqS9ke9NMGENSedB+hw8oI57Q19t4yGPToJWpGgHXA=; b=e8oxrnr9aHvEZ+
	InqnidWTZQkd8mu3AxE88VnfB255gIyAVaultRhKCVHpEfpFATB6/DIRbyXzAn7v1RWGt/unXl3mc
	tv31sA+8wAfpeeeDQMc1ogEPfpjZlNNi+HdNF2i5oWl9SsG8l4UL7QPNb1OO1/6UocgUp4bjHfO/0
	Ay+vyG5//Rb2l+PTVdtp1Zr1FpLfHszGUtgHqOyTkt+kUhPjulpKHeFcE0Bf84amzFTqaMBEVRUoA
	JN0CIu6kEbjBHSTLNg19EG6gVlUt/nH7LQhSbCBs1ChD958jtvIFKXh2O3n8p4mLLW9LJIxpfk1Vn
	phSUx7HRynsYfEh9IwQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcuBz-002RgB-FI; Tue, 19 Oct 2021 18:50:31 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcuBt-002Rfo-GV
 for barebox@lists.infradead.org; Tue, 19 Oct 2021 18:50:27 +0000
Received: by mail-lf1-x131.google.com with SMTP id t9so9652509lfd.1
 for <barebox@lists.infradead.org>; Tue, 19 Oct 2021 11:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2o/7T0QLPhFuU4LOjEfu9+BkUwa8KxHbvMcMzfOGVM8=;
 b=MPe2ioRhxtFTqi8+NnJTwDeeNYf6bp6U7IlluPiFfR3poAYhCMPFt7mjD+GzRwAElc
 4Q6IxLk9nAyRf+OzGfFdXsloQCgWFOrQP939L3TBcz6gn7APrQC/ZjPtECVdJwV6gUOW
 as00P0NdCLR8su4l3cSmuL0H4D0m7ahYVYyhVF04/rH626K52nALGAkrY/rIqUt33fWD
 29fA0m7g1vaQDlzQs5/0X+7E4or1tZMp8uj4eS1xVzHuiFGgW9lDvQrwqiM2LP2fwXho
 brGEIocEcZoybJq7gcK6lnEH+GkS1cR5gMF9sokwg4PNi4pk4MWwR38Dz+GqDwlN9WDy
 TLXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2o/7T0QLPhFuU4LOjEfu9+BkUwa8KxHbvMcMzfOGVM8=;
 b=hqXrNJJFGo5nwDBr3vYw4Z1JXlsREtJLGSciv/UrVlAg0tejC1Q6uJPtFNGwyqBszn
 YFlan1HK7PFrMapKssc8llqCWTpHayqNo1aY3jB55zNLC4xQ6o9vSJIgm6NUEo5NhyMI
 8uD9jOkO2cuI8K9WLUGJxQUO/P+n+TNjAfJ9EEPdeSpws1qhVt678jnTheqbGyY6MeNk
 eY6oixA9fBgosJyYOiS2TOb8o3Jw9TS4C71psOwuZR6zeCSyxSFaXFp72KtYrDVo6Dnd
 JKT30Fnrm7lJtgACaOSj3GFqOmO6RRlRE63Yds56EPlNyZ+MqhcAnxhQGOkeXZLRuFEM
 Lg0g==
X-Gm-Message-State: AOAM533aK/z/Q9VJ6aAe7SORInUAH1K3sLOoFMK9TKG6+ckPOKztcNj5
 Mb4C67UfbhgaxWKfrHZUZQ4RHbTaKqcqu8dIaJTJBg==
X-Google-Smtp-Source: ABdhPJz5M/dfvsDgJ1+D2vB9El/LYd+GY3UCIL+CD8BDBPC9H1+NG3zPaHmVLodPcTXvWus4YYatfWb5UBhKTBKzJ6E=
X-Received: by 2002:a05:6512:2203:: with SMTP id
 h3mr7515832lfu.44.1634669419298; 
 Tue, 19 Oct 2021 11:50:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211019102306.31884-1-o.rempel@pengutronix.de>
In-Reply-To: <20211019102306.31884-1-o.rempel@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Tue, 19 Oct 2021 11:50:08 -0700
Message-ID: <CAMHeXxNn+DBLC4ePGUzmT25917uMhe_3i18O_6nu3yYJG-GbQg@mail.gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_115025_800714_B61339FD 
X-CRM114-Status: GOOD (  12.67  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/1] usb: net: Add support for the Realtek
 RTL8152B/RTL8153
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Oct 19, 2021 at 3:24 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> +
> +       buf = malloc(size);
> +       if (!buf)
> +               return -ENOMEM;

Barebox could use xmalloc here.  Ditto for other malloc/return ENOMEM patterns.


> +static int r8152_write_hwaddr(struct eth_device *edev, const unsigned char *adr)
> +{
> +       struct r8152 *tp = edev->priv;
> +       u8 tmp_addr[ETH_ALEN];
> +
> +       memcpy(tmp_addr, adr, ETH_ALEN);
> +
> +       debug("** %s (%d)\n", __func__, __LINE__);
> +
> +       ocp_write_byte(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_CONFIG);
> +       pla_ocp_write(tp, PLA_IDR, BYTE_EN_SIX_BYTES, 8, tmp_addr);

This writes 8 bytes from a buffer of 6 bytes.  It doesn't seem like
the temp buffer is even necessary.

> +/* Generic MII registers. */
> +#define MII_BMCR                0x00    /* Basic mode control register */
> +#define MII_BMSR                0x01    /* Basic mode status register  */
> +#define MII_PHYSID1             0x02    /* PHYS ID 1                   */
> +#define MII_PHYSID2             0x03    /* PHYS ID 2                   */
> +#define MII_ADVERTISE           0x04    /* Advertisement control reg   */
> +#define MII_LPA                 0x05    /* Link partner ability reg    */
> +#define MII_EXPANSION           0x06    /* Expansion register          */
> +#define MII_CTRL1000            0x09    /* 1000BASE-T control          */
> +#define MII_STAT1000            0x0a    /* 1000BASE-T status           */
> +#define MII_MMD_CTRL            0x0d    /* MMD Access Control Register */
> +#define MII_MMD_DATA            0x0e    /* MMD Access Data Register */
> +#define MII_ESTATUS             0x0f    /* Extended Status             */
> +#define MII_DCOUNTER            0x12    /* Disconnect counter          */
> +#define MII_FCSCOUNTER          0x13    /* False carrier counter       */
> +#define MII_NWAYTEST            0x14    /* N-way auto-neg test reg     */
> +#define MII_RERRCOUNTER         0x15    /* Receive error counter       */
> +#define MII_SREVISION           0x16    /* Silicon revision            */
> +#define MII_RESV1               0x17    /* Reserved...                 */
> +#define MII_LBRERROR            0x18    /* Lpback, rx, bypass error    */
> +#define MII_PHYADDR             0x19    /* PHY address                 */
> +#define MII_RESV2               0x1a    /* Reserved...                 */
> +#define MII_TPISTATUS           0x1b    /* TPI status for 10mbps       */
> +#define MII_NCONFIG             0x1c    /* Network interface config    */

These are defined already in linux/mii.h

> +
> +static u8 r8152b_pla_patch_a[] = {

Surely all these firmware images can be const too.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

