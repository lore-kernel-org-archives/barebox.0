Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2ZjP-0004CN-4N
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 05:38:52 +0000
Date: Thu, 3 Jul 2014 07:38:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140703053825.GI14257@pengutronix.de>
References: <alpine.LFD.2.11.1407021450110.4107@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1407021450110.4107@localhost>
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
Subject: Re: any reason why sandbox (and other defconfigs) don't enable
 MAGICVAR?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Wed, Jul 02, 2014 at 02:52:37PM -0400, Robert P. J. Day wrote:
> 
>   was playing with a sandbox build and noticed that the default
> sandbox config doesn't select MAGICVAR -- any reason why not? on a
> larger scale, it seems odd that quite a number of defconfigs select
> MAGICVAR (and MAGICVAR_HELP), while others don't.
> 
>   is this a per-machine selection? it just seems that it should be
> more consistent -- that fundamental features like MAGICVAR should
> either be all on or all off by default. thoughts?

Normally when a new feature is introduced it is by default disabled
so existing configs do not grow unnecessarily in size. This means the
configs do not have the feature until somebody overhauls a config file.
So, patches welcome.

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
