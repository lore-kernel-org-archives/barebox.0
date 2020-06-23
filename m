Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx011.vodafonemail.xion.oxcs.net ([153.92.174.89])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnkaN-00009M-7V
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 15:11:44 +0000
Date: Tue, 23 Jun 2020 17:11:28 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <245646662.425432.1592925096458@mail.vodafone.de>
In-Reply-To: <CAOMZO5AeTg2afd+xVmNr=GxOM=s7qdzUhMqz2AHpTx_MPGWbPg@mail.gmail.com>
References: <925732743.424285.1592919941556@mail.vodafone.de>
 <CAOMZO5AeTg2afd+xVmNr=GxOM=s7qdzUhMqz2AHpTx_MPGWbPg@mail.gmail.com>
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
Subject: Re: reset / watchdog on an imx7d soc
To: Fabio Estevam <festevam@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Fabio,

thank you for your quick reply.

I've already found the errata you linked in your mail but I had no success
applying the suggestion there; maybe I'm doing it wrong.
Let's take the Option 3 there:

  Use the SNVS LPCR register to turn off the system power

It suggests to set the SNVS_LPCR[TOP] bit together with SNVS_LPCR[DP_EN], this
would mean something like:

# mw -l 0x30370038 0x00000060

But the effect of this write is to hang the soc.

The same happens with the Option 2 in the errata:

   Use SRC_A7RCR0[A7_CORE_POR_RESET0] to reset the ARM A7.

To do this I use:

# mw -l 0x30390004 0x00000003

but again the soc just hangs as with the watchdog.

giorgio

> On June 23, 2020 at 3:53 PM Fabio Estevam <festevam@gmail.com> wrote:
> 
> 
> Hi Giorgio,
> 
> On Tue, Jun 23, 2020 at 10:48 AM Giorgio Dal Molin
> <giorgio.nicole@arcor.de> wrote:
> 
> > Can anyone confirm that the current barebox is able to restart an imx7 soc without
> > using external signals ?
> 
> You really need to use the WDOG_B pin to trigger the reset due to an
> i.MX7 erratum.
> 
> Please check the i.MX7 errata document:
> https://www.nxp.com/docs/en/errata/IMX7DS_3N09P.pdf
> 
> Search for "e10574 Watchdog: A watchdog timeout or software trigger
> will not reset the SOC"
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
