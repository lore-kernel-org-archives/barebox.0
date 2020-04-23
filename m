Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVzL-00052K-2P
 for barebox@lists.infradead.org; Thu, 23 Apr 2020 07:09:36 +0000
Message-ID: <2ad08a5a05d26662ea7a713d029fe5c11abd29f9.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 23 Apr 2020 09:09:32 +0200
In-Reply-To: <20200423070836.GZ1694@pengutronix.de>
References: <20200422114407.10351-1-a.schwarzkopf@phytec.de>
 <6eaa50e7572c732d554bae666de68f6305e4437f.camel@pengutronix.de>
 <20200423070836.GZ1694@pengutronix.de>
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
Subject: Re: [PATCH] mach-imx: hab: Unlock CAAM MID for OP-TEE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Albert Schwarzkopf <a.schwarzkopf@phytec.de>, barebox@lists.infradead.org

On Thu, 2020-04-23 at 09:08 +0200, Sascha Hauer wrote:
> On Wed, Apr 22, 2020 at 02:34:20PM +0200, Rouven Czerwinski wrote:
> > Hi,
> > 
> > On Wed, 2020-04-22 at 13:44 +0200, Albert Schwarzkopf wrote:
> > > The current CSF config used by barebox does not allow a
> > > successful
> > > bootup of OP-TEE within a closed HAB configuration. As specified
> > > in section 2.1 of the application notes [1], OP-TEE requires that
> > > the "UNLOCK MID" HAB command is present in the CSF file for
> > > this case.
> > > 
> > > This patch adds the mentioned command if support for OP-TEE is
> > > enabled in the configuration. It's based on the discussion
> > > in [2].
> > > 
> > > [1] https://www.nxp.com/docs/en/application-note/AN12056.pdf
> > > [2] https://github.com/OP-TEE/optee_os/issues/3609
> > > 
> > > Signed-off-by: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
> > > ---
> > >  arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > > 
> > > diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
> > > b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
> > > index 581887960..0e6c7e2dd 100644
> > > --- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
> > > +++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
> > > @@ -29,7 +29,11 @@ hab [Authenticate CSF]
> > >  
> > >  hab [Unlock]
> > >  hab Engine = CAAM
> > > +#if defined(CONFIG_BOOTM_OPTEE) || defined(CONFIG_PBL_OPTEE)
> > > +hab Features = MID,RNG
> > > +#else
> > >  hab Features = RNG
> > > +#endif
> > 
> > I don't see any reason to not unlock the MID settings in a secure
> > configuration without OP-TEE. MID Setup only really makes sense if
> > normal and secure world require different access policies to the
> > CAAM,
> > which isn't the case if only linux is run in the secure world.
> > AFAIK unlocked MID should not prevent Linux from working correctly
> > with
> > the CAAM even if no OP-TEE is present, although I have not
> > specifically
> > tested this case.
> 
> Are you suggesting to drop the #ifdef and do a "hab Features =
> MID,RNG"
> unconditionally?

Yes.

- Rouven


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
