Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgAwh-00017t-4G
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 10:11:45 +0000
Date: Tue, 12 Nov 2013 11:11:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131112101100.GK24559@pengutronix.de>
References: <3749329.nT9HWVKCSz@dev2.cpdesign>
 <20131112082858.GJ24559@pengutronix.de>
 <1714314.nh9XxNhNES@dev2.cpdesign>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1714314.nh9XxNhNES@dev2.cpdesign>
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

On Tue, Nov 12, 2013 at 08:05:19PM +1100, Marc Reilly wrote:
> Hi Sasha,
> 
> > > 
> > > Is there a way to set up an error handler in the scripts? Ideally, a
> > > command or script that could be called if /bin/sh encounters an error.
> > 
> > What would you consider an error? Is executing the 'false' command an
> > error?
> > Commands in scripts must be allowed to fail. You are supposed to catch
> > this via
> > 
> > if [ $? != 0 ]; then
> > 	echo "something bad happened"
> > 	exit 1
> > fi
> 
> "Error" is really a terrible, non-specific word. Sorry. 
> And to make it worse I'm not really sure what the error, um, problem, truly 
> is...
> 
> I scattered a few "false" commands in the init script and it continued onto 
> the end, but when i added (on a board where there there is no bus #1):
> 
> {{{
> # force reset audio dac in case audio playing during soft reset
>  i2c_write -b 1 -a 0x47 -r 0x55 0x80
> }}}
> 
> This causes the init script to just stop and drop to a prompt, assuming 
> because bus #1 was not available. I haven't looked into how the errors/ return 
> codes are different.

hush used to interpret return values from commands < 0 as 'exit'. This
changed with this commit:

| commit 16edced39ecf4c316179b72c01af249f85b36218
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Fri Aug 10 12:40:01 2012 +0200
| 
|     hush: Make exit a shell builtin
|     
|     'exit' used to do its job by returning value < 0. This is a sign
|     for hush that 'exit' is executed. This has problems:
|     
|     - Often commands accidently return a negative value. This causes
|       the shell to exit.
|     - execute_binfmt returns a negative value when it does not find
|       a binary to execute. This again causes the shell to exit.
|       Returning a negative error value seems to be the right thing
|       to do, but catching this in the shell would mean that the exit
|       command does not work anymore.
|     - if called without arguments exit is supposed to return the code
|       of the last command. As a command exit has no access to this code.
|     
|     This patch changes exit to be a builtin and also fixes the last return
|     code problem. While at it, update the help text.
|     
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Probably the patch above introduced problems of its own fixed in later
commits, so if your device is in production you're better off looking
at i2c_write. I assume it returns a negative error value under some
circumstances. Let it return 1 instead.

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
