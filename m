Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr740130.outbound.protection.outlook.com
 ([40.107.74.130] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLTMn-000675-R0
 for barebox@lists.infradead.org; Fri, 18 Oct 2019 14:36:35 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Fri, 18 Oct 2019 14:36:31 +0000
Message-ID: <MN2PR16MB311759D0859AB61BC1977E99916C0@MN2PR16MB3117.namprd16.prod.outlook.com>
References: <MN2PR16MB3117C56576A8FB7A258431B691870@MN2PR16MB3117.namprd16.prod.outlook.com>
 <20190926064116.aix5mx2fwtbqyrzc@pengutronix.de>
 <MN2PR16MB3117311DB17F1F18B283BCE391860@MN2PR16MB3117.namprd16.prod.outlook.com>
 <20190927064405.lfcibvom2xo3awy6@pengutronix.de>
 <MN2PR16MB311733CE9E54B05E89F0090291810@MN2PR16MB3117.namprd16.prod.outlook.com>
In-Reply-To: <MN2PR16MB311733CE9E54B05E89F0090291810@MN2PR16MB3117.namprd16.prod.outlook.com>
Content-Language: en-US
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
Subject: RE: barebox 2019.07 ubiformat
To: "Barbier, Renaud" <renaud.barbier@abaco.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Back from holidays

I have not been able to repeat the issue on the upstream DA923RC. It  is now booting after  ubiformatting using v2019.07.

Looking back in my commit history I found that in 2016.03 I replaced the barebox nand_ecc by the Linux nand_ecc file to work around this issue on ourP1014 platforms.

While debugging using the barebox nand_ecc, I  applied patched found in U-boot. This did not solve the problem.
Our NAND uses 512 bytes for ecc size. The barebox eccsize is hard-coded to 256. Even setting to 512 did not help. 

Should the nand_calculate_ecc algorithm be different for a 512 bytes size?

> -----Original Message-----
> From: barebox [mailto:barebox-bounces@lists.infradead.org] On Behalf Of
> Barbier, Renaud
> Sent: 27 September 2019 09:44
> To: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: barebox@lists.infradead.org
> Subject: RE: barebox 2019.07 ubiformat
> 
> 
> 
> [**EXTERNAL SOURCE**]:Please verify the source before clicking link or
> opening attachment.
> 
> > Not all blocks seem to be unreadable. Have you looked into subpage
> > reads? subpage reads have been enabled in 18ea738 ("mtd: nand: Enable
> > subpage reads"), but on the other hand that commit is already included
> > in 2016.07. Anyway, maybe the old barebox doesn't do subpage reads for
> > some reason.
> > What ECC are you using, software or hardware? Is it still the same in
> > the new barebox or are you maybe ending up with some other ECC scheme?
> [Barbier, Renaud]
> The PPC platforms uses software ECC. I will compare with our ARM platforms
> that uses hardware ECC.
> Thanks for the information. Answer hopefully in two weeks as I am going in
> holidays
> 
> Cheers,
> Renaud
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
