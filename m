Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s17.web-servers.com.au ([118.127.39.117])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgUYJ-0006EF-Dl
 for barebox@lists.infradead.org; Wed, 13 Nov 2013 07:07:53 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Wed, 13 Nov 2013 17:51:28 +1100
Message-ID: <1416325.2LyG8l6dzG@dev2.cpdesign>
In-Reply-To: <20131112101100.GK24559@pengutronix.de>
References: <3749329.nT9HWVKCSz@dev2.cpdesign>
 <1714314.nh9XxNhNES@dev2.cpdesign> <20131112101100.GK24559@pengutronix.de>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

 
> hush used to interpret return values from commands < 0 as 'exit'. This
> 
> changed with this commit:
> | commit 16edced39ecf4c316179b72c01af249f85b36218
> | Author: Sascha Hauer <s.hauer@pengutronix.de>
> | Date:   Fri Aug 10 12:40:01 2012 +0200
> | 
> |     hush: Make exit a shell builtin
> |     
> |     'exit' used to do its job by returning value < 0. This is a sign
> |     for hush that 'exit' is executed. This has problems:
> |     
> |     - Often commands accidently return a negative value. This causes
> |     
> |       the shell to exit.
> |     
> |     - execute_binfmt returns a negative value when it does not find
> |     
> |       a binary to execute. This again causes the shell to exit.
> |       Returning a negative error value seems to be the right thing
> |       to do, but catching this in the shell would mean that the exit
> |       command does not work anymore.
> |     
> |     - if called without arguments exit is supposed to return the code
> |     
> |       of the last command. As a command exit has no access to this code.
> |     
> |     This patch changes exit to be a builtin and also fixes the last return
> |     code problem. While at it, update the help text.
> |     
> |     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Probably the patch above introduced problems of its own fixed in later
> commits, so if your device is in production you're better off looking
> at i2c_write. I assume it returns a negative error value under some
> circumstances. Let it return 1 instead.

Thanks!

In commands/i2c.c: I changed all "return -ENODEV;" to "return COMMAND_ERROR" 
and the scripts keep executing.

This fixed it for our version, I'll check if its relevant to current version 
and send in a patch soon.

Cheers,
Marc




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
