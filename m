Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4MZg-0008CB-Hp
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 06:41:34 +0000
Date: Wed, 9 Nov 2016 07:41:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161109064109.ksjqitg6bdji555x@pengutronix.de>
References: <CAKZffXFSfTJJiwj2ZOB7nT-DWZ7_AqyysZkavNM++c4LSp6tZg@mail.gmail.com>
 <20161104071821.jqrhtfmgz3432527@pengutronix.de>
 <CAKZffXHVZ9tvhcgVz=fWciYQr98wrZjZbxiL4QQJEP8DzGuz7Q@mail.gmail.com>
 <20161107074346.pb4uivigwa5gbj6z@pengutronix.de>
 <CAKZffXG6vuJjaQqB9QYSMeSocWZY33vFLSrWfCFf=0ATMM1fkQ@mail.gmail.com>
 <20161108075317.j4xkf7zpkdfyt5y3@pengutronix.de>
 <CAKZffXG5CG9R8e4xoMdP6DFJq42ng5EQqwmhafikNn6HNzuedQ@mail.gmail.com>
 <20161108212434.gvlq5fy6vrbn2en5@pengutronix.de>
 <CAKZffXFjLerW8jK2m82znqH+Mc_9X9C4s7SVJHGyHdnV0R0q_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKZffXFjLerW8jK2m82znqH+Mc_9X9C4s7SVJHGyHdnV0R0q_Q@mail.gmail.com>
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

On Wed, Nov 09, 2016 at 05:23:10AM +0100, Jose Luis Zabalza wrote:
> There is no form of detection. UBoot (a very old version) don't use
> any CS1 address, except with the memtest command.
> If memtest command is executed with 512MB version, UBoot hangs, as expected.
> I set the mem kernel parameter using a environment variable and kernel
> can reach CS1 memory.

Then you could drop the CS1 setup from the DCD table and do the same.
You can then create a command or similar which initializes the CS1
memory and registers the new memory bank.

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
