Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P3l3t-0003LZ-6c
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 07:38:46 +0000
Date: Thu, 7 Oct 2010 09:38:42 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20101007073842.GP29673@pengutronix.de>
References: <20101005135213.24F871539A0@gemini.denx.de>
	<20101006072749.GR28242@pengutronix.de>
	<20101006135644.8D7051539A0@gemini.denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101006135644.8D7051539A0@gemini.denx.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Code "borrowed" without attribution to original authors
To: Wolfgang Denk <wd@denx.de>
Cc: barebox@lists.infradead.org

Hello Wolfgang,

On Wed, Oct 06, 2010 at 03:56:44PM +0200, Wolfgang Denk wrote:
> From the commits as they are now, most uninformed readers would
> assume that the code was written by Jean-Christophe, which is not
> correct.
I really wonder why you care about the commit log.  I would care more
about the copyright statements in the code.  (Nevertheless I consider it
correct and fair to attribute in the commit log where the code is taken
from.)

I don't know if you want to make it easier for people to get the
annotations right/better when copying from U-Boot or not.  But if you
do, you could change your standard copyright header to include the
project's name.  Something like:

	/*
	 * (C) Copyright bla blub
	 *
	 * This file is part of das U-Boot, a versatile boot loader for
	 * many platforms.  U-Boot is free software ...
	 * ...
	 */

This doesn't help for the commit logs though.

> As I wrote before in my message to JC, I consider this an accident,
> i. e. rather ignorance than intention.  However, I would be seriously
> disappointed if such things should happen again.
I don't speak for barebox in general or Sascha or Pengutronix or
Jean-Christophe, but I think you cannot expect this to happen never ever
again.  I think the best you can achieve here is that the barebox
contributers get more aware of these issues and try to get it done
better in the future.

(Note, there is no offence intended in the whole mail.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
