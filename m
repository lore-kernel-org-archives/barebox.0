Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c41Dx-0004IB-5G
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 07:53:42 +0000
Date: Tue, 8 Nov 2016 08:53:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161108075317.j4xkf7zpkdfyt5y3@pengutronix.de>
References: <CAKZffXFSfTJJiwj2ZOB7nT-DWZ7_AqyysZkavNM++c4LSp6tZg@mail.gmail.com>
 <20161104071821.jqrhtfmgz3432527@pengutronix.de>
 <CAKZffXHVZ9tvhcgVz=fWciYQr98wrZjZbxiL4QQJEP8DzGuz7Q@mail.gmail.com>
 <20161107074346.pb4uivigwa5gbj6z@pengutronix.de>
 <CAKZffXG6vuJjaQqB9QYSMeSocWZY33vFLSrWfCFf=0ATMM1fkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKZffXG6vuJjaQqB9QYSMeSocWZY33vFLSrWfCFf=0ATMM1fkQ@mail.gmail.com>
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
Subject: Re: Configure RAM size on iMX53 board
To: Jose Luis Zabalza <jlz.3008@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 08, 2016 at 06:09:52AM +0100, Jose Luis Zabalza wrote:
> Thanks Sascha
> 
> RAM memory reference is MT41K128M16JT-125 XIT
> https://www.micron.com/parts/dram/ddr3-sdram/mt41k128m16jt-125-xit
> 
> ================<cut>=========================
> barebox 2016.09.0-00071-ga38b701-dirty #11 Tue Nov 8 05:56:31 CET 2016
> 
> 
> Board: MyBoard i.MX53
> detected i.MX53 revision 2.1
> CS0: 0x20000000
> CS1: 0x20000000
> ...
> 
> ================<cut>=========================

So you have 512MiB on each chip select, so I assume that on the 512MiB
board variants CS1 is not equipped. In that case you can in lowlevel.c
test if you find SDRAM on CS1 and if not, disable the chip select
completely in the SDRAM controller.
I am not sure how you can detect if there's SDRAM on CS1. I've seen
situations in which the board just hangs if you access non existent RAM
areas.

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
