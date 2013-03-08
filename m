Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDyXR-0003g7-Ub
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 14:44:50 +0000
Message-ID: <1362753888.1900.10.camel@antimon>
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 08 Mar 2013 15:44:48 +0100
In-Reply-To: <5139D5BE.7080404@erwinrol.com>
References: <5139D5BE.7080404@erwinrol.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Status Tegra 2/3 Support
To: Erwin Rol <mailinglists@erwinrol.com>
Cc: barebox@lists.infradead.org

Hi Erwin,

Am Freitag, den 08.03.2013, 13:12 +0100 schrieb Erwin Rol:
> Hey all,
> 
> what ist the status of the Tegra 2 and Tegra 3 support in Barebox ?
> 
The Tegra support is in a very early stage. Currently it's only possible
to chainload barebox from a running U-Boot. I'm actively working to
improve the situation, but as this is just a free time project I won't
make any promises.

> One very important question is;
> Can it be updated from within barebox or linux (running on the Tegra) or
> does it need nvflash like tools?
> 
> 
Once all the needed drivers (NAND/MMC) are ported over to barebox it
should be easy to do the bootloader update out of a running barebox.

Regards,
Lucas



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
