Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMHKI-0006I9-VU
	for barebox@lists.infradead.org; Wed, 09 Jun 2010 09:12:00 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1OLsdl-0006xz-LQ
	for barebox@lists.infradead.org; Tue, 08 Jun 2010 08:50:25 +0200
Date: Tue, 8 Jun 2010 08:49:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100608064929.GC20799@pengutronix.de>
References: <4C081332.6080904@erwinrol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C081332.6080904@erwinrol.com>
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
Subject: Re: script error
To: Erwin Rol <mailinglists@erwinrol.com>
Cc: barebox@lists.infradead.org

Hi Erwin,

Sorry for the delay.

On Thu, Jun 03, 2010 at 10:40:18PM +0200, Erwin Rol wrote:
> Hallo,
>
> i have a problem with running scripts. It seems that as soon a command  
> in a script fails the whole script is terminated.
>
> I am trying the following in /env/bin/init
>
> echo "Loading env A"
> mkdir /env_a/
> loadenv /dev/biosdisk0.1 /env_a/
> if [ -f /env_a/revision ]; then
>         . /env_a/revision
> fi
>
>
> The /dev/biosdisk0.1 is empty so the loadenv fails, and that also stops  
> the /env/bin/init script, everything after the "fi" is never executed.

That is because of the wrong exit code of loadenv. In do_loadenv we have

return envfs_load(filename, dirname);

which returns negative numbers as errors. The shell interpretes negative
numbers as return codes from commands as 'exit', so this should really be

return envfs_load(filename, dirname) ? 1 : 0;

Probably other commands have this bug aswell.

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
