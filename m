Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjQpa-0007gS-Au
 for barebox@lists.infradead.org; Fri, 14 Dec 2012 08:41:19 +0000
Date: Fri, 14 Dec 2012 09:40:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121214084054.GO10369@pengutronix.de>
References: <OFA6201BB7.A232B0B4-ONC1257AD4.002BB797-C1257AD4.002C0CE1@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OFA6201BB7.A232B0B4-ONC1257AD4.002BB797-C1257AD4.002C0CE1@o0802.rafi.inhouse>
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
Subject: Re: hush command output string
To: guenter.gebhardt@rafi.de
Cc: barebox@lists.infradead.org

On Fri, Dec 14, 2012 at 09:01:08AM +0100, guenter.gebhardt@rafi.de wrote:
> Hello,
> 
> I want to write a hush script which evaluates standard output of some 
> command, e.g.:
> 
> VARIABLE=$(command)
> 
> or
> 
> VARIABLE=`command`
> 
> How can this be done within hush?

This can't be done. For this we would need output redirection, multiple
thread contexts, ...

In some commands we work around this by specifying the variable name on
the command line.

For example the readline command works like this:

Usage: readline <prompt> VAR
readline reads a line of user input into variable VAR.

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
