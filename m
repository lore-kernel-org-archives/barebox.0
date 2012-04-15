Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJPkB-0006Z8-Re
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 13:43:57 +0000
Date: Sun, 15 Apr 2012 15:43:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120415134346.GH3852@pengutronix.de>
References: <1334496380-4091-1-git-send-email-s.hauer@pengutronix.de>
 <1334496380-4091-4-git-send-email-s.hauer@pengutronix.de>
 <20120415132044.GK30672@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120415132044.GK30672@game.jcrosoft.org>
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
Subject: Re: [PATCH 3/6] net: add nameserver and domainname to net devices
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Apr 15, 2012 at 03:20:44PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:26 Sun 15 Apr     , Sascha Hauer wrote:
> > This adds nameserver and domainname to net devices. This may not
> > be 100% correct since the nameserver and domainname are not network
> > device specific. However, we currently do not have the possibility
> > for global variables. DNS support depends on the nameserver/domainname
> > to be set correctly. When we set both inside a script the variables
> > will not be available to the parent context, so use device parameters
> > which are global.
> 
> how about put it at bus level instead?
> 
> I get an issue is what happened if we have 2 ethernet?
> 
> and switch from one to the other?

I am aware of this issue, but what do you mean with 'put it at bus
level?'

I thought about adding a device named 'net' which would only exist to
store these variables. Is that what you mean?

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
