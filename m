Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucaJ-0004lA-7V
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 12:59:32 +0000
Message-ID: <bb8c983ea545d2693d7d68af0df0d70640f31081.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 05 Aug 2019 14:59:30 +0200
In-Reply-To: <1565001478.2323.1.camel@pengutronix.de>
References: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
 <209a8ba450cb170543983cbb0a57be65838e639a.1564997015.git-series.r.czerwinski@pengutronix.de>
 <1565001478.2323.1.camel@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 16/16] boards: nxp-mx8-evk: rework to different boot
 flow
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org

On Mon, 2019-08-05 at 12:37 +0200, Lucas Stach wrote:
> Am Montag, den 05.08.2019, 11:23 +0200 schrieb Rouven Czerwinski:
> >  /*
> >   * Power-on execution flow of start_nxp_imx8mq_evk() might not be
> >   * obvious for a very first read, so here's, hopefully helpful,
> > @@ -75,53 +84,53 @@ static void nxp_imx8mq_evk_sram_setup(void)
> >   * 1. MaskROM uploads PBL into OCRAM and that's where this
> > function is
> >   *    executed for the first time
> >   *
> > - * 2. DDR is initialized and full i.MX image is loaded to the
> > - *    beginning of RAM
> > - *
> > - * 3. start_nxp_imx8mq_evk, now in RAM, is executed again
> > + * 2. DDR is initialized and the TF-A trampoline is installed in
> > the
> > + *    DRAM.
> >   *
> > - * 4. BL31 blob is uploaded to OCRAM and the control is transfer
> > to it
> > + * 3. TF-A is executed and exits into the trampoline in RAM, which
> > enters the
> > + *    PBL for the second time. DRAM setup done is indicated by a
> > one in register
> > + *    x0 by the trampoline
> 
> Why change this and add additional register state here? Checking for
> EL2 should work fine for this.

Correct, I'll gladly remove the register state and use current_el().
This was a leftover from a previous version where the entry function
was called after DRAM setup, but this is clearly no longer needed.


Regards,
Rouven Czerwinski
-- 
Pengutronix e.K.                           |            		 |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
