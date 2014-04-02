Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WVMyA-0007Am-VK
 for barebox@lists.infradead.org; Wed, 02 Apr 2014 15:20:51 +0000
Message-ID: <1396451980.19064.11.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 02 Apr 2014 17:19:40 +0200
In-Reply-To: <CAOpc7mEKy0sKGdKbSqvCJjQRcz_wBQY_tVYWZ3-TH_V4XqAQ1A@mail.gmail.com>
References: <CAOpc7mEKy0sKGdKbSqvCJjQRcz_wBQY_tVYWZ3-TH_V4XqAQ1A@mail.gmail.com>
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
Subject: Re: Suggestions for new i.MX6 board
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

Hi Holger,

Am Mittwoch, den 02.04.2014, 17:05 +0200 schrieb Holger Schurig:
> Hi list,
> 
> I'm going to implement barebox to an i.MX6Q based board we've
> developed in the company I work for.
> 
> Now the very first question is: to CONFIG_IMX_MULTI_BOARDS or not to
> CONFIG_IMX_MULTI_BOARDS??
> 
If you are adding a new board please go for multi board support.

> For example, I see in "make xconfig" that some boards are made in a
> multi-board way, e.g. they are active when CONFIG_IMX_MULTI_BOARDS is
> set (e.g. Sabrelite). However, there is one that is only visible
> without that config,. the Armadillo2. Obviously I could do it this are
> that way, so which should I use?   Personally I don't think that it
> makes sense to compile a barebox binary that runs on different boards,
> I don't even know how the boot loader would discriminate if it runs on
> board A or board B ...
> 
There are some boards that don't use the multi-image support as nobody
had time to convert them them over to the new method. But we would
definitely like to get rid of them, not add to that list...

In barebox the multi board support doesn't work like a multiarch kernel.
You don't build a single image for all boards, but rather build a basic
barebox binary and then link it together with the board specific parts
to form multiple board dependent images. You still have to chose which
image is the right one for your board.

The upside of this mechanism is that you can easily have a single
barebox config and built images for different configurations of the same
board (like different memory configurations, or in case of the MX6
different version of the SoC).

> 
> Or, I could phrase that question differently: from all the existing
> i.MX6 boards, which one is the one with the least bitrot, i.e. which
> one should I take as a template?
> 
Pretty much all of the multi-image enabled boards have seen some love
recently. A relatively simple example with different configs for the
same board can be found within the boundarydevices nitrogen6x support.

Regards,
Lucas
-- 
Pengutronix e.K.                           | Lucas Stach                 |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
