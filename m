Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.32.191])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tr5Ml-0002g6-8C
 for barebox@lists.infradead.org; Fri, 04 Jan 2013 11:23:11 +0000
Date: Fri, 4 Jan 2013 12:23:03 +0100
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130104122303.67e97e48@skate>
In-Reply-To: <CA78C307B8F06747967D122FC656B153774344@SERVEUR0.nvp.local>
References: <CA78C307B8F06747967D122FC656B15377433D@SERVEUR0.nvp.local>
 <20130104111842.69c57ae1@skate>
 <CA78C307B8F06747967D122FC656B153774344@SERVEUR0.nvp.local>
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

On Fri, 4 Jan 2013 12:03:17 +0100, Mylene Josserand wrote:

> > Good to see some developers from Toulouse using Barebox! I'm close, in
> > Colomiers.
> 
> Yes ! We are neighbour :)

Indeed :)

> Free Electrons, I know you by name. And the kernel sources on your web 
> site help me a lot !

Good to know this is useful.

> > Which board are you targeting?
> 
> It is a "home-made" board with a iMX27.

Ok.

> Hum, I did not configured it myself. I used a previous configuration of 
> the board which was :
> "
> static struct fec_platform_data fec_info = {
> 	.xcv_type = MII100,
> 	.phy_addr = 1,
> };"
> 
> How can I know which address I need to put ?

Look at chapter "4.11 PHY Address strapping and LED Output Polarity
Selection" of the LAN8700 manual. It says the PHY address is selected
according to the value on pins PHYAD[0:4] during PHY reset. So you
should check your board schematics and see how these pins are wired to
find out what is the PHY address.

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
