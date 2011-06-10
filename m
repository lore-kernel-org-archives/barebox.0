Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QUvqr-0001kq-0l
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 07:09:53 +0000
Date: Fri, 10 Jun 2011 09:09:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110610070950.GQ23771@pengutronix.de>
References: <201106081149.40298.tim.sander@hbm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201106081149.40298.tim.sander@hbm.com>
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
Subject: Re: Read out version of barebox
To: Tim Sander <tim.sander@hbm.com>
Cc: barebox@lists.infradead.org

Hi Tim,

On Wed, Jun 08, 2011 at 11:49:40AM +0200, Tim Sander wrote:
> Hi
> 
> I'd like to read out the version string of barebox out of flash. Any idea how 
> to do this?

Short answer: No.

We recently added a magic value to the barebox binary which adds at
least a 'barebox' string so that you can at least recognize that
there is a barebox in flash. I couldn't convince the linker though
to add the version string at some fixed location.

(Note this is all Arm specific atm)

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
