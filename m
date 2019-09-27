Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr720115.outbound.protection.outlook.com
 ([40.107.72.115] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDlr0-00065v-B0
 for barebox@lists.infradead.org; Fri, 27 Sep 2019 08:43:55 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Fri, 27 Sep 2019 08:43:51 +0000
Message-ID: <MN2PR16MB311733CE9E54B05E89F0090291810@MN2PR16MB3117.namprd16.prod.outlook.com>
References: <MN2PR16MB3117C56576A8FB7A258431B691870@MN2PR16MB3117.namprd16.prod.outlook.com>
 <20190926064116.aix5mx2fwtbqyrzc@pengutronix.de>
 <MN2PR16MB3117311DB17F1F18B283BCE391860@MN2PR16MB3117.namprd16.prod.outlook.com>
 <20190927064405.lfcibvom2xo3awy6@pengutronix.de>
In-Reply-To: <20190927064405.lfcibvom2xo3awy6@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


> Not all blocks seem to be unreadable. Have you looked into subpage
> reads? subpage reads have been enabled in 18ea738 ("mtd: nand: Enable
> subpage reads"), but on the other hand that commit is already included
> in 2016.07. Anyway, maybe the old barebox doesn't do subpage reads for
> some reason.
> What ECC are you using, software or hardware? Is it still the same in
> the new barebox or are you maybe ending up with some other ECC scheme?
[Barbier, Renaud] 
The PPC platforms uses software ECC. I will compare with our ARM platforms that uses hardware ECC.
Thanks for the information. Answer hopefully in two weeks as I am going in holidays

Cheers,
Renaud

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
