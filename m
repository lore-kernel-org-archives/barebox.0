Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG863-0000yU-LA
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 12:49:12 +0000
Message-ID: <1348490948.3491.11.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 24 Sep 2012 14:49:08 +0200
In-Reply-To: <506053EE.5070105@phytec.de>
References: <1348149724-28468-1-git-send-email-t.gamez@phytec.de>
 <1348168424-11742-1-git-send-email-jlu@pengutronix.de>
 <506053EE.5070105@phytec.de>
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
Subject: Re: [PATCH] Makefile: add target to produce a SPL compatible uImage
To: Teresa Gamez <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, 2012-09-24 at 14:37 +0200, Teresa Gamez wrote:
> I have tested it with my am335x patches. And it worked so far.
> But I have not done anything with the pbl image, yet.
> Could you explain me what it's actually for? And how I can test it?

Thanks!

PBL stands for Pre-Bootloader Image, which is used to have a compressed
barebox binary. You can enable it in "General Settings -> memory layout
-> Pre-Bootloader image".

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
