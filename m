Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN0YB-00032T-8T
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 12:10:41 +0000
Date: Sat, 13 Oct 2012 14:10:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121013121034.GT27665@pengutronix.de>
References: <1349940335-20960-1-git-send-email-t.gamez@phytec.de>
 <20121012075835.GG27665@pengutronix.de>
 <5077E340.2010205@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5077E340.2010205@phytec.de>
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
Subject: Re: [PATCH 1/2] ARM OMAP: Create device file
To: Teresa Gamez <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 12, 2012 at 11:30:40AM +0200, Teresa Gamez wrote:
> Am 12.10.2012 09:58, schrieb Sascha Hauer:
> 
> Hello Sascha,
> 
> >Nice work. As Jean Christophe already mentioned, it would be nice to
> >skip the base address. That would mean to have a omap_add_mmc() function
> >like above in an omap generic place and then:
> >
> >static inline struct device_d omap<x>_add_mmc<y>(void *pdata)
> >{
> >	omap_add_mmc(OMAPx_MMCy_BASE, pdata);
> >}
> >
> >in omap3/4 specific include files.
> >
> >Let me know if you want to work on this, otherwise I'm also happy to
> >apply this one as it's already a step forward.
> I will change it as you suggested.
> I would base my rework on next so I can apply the changes also on
> the archosg9 board.

Ok, thanks

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
