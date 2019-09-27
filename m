Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDjz8-000363-RH
 for barebox@lists.infradead.org; Fri, 27 Sep 2019 06:44:12 +0000
Date: Fri, 27 Sep 2019 08:44:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190927064405.lfcibvom2xo3awy6@pengutronix.de>
References: <MN2PR16MB3117C56576A8FB7A258431B691870@MN2PR16MB3117.namprd16.prod.outlook.com>
 <20190926064116.aix5mx2fwtbqyrzc@pengutronix.de>
 <MN2PR16MB3117311DB17F1F18B283BCE391860@MN2PR16MB3117.namprd16.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR16MB3117311DB17F1F18B283BCE391860@MN2PR16MB3117.namprd16.prod.outlook.com>
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
Subject: Re: barebox 2019.07 ubiformat
To: "Barbier, Renaud" <renaud.barbier@abaco.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Sep 26, 2019 at 02:15:57PM +0000, Barbier, Renaud wrote:
> My apology, I used a model (DX1014) that we have not upstream to your repository.
> It is based on the Freescale P1014 unlike the DA923RC (MPC8544). More answer below
> Including both the DA923RC and DX1014.
> 
> 
> 
> > >
> > > Using the version from2016.07, the NOR boot partition can be formatted (FIT
> > image) and NAND (file system) and the system boots.
> > > When using the barebox 2019-07, both storage can be formatted but when
> > booting (Linux 4.16 or 5.2) I get:
> > 
> > There is no driver for this NAND controller upstream, I assume you have
> > it in your tree, right? 
> [Barbier, Renaud] 
> Correct. The NAND driver has not been upstream for the DA923RC.
> I have now used the DA923RC to do the same test.
> 
> With barebox from 2016.07, ubiformat gives me:
> OWBOOT> / addpart -n /dev/ram0 77070336@0x10000(image)
> OWBOOT> / ls /dev/nand0
> /dev/nand0
> OWBOOT> / ubiformat -q -y /dev/nand0 -f /dev/image
> OWBOOT> /
> 
> With 2019.07, ubiformat gives:
> OWBOOT> / ubiformat -y -q /dev/nand0 -f /dev/image
> ubi1: detaching mtd0 from ubi1
> ubi1: removing nand0.ubi
> ubi1: mtd0 is detached
> nand0: error -74 (ECC error) while reading 64 bytes from PEB 14:0
> nand0: error -74 (ECC error) while reading 64 bytes from PEB 15:0
> nand0: error -74 (ECC error) while reading 64 bytes from PEB 21:0
> nand0: error -74 (ECC error) while reading 64 bytes from PEB 21:512

Not all blocks seem to be unreadable. Have you looked into subpage
reads? subpage reads have been enabled in 18ea738 ("mtd: nand: Enable
subpage reads"), but on the other hand that commit is already included
in 2016.07. Anyway, maybe the old barebox doesn't do subpage reads for
some reason.
What ECC are you using, software or hardware? Is it still the same in
the new barebox or are you maybe ending up with some other ECC scheme?

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
