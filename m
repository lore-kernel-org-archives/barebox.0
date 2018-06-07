Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fR1uE-0006Pp-VB
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 20:53:16 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>) id 1fR1u1-0003hg-RC
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 22:53:01 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>) id 1fR1u1-0008Sd-Hl
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 22:53:01 +0200
Date: Thu, 7 Jun 2018 22:53:01 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180607205301.wepjy427l3dyuqds@pengutronix.de>
References: <20180601180750.5436-1-u.kleine-koenig@pengutronix.de>
 <20180601180750.5436-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180601180750.5436-2-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 2/4] libfile: implement new helper write_file_flash()
To: barebox@lists.infradead.org

Hello,

On Fri, Jun 01, 2018 at 08:07:48PM +0200, Uwe Kleine-K=F6nig wrote:
> +	fd =3D open(filename, O_WRONLY | O_TRUNC | O_CREAT);

This doesn't work on the target machine (dove cubox) I intended to use
it on an m25p0 device. It returns -28. When dropping O_TRUNC | O_CREAT
it works though. So I suggest to either back out patches 3 and 4, or
change the line above to O_WRONLY (which also matches the function
removed in patch 4).

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
