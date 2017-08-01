Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dcdvT-0002Bq-O7
 for barebox@lists.infradead.org; Tue, 01 Aug 2017 20:38:01 +0000
Date: Tue, 1 Aug 2017 22:37:37 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20170801203737.epwm5qbhgxkvuiyb@pengutronix.de>
References: <462439994.27865.1500895721159@ox.hosteurope.de>
 <240826535.22013.1501596152202@ox.hosteurope.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <240826535.22013.1501596152202@ox.hosteurope.de>
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
Subject: Re: Bootchooser has unexpected changes of variable
 'remaining_attempts'
To: Norbert Wiedmann <info@n-wiedmann.de>
Cc: barebox@lists.infradead.org

Hi,

On Tue, Aug 01, 2017 at 04:02:32PM +0200, Norbert Wiedmann wrote:
> after debugging a while, I found the reason:
> In file bootchooser.c, in funktion bootchooser_save(..) the call of
> 
> ret = pr_setenv(bc, "%s.remaining_attempts=%d",
>                 target->state_prefix,
>                 target->remaining_attempts);
> creates a "xxx.remaining_attempts=-1" if the variable 'remaining_attempts'
> is 0xffffffff, for example.
> 
> The type of remaining_attempts is unsigned int.
> 
> After changing the function call to
>  
> ret = pr_setenv(bc, "%s.remaining_attempts=%lu",   /* changed %d to %lu */
>                 target->state_prefix,
>                 target->remaining_attempts);
> it works fine.
> Maybe this could be fixed..., thank you.

Could you make a proper patch out of your proposal and send it here to
the mailing list? This is the usual way how change requests are reviewed
and discussed in barebox.

Thank you,

rsc
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
