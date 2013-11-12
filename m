Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vg9Li-0007P0-45
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 08:29:26 +0000
Date: Tue, 12 Nov 2013 09:28:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131112082858.GJ24559@pengutronix.de>
References: <3749329.nT9HWVKCSz@dev2.cpdesign>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3749329.nT9HWVKCSz@dev2.cpdesign>
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

Hi Marc,

On Tue, Nov 12, 2013 at 05:07:35PM +1100, Marc Reilly wrote:
> Hi,
> 
> Rarely, one of the commands (related to hardware access) in our startup 
> scripts fails, and the unit startup ends up bailing to a console prompt. 
> (Which is only on debug port, so no appropriate user feedback) 
> This would end up appearing to the user that nothing has happened, and will 
> either run until batteries are drained (or removed) or a special reset 
> sequence is done.
> 
> Is there a way to set up an error handler in the scripts? Ideally, a command 
> or script that could be called if /bin/sh encounters an error.

What would you consider an error? Is executing the 'false' command an
error?
Commands in scripts must be allowed to fail. You are supposed to catch
this via

if [ $? != 0 ]; then
	echo "something bad happened"
	exit 1
fi

Of course error handling in shell is very cumbersome, even more in a
restricted shell like hush. That's the reason I try to reduce the need
of shell scripts in barebox. Most things that "really need to work" are
better done in C.

Maybe you could implement a 'catch' command. It would execute a command
given as argument to the command. Something like:

CATCH_HANDLER=/env/bin/failure.sh
...
catch <command>

Then whenever <command> fails $CATCH_HANDLER would be executed.

Don't know if that makes sense, just an idea.

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
