Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.27.mail-out.ovh.net ([46.105.34.120] helo=27.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PqMBH-00026E-Qv
	for barebox@lists.infradead.org; Fri, 18 Feb 2011 08:59:20 +0000
Date: Fri, 18 Feb 2011 09:55:24 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110218085524.GD17919@game.jcrosoft.org>
References: <AANLkTikb2tgLZhBYbunUG10Sz7FO3Yx_P1+5Fo0GonAD@mail.gmail.com>
	<20110210114858.GC11255@game.jcrosoft.org>
	<4D5D9821.6070500@pengutronix.de> <4D5DA526.1070801@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D5DA526.1070801@pengutronix.de>
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
Subject: Re: No NAND access on AT91SAM9G20-EK
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On 23:45 Thu 17 Feb     , Marc Kleine-Budde wrote:
> On 02/17/2011 10:50 PM, Marc Kleine-Budde wrote:
> > Hello Jean-Christophe,
> > 
> > On 02/10/2011 12:48 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >> 	which ecc did u use before?
> > 
> > I'm working on a at91sam9m10ek, using latest origin/next.
> > 
> > The ecc-mode is "hardcoded" to NAND_ECC_HW in
> > arch/arm/mach-at91/at91sam9g45_devices.c. I've got the same -74 problem
> > when reading from the nand.
> > 
> > Barebox fails to read the environment, even if barebox has written it.
> > After changing the ecc mode to soft the env can be read and written
> > without problems.
> > 
> > I ported the atmel nand driver from linux-2.6.37, which had no
> > significant differences.
> 
> I just found in linux Kconfig:
> 
> > config MTD_NAND_ATMEL_ECC_HW
> > 	bool "Hardware ECC"
> > 	depends on ARCH_AT91SAM9263 || ARCH_AT91SAM9260 || AVR32
> 
> The sam9g45 is not listed here....Maybe we should hardcode "soft" in
> barebox for the 9g45
I prefer we detect it as we could change it the kernel

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
