Delivery-date: Tue, 02 Jan 2024 10:13:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKapk-000P1v-19
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 10:13:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKapj-0007za-9g
	for lore@pengutronix.de; Tue, 02 Jan 2024 10:13:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UhTvdv28Rr2JNjNTm8h340sGJ+asyo3p+PT+JwUwpFc=; b=RUQnMEKs6u4WYvXoR7glx+cYex
	szj9ESZVkiS+zOBmLdQaLPI0/vdIde3SuMXe8wVl7Olxoo4mLdU5PFr2oLvoDKorj2u+3gMRwv0Kl
	TUxvlyIon5CuxXN7z4hFl7Fc9BCfcgIKLqief04UUyP9gzPde0kjSUzLdznZIpPrLWy8JPJKXQVhD
	j9qUwUeVs6iSr40KxoSIveD7wl5M9YR5Ymduk8Itn+bcN4RnI+N+UqOqAKBqkszC1lqsB7KmcyyfN
	l5HBpEo6/FD06YGHWor9Lo3+vMPw6MCIzSoU1HdkVrmppg0yToTNaQauHuBXHIArkADq5Bf51JTuN
	uJjPaMdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKaob-007PvE-1U;
	Tue, 02 Jan 2024 09:12:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKaoY-007PuE-2m
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 09:12:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKaoX-0007pd-ET; Tue, 02 Jan 2024 10:11:57 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rKaoV-0039K8-Us; Tue, 02 Jan 2024 10:11:57 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKaoW-009tNN-VZ; Tue, 02 Jan 2024 10:11:56 +0100
Date: Tue, 2 Jan 2024 10:11:56 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20240102091156.GV1318922@pengutronix.de>
References: <20231219161135.1388398-1-bst@pengutronix.de>
 <aec171fa-98b8-4dcd-9594-36175a66c072@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aec171fa-98b8-4dcd-9594-36175a66c072@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_011158_903330_814DF44F 
X-CRM114-Status: GOOD (  28.30  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] i2c: add pmic_reg_read() for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Dec 19, 2023 at 05:21:35PM +0100, Ahmad Fatoum wrote:
> Hello Bastian,
> 
> On 19.12.23 17:11, Bastian Krause wrote:
> > Add a common PMIC read function to PBL which allows easy porting of
> > U-Boot's pmic_reg_read() in lowlevel board code.
> > 
> > Signed-off-by: Bastian Krause <bst@pengutronix.de>
> > ---
> >  include/pbl/pmic.h | 21 +++++++++++++++++++++
> >  1 file changed, 21 insertions(+)
> > 
> > diff --git a/include/pbl/pmic.h b/include/pbl/pmic.h
> > index 0f882c5649d..bd0583370ec 100644
> > --- a/include/pbl/pmic.h
> > +++ b/include/pbl/pmic.h
> > @@ -9,6 +9,27 @@ struct pmic_config {
> >  	u8 val;
> >  };
> >  
> > +static void pmic_reg_read(struct pbl_i2c *i2c, int addr, u8 reg, void *buf)
> 
> This should be static inline to avoid warnings for boards that don't use it.
> 
> > +{
> > +	int ret;
> > +	struct i2c_msg msg[] = {
> > +		{
> > +			.addr = addr,
> > +			.buf = &reg,
> > +			.len = 1,
> > +		}, {
> > +			.addr = addr,
> > +			.flags = I2C_M_RD,
> > +			.buf = buf,
> 
> U-Boot has buf of type u32 *. In your barebox implementation, only the
> first byte is written, so this leaves 3 bytes potentially uninitialized.
> 
> You likely want to change void *buf to u32 *val and then
> 
>   u8 buf[1];
>   /* i2c_xfer... */
>   *val = buf[0];

When *buf is assumed to be a single byte only anyway then we can change
its type to u8 *

Sascha

> 
> > +			.len = 1,
> > +		},
> > +	};
> > +
> > +	ret = pbl_i2c_xfer(i2c, msg, ARRAY_SIZE(msg));
> > +	if (ret != ARRAY_SIZE(msg))
> > +		pr_err("Failed to read from pmic@%x: %d\n", addr, ret);
> > +}
> 
> Cheers,
> Ahmad
> 
> > +
> >  static void pmic_reg_write(struct pbl_i2c *i2c, int addr, u8 reg, u8 val)
> >  {
> >  	int ret;
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


