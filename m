Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPNiM-0004Ng-4x
 for barebox@lists.infradead.org; Wed, 21 Nov 2018 08:18:27 +0000
Date: Wed, 21 Nov 2018 09:18:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181121081813.biacokuvrvpx7ktd@pengutronix.de>
References: <1542744481.4097.40.camel@erwinrol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1542744481.4097.40.camel@erwinrol.com>
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
Subject: Re: powerfail safe env save
To: Erwin Rol <mailinglists@erwinrol.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Erwin,

On Tue, Nov 20, 2018 at 09:08:01PM +0100, Erwin Rol wrote:
> Hallo,
> 
> as long time u-boot user I have several projects where we have a dual
> dataflash "sector" in wich we store our env variables. And dual so we
> always have or the correct old version or the correct new version even
> if there is a power fail during saveenv.
> 
> Is powerfail robust env writing also available in barebox. Or what
> would be the barebox equifelant of a number of config variables?

We do not have redundant environment right now.

There have been attempts in the past, but they fell short in flexibility
and/or robustness. Nowadays we normally do not use environment in
products anymore, so this isn't much of an issue.

If you have flash I would consider using UBI for the environment. With
atomic LEB change a robust environment could be implemented fairly
easily.

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
