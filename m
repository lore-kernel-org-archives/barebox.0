Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCs98-000259-Qc
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 11:01:51 +0000
Date: Mon, 1 Nov 2010 12:01:48 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20101101110148.GZ4233@pengutronix.de>
References: <1288599979-3905-1-git-send-email-r.schwebel@pengutronix.de>
	<1288599979-3905-5-git-send-email-r.schwebel@pengutronix.de>
	<20101101104425.GV6017@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101101104425.GV6017@pengutronix.de>
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
Subject: Re: [PATCH 4/5] allno: make simple shell the default
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 01, 2010 at 11:44:25AM +0100, Sascha Hauer wrote:
> On Mon, Nov 01, 2010 at 09:26:18AM +0100, Robert Schwebel wrote:
> > Reorder the shells in Kconfig, in order to make the simple shell the
> > default over hush.
>
> The simple shell is mostly unused in barebox and most boards depend on
> hush in their default environment. It shouldn't be made default.

I would expect 'make allnoconfig' to make a minimum image, but it
currently builds in hush. Any idea how to solve this?

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
