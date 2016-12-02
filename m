Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp85.iad3a.emailsrvr.com ([173.203.187.85])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cCrLQ-0005XN-4N
 for barebox@lists.infradead.org; Fri, 02 Dec 2016 17:09:59 +0000
Received: from smtp19.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
 by smtp19.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id D730552E8
 for <barebox@lists.infradead.org>; Fri,  2 Dec 2016 12:09:32 -0500 (EST)
Received: by smtp19.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 9DF9054F5
 for <barebox@lists.infradead.org>; Fri,  2 Dec 2016 12:09:32 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <378a4a5b-43e1-c693-b271-8647a951c41b@mev.co.uk>
Date: Fri, 2 Dec 2016 17:09:31 +0000
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Cadence QSPI xload boot timing issue
To: barebox@lists.infradead.org

Hi everyone,

I'm using BareBox and xload 2016.11.0 with custom BSP patches for my 
Altera Cyclone V SoCFPGA based custom board, which boots from QSPI.

The board boots fine, but I ran into a weird boot timing issue when 
playing around with the LOGLEVEL configuration options in xload.  Before 
playing around with them, my initial LOGLEVEL options were as follows:

CONFIG_COMPILE_LOGLEVEL=6
CONFIG_DEFAULT_LOGLEVEL=7

I ran into the boot timing issue when setting them as follows:

CONFIG_COMPILE_LOGLEVEL=6
CONFIG_DEFAULT_LOGLEVEL=5

The symptoms were that xload reported the following errors:

mtd0: failed to get image size
mtd0: failed to detect barebox and it's image size so use 1048576

It then went on to load and boot the barebox image successfully.

To debug the problem, I hex-dumped the barebox image header to the 
terminal after it had been read by read_image_head() in 
"lib/bootstrap/devfs.c" and found it to contain only '\xFF' bytes. 
However, if I insert a small delay by calling mdelay(1) before reading 
the barebox image header, it is read correctly and I don't get the error 
messages.

It seems like a small delay is required after the Cadence QSPI driver 
("drivers/mtd/spi-nor/cadence_quadspi.c") has set up the flash chip 
before it is in a useable state.  Adding a call mdelay(1) just before 
cqspi_probe() returns fixes the problem for me, but I'm not sure if 
that's the best way to fix it!

For reference, my flash chip is a Spansion s25fl256s1 (32768 Kbytes) and 
the Cadence QSPI controller built in to the SoCFPGA is being clocked at 
400 MHz.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
