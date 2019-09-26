Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDNSo-0007Ms-Ov
 for barebox@lists.infradead.org; Thu, 26 Sep 2019 06:41:20 +0000
Date: Thu, 26 Sep 2019 08:41:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190926064116.aix5mx2fwtbqyrzc@pengutronix.de>
References: <MN2PR16MB3117C56576A8FB7A258431B691870@MN2PR16MB3117.namprd16.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR16MB3117C56576A8FB7A258431B691870@MN2PR16MB3117.namprd16.prod.outlook.com>
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

Hi Renaud,

On Wed, Sep 25, 2019 at 05:44:16PM +0000, Barbier, Renaud wrote:
> We recently jumped from barebox 2016.07 to 2019.07. 
> Everything went well till the NAND got ubiformated.
> 
> Using the version from2016.07, the NOR boot partition can be formatted (FIT image) and NAND (file system) and the system boots.
> When using the barebox 2019-07, both storage can be formatted but when booting (Linux 4.16 or 5.2) I get:

There is no driver for this NAND controller upstream, I assume you have
it in your tree, right? Can barebox itself read what it has written,
i.e. ubiattach / mount it?

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
