Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aSpr5-0006jX-0e
 for barebox@lists.infradead.org; Mon, 08 Feb 2016 17:44:08 +0000
Date: Mon, 8 Feb 2016 18:43:42 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20160208174342.GY30206@pengutronix.de>
References: <1454928193-19306-1-git-send-email-s.hauer@pengutronix.de>
 <201602081233.33140.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201602081233.33140.jbe@pengutronix.de>
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
Subject: Re: [PATCH] driver: Fix unregister device after device probe failure
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 08, 2016 at 12:33:32PM +0100, Juergen Borleis wrote:
> On Monday 08 February 2016 11:43:13 Sascha Hauer wrote:
> > When a device probe fails the device is removed from the active list.
> > If then the device is unregistered afterwards it is removed from the
> > active list again resulting in a crash. To fix this initialize the
> > devices active list entry when removing it from the active list.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Tested-by: Juergen Borleis <j.borleis@pengutroni.de>
                                                  x
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
