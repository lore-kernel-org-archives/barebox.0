Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Svl6P-00039h-G0
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 08:13:21 +0000
Date: Mon, 30 Jul 2012 10:13:17 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120730081317.GM1528@pengutronix.de>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
 <1343547714-32740-4-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343547714-32740-4-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH 3/7] i2c: add platform_data for i2c_board_info
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On Sun, Jul 29, 2012 at 05:41:50PM +1000, Marc Reilly wrote:
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
We have nearly exactly this patch in one of our customer patch stacks to
get at24 up and running. (I only set client->dev.platform_data two lines
later than you :-)

So:
Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
