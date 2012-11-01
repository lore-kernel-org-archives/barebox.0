Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TU0WY-00015O-CL
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 19:33:55 +0000
Date: Thu, 1 Nov 2012 20:33:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121101193351.GZ1641@pengutronix.de>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH 0/2] Y-Modem implementation change
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Thu, Nov 01, 2012 at 06:37:16PM +0100, Robert Jarzmik wrote:
> Hi everyone,
> 
> This patchset aims at changing the Y-Modem protocol implementation.
> You have already seen the RFC version, this is the next version, which :
>  - provides a much more tested version
>  - is ready for review
> 
> The following comments have been taken into account :
>  - Antony: testing on a serial line
>  - Sascha: split between protocol and commands
>  - Jean-Christophe: kermit protocol change
> 
> So before doing the real review, could I ask of you :
>  - Antony: could you redo your test over a serial line by applying only
>            the first patch so that you can compare loady and loady2 ?
>            Don't use "loady2 -g", as Y-Modem/G protocol requires a 
>            lossless line (USB), and a serial line cannot guarantee it.
>  - Sascha: does the split command/protocol suit you ?

Almost, yes. The backend support should go to common/ or lib/ and get
its own (invisible) Kconfig symbol which is then selected by the command.
So:

lib/ or common/:

config XYZMODEM
	bool

command/:

config CMD_XYZMODEM
	bool "bla"
	select XYZMODEM
	help
	  ...

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
