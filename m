Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJHtd-0002ns-3A
 for barebox@lists.infradead.org; Tue, 10 Sep 2013 06:57:57 +0000
Date: Tue, 10 Sep 2013 08:57:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130910065734.GB30088@pengutronix.de>
References: <1378387880-3844-1-git-send-email-list-09_barebox@tqsc.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1378387880-3844-1-git-send-email-list-09_barebox@tqsc.de>
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
Subject: Re: [PATCH / RFC] MCI: imx-esdhc: implement workaround for errata
 ENGcm12360
To: Markus Niebel <list-09_barebox@tqsc.de>
Cc: barebox@lists.infradead.org, Markus Niebel <Markus.Niebel@tqs.de>

Hi Markus,

On Thu, Sep 05, 2013 at 03:31:20PM +0200, Markus Niebel wrote:
> From: Markus Niebel <Markus.Niebel@tqs.de>
> 
> Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>
> 
> At least i.MX53 has errata ENGcm12360:
> 
> Occurs when a pending command which issues busy is completed.
> For a command with R1b response, the proper software sequence
> is to poll the DLA for R1b commands to determine busy
> state completion. The DLA polling is not working properly for
> the ESDHC module. This is relevant for all eSDHC ports (eSDHC1-4 ports)
> 
> DLA bit in PRSSTAT register cannot be
> polled to wait for busy state completion.
> 
> Updated block guide to reflect that DLA is not applicable to detect
> busy state, instead, should poll bit 24 in PRSSTAT register (DLSL[0] bit)
> to check that wait busy state is over.

I'll give it a try in the -next branch. The patch looks as if it is safe
on other SoCs, but let's see.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
