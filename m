Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZxp1-0001xi-41
 for barebox@lists.infradead.org; Wed, 08 May 2013 06:25:51 +0000
Date: Wed, 8 May 2013 08:25:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130508062528.GW32299@pengutronix.de>
References: <1366977055.331524144@f355.mail.ru>
 <1367012916-22780-1-git-send-email-s.hauer@pengutronix.de>
 <1367012916-22780-3-git-send-email-s.hauer@pengutronix.de>
 <1367927104.601416016@f207.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367927104.601416016@f207.mail.ru>
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
Subject: Re: [PATCH 2/2] ARM: i.MX: ccxmx51: detect SDRAM size by board id
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, May 07, 2013 at 03:45:04PM +0400, Alexander Shiyan wrote:
> > This partly reverts:
> > 
> > commit 697e02b74fddd80527e8ababba10239c83dba029
> > Author: Alexander Shiyan <shc_work@mail.ru>
> > Date:   Tue Jan 22 15:08:31 2013 +0400
> > 
> >     ARM: ccmx51: Remove SDRAM size settings
> > 
> >     This patch removes SDRAM memory size setting from board due
> >     to auto detect last one by ESDCTL.
> > 
> >     Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > The board originally configured the SDRAM controller for the
> > maximum size and detected the usable SDRAM size by reading the
> > board id. This became broken after switching to automatic SDRAM
> > size detection by reading back ESDCTL values.
> > 
> > This patch brings back the old behaviour.
> 
> Please, apply both to git.

Did that.

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
