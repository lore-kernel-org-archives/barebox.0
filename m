Delivery-date: Tue, 02 Jan 2024 12:34:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKd26-000Wr8-15
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 12:34:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKd25-0006fk-82
	for lore@pengutronix.de; Tue, 02 Jan 2024 12:34:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AEfwRnkTSCvr+pfLZTbbsTMbqMAPAgVTwRtdlhefv+w=; b=PFCNOVGEJWy7EdS6mdMkc2G/+2
	dEsIPpey/5Wk43AzGGKFHH7SSNe3R1FgqW1OcDJk0vTm14Kvtixg5YPhUub52umvW4cHKrwqx3SAR
	3tnNeCWDW8SX/Fjq+iByeyl5Ihhf98CA7uDzH6tSMKrrFIwq/6yUwmHsXY7x36WOsgWtXY/j7Cwun
	xdXnNozyDeQ4q/a9saSUfn3r7cdJss8GrI93PsBLwNE/XDNYOrh6n+NPdeUVqcsky7ALknQYu8G0E
	xQgreQIB/mzd9Y0tAbxRnI7RQ/k/w31xu40BpR4TrcwEgAl0zDJUUfAvKC3nJCPplYdYZJMJA1YvA
	f13SuCnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKd0s-007j97-2h;
	Tue, 02 Jan 2024 11:32:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKd0p-007j8S-0s
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 11:32:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKd0k-0006Sd-Ee; Tue, 02 Jan 2024 12:32:42 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rKd0i-003AbP-VS; Tue, 02 Jan 2024 12:32:42 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKd0j-009uD9-Vn; Tue, 02 Jan 2024 12:32:41 +0100
Date: Tue, 2 Jan 2024 12:32:41 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20240102113241.GB1318922@pengutronix.de>
References: <20231220104739.10700-1-bst@pengutronix.de>
 <20240102091538.GW1318922@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240102091538.GW1318922@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_033247_328393_61027C6F 
X-CRM114-Status: GOOD (  27.07  )
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
Subject: Re: [PATCH v2] i2c: add pmic_reg_read() for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 02, 2024 at 10:15:38AM +0100, Sascha Hauer wrote:
> On Wed, Dec 20, 2023 at 11:47:39AM +0100, Bastian Krause wrote:
> > Add a common PMIC read function to PBL which allows easy porting of
> > U-Boot's pmic_reg_read() in lowlevel board code.
> > 
> > Signed-off-by: Bastian Krause <bst@pengutronix.de>
> > ---
> > Changes since (implicit) v1:
> > - make function static inline as suggested by Ahmad
> > - change void *buf to u32 *val to resemble's U-Boot's pmic_reg_read() as
> >   suggested by Ahmad
> > ---
> >  include/pbl/pmic.h | 24 ++++++++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> > 
> > diff --git a/include/pbl/pmic.h b/include/pbl/pmic.h
> > index 0f882c5649d..4eeee31d46c 100644
> > --- a/include/pbl/pmic.h
> > +++ b/include/pbl/pmic.h
> > @@ -9,6 +9,30 @@ struct pmic_config {
> >  	u8 val;
> >  };
> >  
> > +static inline void pmic_reg_read(struct pbl_i2c *i2c, int addr, u8 reg, u32 *val)
> 
> I didn't notice there is a v2 when replying to v1, so here again:
> 
> Why not make *val a u8 *?

I renamed this to pmic_reg_read8() and changed the data type to u8 *,
see the patch I just sent.

Sascha

> 
> Sascha
> 
> > +{
> > +	int ret;
> > +	u8 buf[1];
> > +	struct i2c_msg msg[] = {
> > +		{
> > +			.addr = addr,
> > +			.buf = &reg,
> > +			.len = 1,
> > +		}, {
> > +			.addr = addr,
> > +			.flags = I2C_M_RD,
> > +			.buf = buf,
> > +			.len = 1,
> > +		},
> > +	};
> > +
> > +	ret = pbl_i2c_xfer(i2c, msg, ARRAY_SIZE(msg));
> > +	if (ret != ARRAY_SIZE(msg))
> > +		pr_err("Failed to read from pmic@%x: %d\n", addr, ret);
> > +
> > +	*val = buf[0];
> > +}
> > +
> >  static void pmic_reg_write(struct pbl_i2c *i2c, int addr, u8 reg, u8 val)
> >  {
> >  	int ret;
> > -- 
> > 2.39.2
> > 
> > 
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


