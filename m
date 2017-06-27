Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dPrbc-0004vI-3j
 for barebox@lists.infradead.org; Tue, 27 Jun 2017 14:36:42 +0000
Date: Tue, 27 Jun 2017 16:36:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170627143617.4q6ufyh3uaohsa5k@pengutronix.de>
References: <1497973342-30198-1-git-send-email-d.schultz@phytec.de>
 <20170626063554.kskmccgsdzwtusew@pengutronix.de>
 <6876fb2d-ab61-087f-22a8-b4431d09328e@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6876fb2d-ab61-087f-22a8-b4431d09328e@phytec.de>
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
Subject: Re: [PATCH v5] arm: boards: phytec-som-am335x: Update boot scripts
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 27, 2017 at 11:45:44AM +0200, Daniel Schultz wrote:
> Hi Sascha,
> 
> > Normally the desired behaviour is that the bootsource can be changed
> > persistently by setting nv.boot.default to the desired source. This
> > does not work when global.boot.default gets overwritten after the nvvars
> > have been read from the environment.
> > 
> > This behaviour is not changed with this patch, but I would welcome a
> > patch that changes this script to the desired behaviour. This could
> > be done by changing global.boot.default only when nv.boot.default is
> > empty.
> > 
> 
> This is already implemented by a test above these changes, isn't it?
> 
> snippet from init/bootsource:
>   1 #!/bin/sh
> 
>   2
>   3 if [ -n "$nv.boot.default" ]; then
>   4         exit
>   5 fi

Yes, right, that already does it. Sorry for the noise.

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
