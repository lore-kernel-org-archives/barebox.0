Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avKzV-0005np-CB
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 08:38:38 +0000
Date: Wed, 27 Apr 2016 10:38:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160427083814.GN7860@pengutronix.de>
References: <1461663016-21908-1-git-send-email-s.hauer@pengutronix.de>
 <1461693959.9103.118.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461693959.9103.118.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] globalvar: Create Kconfig symbol for NVVAR
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Trent,

On Tue, Apr 26, 2016 at 06:05:05PM +0000, Trent Piepho wrote:
> On Tue, 2016-04-26 at 11:30 +0200, Sascha Hauer wrote:
> > nvvar support not only needs globalvar, but also persistent
> > environment storage. Add a separate default-y option which
> > depends on ENV_HANDLING for this case.
> 
> It seems like other commands, defaultenv, saveenv, loadenv, will
> select ENV_HANDLING.  Shouldn't CMD_NV do the same?

'select' always has the problem that it's easy to get broken
dependencies once the selected option has other dependencies, that's why
I used 'depends on'.

> 
> From what I can tell, the only way to turn on ENV_HANDLING is to enable
> a command that uses it.

Yes, right. So now we have to turn on loadenv/saveenv to get nvvar
support. That's not good and wasn't intended. Similarly with
loadenv/savenv: These commands have to be enabled to get environment
storage, even though the feature should not depend on the command.

> One of those three above or the option to
> compile in an environment.  But isn't it possible to not have any of
> those options on, yet still get an env via a flash sector or file from
> the OF driver or board code?  And thus make use of nv.  IOW,
> CMD_DEFAULT/LOAD/SAVEENV=n
> DEFAULT_ENVIRONMENT=n
> CMD_NV=y
> 
> should work.  It would allow env vars with default values, coming from a
> external flash env, yet not have any commands that might not be needed
> or wanted (e.g., production device not intended to support users
> modifying anything from the barebox prompt).
> 
> In fact, it seems one could use nv without even having the nv command?

Yes. I created a new series making these options user visible
(default-y to not change the existing defconfigs). This should make
it possible to have persistent environment, globalvar and nvvar without
enabling the commands. Also using "depends on" rather than "select"
should reduce dependency hassles. Let me know what you think

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
