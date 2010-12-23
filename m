Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PVktg-0005VU-2x
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 13:07:57 +0000
Date: Thu, 23 Dec 2010 15:07:37 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20101223130737.GE19735@jasper.tkos.co.il>
References: <4D133D77.5090908@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D133D77.5090908@free-electrons.com>
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
Subject: Re: Nand support on STM/i.MX (especially iMX23)
To: Gregory CLEMENT <gregory.clement@free-electrons.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Gregory,

On Thu, Dec 23, 2010 at 01:15:51PM +0100, Gregory CLEMENT wrote:
> I planned to add NAND support for iMX23 (which should work for iMX28). But 
> this time before starting
> writing this driver I would like to know if someone is already working on it.
> If it is the case I would like to be involved in this development to bring my help.
> If it is not the case, I considered to start from the driver supplied by freescale on thir 2.6.31 kernel.
> Is it a good choice? Have you some advice to give me?

In my opinion it should be easier to start with Freescale's 2.6.35 based 
kernel from branch imx_2.6.35_10.10.01 in 
http://opensource.freescale.com/pub/scm/imx/linux-2.6-imx.git, since it is 
closer to newer kernels.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
