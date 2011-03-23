Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q2Jke-00057J-0a
	for barebox@lists.infradead.org; Wed, 23 Mar 2011 08:49:12 +0000
Date: Wed, 23 Mar 2011 09:49:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110323084910.GD29521@pengutronix.de>
References: <AANLkTimU4PFrcfHE+Ns8NO69akeD07tMnVFhdXAvkV5V@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimU4PFrcfHE+Ns8NO69akeD07tMnVFhdXAvkV5V@mail.gmail.com>
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
Subject: Re: ubiformat
To: Jon Ringle <jon@ringle.org>
Cc: barebox@lists.infradead.org

On Mon, Mar 21, 2011 at 02:39:51PM -0400, Jon Ringle wrote:
> I am starting work on creating a ubiformat function for barebox, but just
> wanted to first find out if there is already any work-in-progress for this
> functionality.

Not that I know of. I usually use regular erase commands which of course
erase the erasecounters aswell.

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
