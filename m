Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ecWgZ-00077H-AK
 for barebox@lists.infradead.org; Fri, 19 Jan 2018 13:26:28 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>) id 1ecWgL-0003gC-25
 for barebox@lists.infradead.org; Fri, 19 Jan 2018 14:26:09 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>) id 1ecWgK-00058R-Q2
 for barebox@lists.infradead.org; Fri, 19 Jan 2018 14:26:08 +0100
Date: Fri, 19 Jan 2018 14:26:08 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180119132608.ql6qrqwl6xwazc4c@pengutronix.de>
References: <20180119105004.12204-1-u.kleine-koenig@pengutronix.de>
 <20180119105004.12204-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180119105004.12204-2-u.kleine-koenig@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] mci: implement command to switch a mmc device to
 enhanced mode
To: barebox@lists.infradead.org

On Fri, Jan 19, 2018 at 11:50:04AM +0100, Uwe Kleine-K=F6nig wrote:
> @@ -236,7 +236,10 @@ config CMD_VERSION
>  	help
>  	  Pring barebox version. Example:
>  =

> -	  barebox 2014.05.0-00142-gb289373 #177 Mon May 12 20:35:55 CEST 2014

This was an accident, will send v2.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
