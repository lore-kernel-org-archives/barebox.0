Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0ksu-0003Xk-3g
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 08:22:44 +0000
Date: Wed, 19 Apr 2017 10:22:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170419082222.mohjbxbj2doxuywj@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
 <20170331070346.26878-17-s.hauer@pengutronix.de>
 <20170415085325.GD20400@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170415085325.GD20400@ravnborg.org>
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
Subject: Re: [PATCH 16/42] state: Drop cache bucket
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Sat, Apr 15, 2017 at 10:53:25AM +0200, Sam Ravnborg wrote:
> > +	if (memcmp(bucket->buf, buf, len))
> > +		goto refresh;
> > +
> > +	return 0;
> > +
> > +refresh:
> > +	ret = bucket->write(bucket, buf, len);
> 
> In the code above we check needs_refresh and len.
> But needs_refresh is never set back to 0 so it looks like we will refresh it too often.
> The same with the len argument.

You are right, I just sent a patch.

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
