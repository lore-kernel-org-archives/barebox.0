Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViLJi-00067S-EV
 for barebox@lists.infradead.org; Mon, 18 Nov 2013 09:40:27 +0000
Date: Mon, 18 Nov 2013 10:40:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131118094001.GY24559@pengutronix.de>
References: <3749329.nT9HWVKCSz@dev2.cpdesign>
 <1714314.nh9XxNhNES@dev2.cpdesign>
 <20131112101100.GK24559@pengutronix.de>
 <1416325.2LyG8l6dzG@dev2.cpdesign>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1416325.2LyG8l6dzG@dev2.cpdesign>
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
Subject: Re: handling script/init errors
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On Wed, Nov 13, 2013 at 05:51:28PM +1100, Marc Reilly wrote:
> Hi,
> 
>  
> > hush used to interpret return values from commands < 0 as 'exit'. This
> > 
> > changed with this commit:
> > | commit 16edced39ecf4c316179b72c01af249f85b36218
> > | Author: Sascha Hauer <s.hauer@pengutronix.de>
> > | Date:   Fri Aug 10 12:40:01 2012 +0200
> > | 
> > |     hush: Make exit a shell builtin
> > |     
> > |     'exit' used to do its job by returning value < 0. This is a sign
> > |     for hush that 'exit' is executed. This has problems:
> > |     
> > |     - Often commands accidently return a negative value. This causes
> > |     
> > |       the shell to exit.
> > |     
> > |     - execute_binfmt returns a negative value when it does not find
> > |     
> > |       a binary to execute. This again causes the shell to exit.
> > |       Returning a negative error value seems to be the right thing
> > |       to do, but catching this in the shell would mean that the exit
> > |       command does not work anymore.
> > |     
> > |     - if called without arguments exit is supposed to return the code
> > |     
> > |       of the last command. As a command exit has no access to this code.
> > |     
> > |     This patch changes exit to be a builtin and also fixes the last return
> > |     code problem. While at it, update the help text.
> > |     
> > |     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > Probably the patch above introduced problems of its own fixed in later
> > commits, so if your device is in production you're better off looking
> > at i2c_write. I assume it returns a negative error value under some
> > circumstances. Let it return 1 instead.
> 
> Thanks!
> 
> In commands/i2c.c: I changed all "return -ENODEV;" to "return COMMAND_ERROR" 
> and the scripts keep executing.
> 
> This fixed it for our version, I'll check if its relevant to current version 
> and send in a patch soon.

This shouldn't be needed in current barebox. The commands now can return
negative error values without causing the shell to exit.

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
