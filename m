Delivery-date: Thu, 02 Feb 2023 15:22:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNaU0-00BTTu-32
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 15:22:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNaTx-0001oQ-F7
	for lore@pengutronix.de; Thu, 02 Feb 2023 15:22:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xkj+7lqQnrXlX2ixCucT97SweBOsSgFD7heNSgSzLE0=; b=VKx/Z0LqbvF3h11YzbJIpqte+B
	s8EV20N4KI83nJJBC2wOSYS+wJf0pQlxjOj3DsQoNT1wiP2E3VCbAoumQW+9/bZq8coIQyRNHv6qA
	CUasKYJWZ2bjkGSriNCb03TVYmni5yafl3ufqsmyw6LCtaeUVDtJvk0hJv1y22CPnIai1hroiYkmc
	6IJ9xCAHrnTslTCTg56R4KStEJKyJwiI48S+PTaSCsP+6xXYYKzr1NWtJ0nTHKt4jk9rIotT8lxxB
	1hMjfhEHsrMIh5tltnf6RdFRkTSGZGIk7DuP1HzSJ4bxH7RkFYBI6Efo+oZ09yZEExZq2fTlHwkb8
	v3ASvSBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNaSi-00G8LP-KG; Thu, 02 Feb 2023 14:21:16 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146] helo=fx601.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNaSc-00G8Jl-8J
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 14:21:12 +0000
Received: from localhost (fx601.security-mail.net [127.0.0.1])
	by fx601.security-mail.net (Postfix) with ESMTP id C7E23349DE5
	for <barebox@lists.infradead.org>; Thu,  2 Feb 2023 15:21:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1675347665;
	bh=1zK/ZHlqgaydq1WS9/s6YJlf3TxSDpCd+lcUTgoDZDY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=f2aLi3vDzWn3oI7Bh+xK0DGnSfB1z+8f8/oC+Ftt2YYAhqMTjM15dHsHbf3wB3aK1
	 LNehjqUBvFCNDmq0oMY5bqBLeZv0Agh1Z4qw1L7gX1JC+d5Pt3RB1t9IzUyAoUVgrj
	 MK0ayV/DWl0BRkkbdfBWO5f9vhTJiL9e87ue4uio=
Received: from fx601 (fx601.security-mail.net [127.0.0.1]) by
 fx601.security-mail.net (Postfix) with ESMTP id 90FA0349D4D; Thu,  2 Feb
 2023 15:21:05 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx601.security-mail.net (Postfix) with ESMTPS id 9F91D349D08; Thu,  2 Feb
 2023 15:21:04 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 7E2CE27E04D9; Thu,  2 Feb 2023
 15:21:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 64FFC27E04EF; Thu,  2 Feb 2023 15:21:04 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 yEvqgtlnlb3i; Thu,  2 Feb 2023 15:21:04 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 50F8927E04D9; Thu,  2 Feb 2023
 15:21:04 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <b6f.63dbc6d0.9a294.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 64FFC27E04EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1675347664;
 bh=xkj+7lqQnrXlX2ixCucT97SweBOsSgFD7heNSgSzLE0=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=B+9jLrgCtJxewG7ukla4CWemTLYanLX6C/ZyjqhdNOa+zYGz22M2hrM/vzKaoLUeH
 iQqs2kUHBMQn/gTOQ53VdE8+qlNygLjQ1qxXjbHMGIKj7RyykyHRUrcsJfmj+4qZFC
 zZa1LYJtT4SPk7Ba+DjB1973wvCgGvx3MP08QaxU=
Date: Thu, 2 Feb 2023 15:21:03 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <sha@pengutronix.de>
Cc: John Watts <contact@jookia.org>, barebox@lists.infradead.org
Message-ID: <20230202142103.GL4155@tellis.lin.mbt.kalray.eu>
References: <20230126185643.104049-1-contact@jookia.org>
 <20230130102727.GQ13319@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230130102727.GQ13319@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_062110_471309_E3DC6F5F 
X-CRM114-Status: GOOD (  21.76  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi John and Sascha,

On Mon, Jan 30, 2023 at 11:27:27AM +0100, Sascha Hauer wrote:
> On Fri, Jan 27, 2023 at 05:56:43AM +1100, John Watts wrote:
> > udelay isn't provided in the PBL, so use our own definition.
> > 
> > This avoids boards having to define udelay in their code.
> > 
> > Signed-off-by: John Watts <contact@jookia.org>
> > ---
> >  drivers/i2c/busses/i2c-imx-early.c | 9 ++++++++-
> >  1 file changed, 8 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-imx-early.c
> > index 6c8bdc7904..fcf279eff8 100644
> > --- a/drivers/i2c/busses/i2c-imx-early.c
> > +++ b/drivers/i2c/busses/i2c-imx-early.c
> > @@ -90,6 +90,13 @@ static int i2c_fsl_acked(struct fsl_i2c *fsl_i2c)
> >  	return i2c_fsl_poll_status(fsl_i2c, 0, I2SR_RXAK);
> >  }
> >  
> > +static void __udelay(int us)
> > +{
> > +	volatile int i;
> > +
> > +	for (i = 0; i < us * 1000; i++);
> > +}
> 
> This takes around 5 times too long on a i.MX8MM and around 50 times too
> long on a i.MX6Q. This was measured under a regular barebox on the
> shell. In an early environment with MMU disabled it takes 730 times too
> long.
> 
> Maybe we could do this:
> 
> static void __udelay(void *base, int us)
> {
> 	int i;
> 
> 	for (i = 0; i < us * 4; i++)
> 		readb(base);
> }
> 
> The time spent for a register read depends on the bus clock which
> doesn't change that much between the different SoCs.
> 

Some arm devices have an architecture timer, isn't it possible to use
the udelay defined in arch/arm/lib64/pbl.c on i.MX ? I am not very
experienced on ARM cpus, is this only possible on armv7/armv8, and not
on every i.MX SoCs ?

Cheers,
-- Jules






