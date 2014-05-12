Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WjjGu-0001Hh-6g
 for barebox@lists.infradead.org; Mon, 12 May 2014 05:59:33 +0000
Date: Mon, 12 May 2014 07:59:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140512055910.GE5858@pengutronix.de>
References: <536D5DBF.7040708@exegin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <536D5DBF.7040708@exegin.com>
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
Subject: Re: [PATCH] Add readmem command to read values out of memory.
To: Owen Kirby <osk@exegin.com>
Cc: barebox@lists.infradead.org

On Fri, May 09, 2014 at 03:59:11PM -0700, Owen Kirby wrote:
> From 299ffc6a961c807b118605bdd9e736c7b096fec9 Mon Sep 17 00:00:00 2001
> From: Owen Kirby <osk@exegin.com>
> Date: Fri, 9 May 2014 15:14:30 -0700
> Subject: [PATCH] Add readmem command to read values out of memory.
> 
> I was trying to do something conditionally from a shell script based on the type
> of image present in flash, and finding it rather cumbersome to do. So I added a
> command that reads values out of memory and into shell variables as hexadecimal.

Such a functionality might come in handy and indeed it seems to be hard
to archieve with other commands.

Have you looked into the filetype stuff? This could solve your problem
without having to interpret hex values from shell. See common/filetype.c
and commands/filetype.c.

> +config CMD_READMEM
> +	tristate
> +	default y

No default y please, just drop this line.

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
