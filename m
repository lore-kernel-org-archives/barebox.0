Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s17.web-servers.com.au ([118.127.39.117])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgAAC-00008j-94
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 09:21:36 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Tue, 12 Nov 2013 20:05:19 +1100
Message-ID: <1714314.nh9XxNhNES@dev2.cpdesign>
In-Reply-To: <20131112082858.GJ24559@pengutronix.de>
References: <3749329.nT9HWVKCSz@dev2.cpdesign>
 <20131112082858.GJ24559@pengutronix.de>
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

Hi Sasha,

> > 
> > Is there a way to set up an error handler in the scripts? Ideally, a
> > command or script that could be called if /bin/sh encounters an error.
> 
> What would you consider an error? Is executing the 'false' command an
> error?
> Commands in scripts must be allowed to fail. You are supposed to catch
> this via
> 
> if [ $? != 0 ]; then
> 	echo "something bad happened"
> 	exit 1
> fi

"Error" is really a terrible, non-specific word. Sorry. 
And to make it worse I'm not really sure what the error, um, problem, truly 
is...

I scattered a few "false" commands in the init script and it continued onto 
the end, but when i added (on a board where there there is no bus #1):

{{{
# force reset audio dac in case audio playing during soft reset
 i2c_write -b 1 -a 0x47 -r 0x55 0x80
}}}

This causes the init script to just stop and drop to a prompt, assuming 
because bus #1 was not available. I haven't looked into how the errors/ return 
codes are different.

> 
> Of course error handling in shell is very cumbersome, even more in a
> restricted shell like hush. That's the reason I try to reduce the need
> of shell scripts in barebox. Most things that "really need to work" are
> better done in C.

I agree, especially "really need to work", (and that line above should have 
really been in C) ..
Although, one of the things that I've really loved about barebox is that 
ability to experiment and script with the shell, especially for basic testing.


> Maybe you could implement a 'catch' command. It would execute a command
> given as argument to the command. Something like:
> 
> CATCH_HANDLER=/env/bin/failure.sh
> ...
> catch <command>
> 
> Then whenever <command> fails $CATCH_HANDLER would be executed.
> 
> Don't know if that makes sense, just an idea.

I was initially thinking of something like bash's "set +e" or "trap" but I 
have neither good knowledge of how they work, or how they would/could be 
implemented in bareox.
(Just vague, fading memories :) )

Cheers,
Marc



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
