Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZJfia-0008HS-9p
 for barebox@lists.infradead.org; Mon, 27 Jul 2015 10:33:13 +0000
Message-ID: <1437993168.26187.3.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 27 Jul 2015 12:32:48 +0200
In-Reply-To: <55B22487.3050001@phytec.de>
References: <1437638492-12290-1-git-send-email-d.schultz@phytec.de>
 <20150724074135.GP18700@pengutronix.de> <55B22487.3050001@phytec.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: jlu@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1] commands: Add dhrystone
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Fr, 2015-07-24 at 13:41 +0200, Daniel Schultz wrote:
> At the end of the do_dhrystone function:
> 
>      if (user_time < TOO_SMALL_TIME) {
>          number_of_runs = number_of_runs * 10;
>          new_argv[0] = argv[0];
>          sprintf(tmp_str, "%i", number_of_runs);
>          new_argv[1] = tmp_str;
>          printf("Measured time too small to obtain meaningful results\n");
>          printf("or a timer wrap happend. I will increase the number\n");
>          printf("of runs by *10 to %d\n", number_of_runs);
>          printf("user_time: %llu ns\n", user_time);
>          do_dhrystone(2, new_argv);
>          ...
> 
> I'm sure there is a better solution.

Why not just loop for a few seconds?

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
