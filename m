Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.32.191])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tr4MR-0006jZ-4C
 for barebox@lists.infradead.org; Fri, 04 Jan 2013 10:18:47 +0000
Date: Fri, 4 Jan 2013 11:18:42 +0100
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130104111842.69c57ae1@skate>
In-Reply-To: <CA78C307B8F06747967D122FC656B15377433D@SERVEUR0.nvp.local>
References: <CA78C307B8F06747967D122FC656B15377433D@SERVEUR0.nvp.local>
Mime-Version: 1.0
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
Subject: Re: [help] PHY driver : Unable to find a PHY (unknown ID?)
To: Mylene Josserand <Mylene.Josserand@navocap.com>
Cc: barebox mailist <barebox@lists.infradead.org>

Dear Mylene Josserand,

Good to see some developers from Toulouse using Barebox! I'm close, in
Colomiers.

On Fri, 4 Jan 2013 10:09:05 +0100, Mylene Josserand wrote:

> I am using the master branch (maybe I need to checkout a tag ?). The 
> ethernet of my board is a SMSC LAN8700 and the microchip is iMX27.
> 
> I have configured the new source of barebox to use the Phylib and MII 
> drivers. When my barebox starts, I have an error about the PHY driver :

Which board are you targeting?

> The SMSC LAN8700 is here but I can not make it work !
> 
> I have added some prints on the phy.c and the problem is in the fonction 
> "mdiobus_scan" :
> 
> if (!edev->phydev) {
> 	if (addr >= 0) {
> 		dev = mdiobus_scan(bus, addr);
> 		if (!dev) {                     << Failed here
> 			ret = -EIO;
> 			goto fail;
> 		}
> 
> Did I miss something ?

Do you have a correct PHY address in the fec_platform_data structure in
your board file?

Best regards,

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
