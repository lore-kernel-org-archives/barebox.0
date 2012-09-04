Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T901v-0002RH-Sb
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 20:47:28 +0000
Date: Tue, 4 Sep 2012 22:47:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120904204725.GA26594@pengutronix.de>
References: <CACO6GO7pfavefJa_wTcR7ifHwWVS8up7-TRW8ArQzXoeL1JHCA@mail.gmail.com>
 <201208272001.50503.jbe@pengutronix.de>
 <CACO6GO68_8oLS2caknd=+j1C5ewdWtR65tTfwa_gviPYEjuSsQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACO6GO68_8oLS2caknd=+j1C5ewdWtR65tTfwa_gviPYEjuSsQ@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox on imx23-olinuxino
To: Fadil Berisha <f.koliqi@gmail.com>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On Sun, Sep 02, 2012 at 01:25:01AM -0400, Fadil Berisha wrote:
> Juergen,
> 
> Sorry, for replying so late, but took me time to identify problem.
>  I am using function:
> 
> add_generic_device("mxs_mci", DEVICE_ID_DYNAMIC, NULL, IMX_SSP1_BASE, 0,
> 			       IORESOURCE_MEM, &mci_pdata);
>

The problem is the 5th parameter. It is the size of the memory resource.
When speicified as 0 you will not be able to request it. It seems we
still have not catched all of these. We should probably add a warning
if someone tries to register a device with a valid resource but size =
0.

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
