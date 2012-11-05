Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TVMAp-0002SH-Hm
 for barebox@lists.infradead.org; Mon, 05 Nov 2012 12:53:06 +0000
Date: Mon, 5 Nov 2012 13:52:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121105125258.GV1641@pengutronix.de>
References: <50979E1A.2000707@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50979E1A.2000707@cmotion.eu>
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
Subject: Re: TX53: Not Bootable from next tree
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

On Mon, Nov 05, 2012 at 12:08:10PM +0100, Christian Kapeller wrote:
> Hi,
> 
> I've just flashed barebox from the next tree onto a TX53-8030 module,
> and have to report, that the board won't boot.
> 
> Currently I've tried to run it with MMU off and setting the text-base
> to 0x71000000, with no positive results.
> 
> I'll do further investigation, but meanwhile does anyone have barebox
> running on a TX53 board?

I just tested that it works for me as second stage. I can't test 1st
stage atm as I currently have no physical access to the board.

Some guesses: Have you checked the correct the correct board revision in
the config? It's the default, so I assume it's correct.

Are you using the barebox-flash-image link or barebox.bin? You have to
use the former because it's a compressed image.

You might want to disable compressed image support in
 General settings ->
  memory layout ->
   [ ] pre-bootoloader image

And see if that works.

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
