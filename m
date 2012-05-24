Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXe8Q-0006MC-MW
 for barebox@lists.infradead.org; Thu, 24 May 2012 19:55:47 +0000
Date: Thu, 24 May 2012 21:55:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120524195543.GB30400@pengutronix.de>
References: <4FBD05B8.40001@crane-soft.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4FBD05B8.40001@crane-soft.de>
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
Subject: Re: Booting PhyTec PCM043/IMX35  from USB/SD-Card
To: "Peter Kuennemann@Crane-Soft" <pkue@crane-soft.de>
Cc: barebox@lists.infradead.org

Hi Peter,

On Wed, May 23, 2012 at 05:43:52PM +0200, Peter Kuennemann@Crane-Soft wrote:
> Hi all.
> 
> I am trying to setup my PCM043/IMX35 board to boot from the
> USB MMC card but til now I do have have any clue how to manage.
> Searching the net, did not provide any hints regard that board.
> 
> I'ld like to have barebox to allow me to use the USB/MMC card
> as boot device. Is there a chance to boot from SD-Card at all?

Do you want to start barebox from USB/MMC or do you only want to load
the kernel from USB/MMC? The latter is possible, though you have to add
support for it. See arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
for an example how to do it. Basically for MMC you have to configure
the iomuxer and register the device. USB might be a bit more
complicated, you have to configure the phy correctly.

Sascba


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
