Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1qVX-0000Gk-RY
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 10:11:57 +0000
Date: Mon, 17 Sep 2018 12:11:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180917101143.GE4097@pengutronix.de>
References: <df6edf8c-d15a-5e7b-58ad-6fc32ad56590@posteo.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df6edf8c-d15a-5e7b-58ad-6fc32ad56590@posteo.de>
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
Subject: Re: Booting AM335x MLO from network no longer works
To: Dennis Menschel <menschel-d@posteo.de>
Cc: barebox@lists.infradead.org

Hi Dennis,

On Sat, Sep 15, 2018 at 02:33:51PM +0200, Dennis Menschel wrote:
> Hi,
> 
> while upgrading to a recent version of barebox, I've encountered the
> problem that booting an AM335x board via network does no longer work.
> The MLO fails to chain-load barebox.bin, it doesn't even send a request
> to the TFTP-Server to retrieve the main bootloader file.
> 
> Working through the Git history, I've been able to pinpoint the problem
> as follows (using output from "git describe"):
> 
> - On the topic branch which introduced the bug, v2017.11.0-11-g946bc95a4
> was the last working version.
> 
> - From v2017.11.0-12-gab84733e5 up to v2017.11.0-14-g6b4a38d00, the MLO
> neither produces any outputs on the UART0 nor chain-loads barebox.bin.
> 
> - Since version v2017.11.0-15-g528298b70, the MLO produces the following
> output:
> 
> > barebox 2017.11.0 #1 Wed Sep 12 07:23:48 UTC 2018
> >
> >
> > Board: Phytec phyCORE AM335x
> > cpsw 4a100000.ethernet: detected phy mask 0x1
> > mdio_bus: miibus0: probed
> > eth0: got preset MAC address: c4:f3:12:e7:cb:9c
> > booting from NET
> > eth0: got preset MAC address: c4:f3:12:e7:cb:9c
> > eth0: 100Mbps full duplex link detected
> > eth0: DHCP client bound to address 192.168.4.52
> > bootfile not found.
> > booting failed
> 
> The master branch includes the problem as of v2017.12.0-90-g3dbe78ab5,
> so that the first official release with this behavior has been v2018.01.0.
> 
> The bug still persists in v2018.09.0.
> 
> The board-specific MLO I've been using is this:
> barebox-am33xx-phytec-phycore-r2-mlo-512mb.img
> 
> Let me know if you need further information in order to reproduce and/or
> fix the problem.

I just sent a fix. I can't test it since our DHCP server does not
provide a bootfile, but I'm confident that this is the right fix. Could
you give it a try?

Thanks
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
