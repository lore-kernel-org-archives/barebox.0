Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SpYTm-0001ee-21
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 05:31:51 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 13 Jul 2012 07:31:29 +0200
References: <1342100835-9870-1-git-send-email-jbe@pengutronix.de>
 <1342100835-9870-5-git-send-email-jbe@pengutronix.de>
 <4FFF2BE9.1030802@pengutronix.de>
In-Reply-To: <4FFF2BE9.1030802@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201207130731.29367.jbe@pengutronix.de>
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
Subject: Re: [PATCH 4/4] ARM/MXS: add reset cause detection
To: barebox@lists.infradead.org

Marc Kleine-Budde wrote:
> [...]
> >
> > +#ifdef CONFIG_GLOBALVAR
>
> What about:
>
> 	if (IS_ENABLED(CONFIG_GLOBALVAR))

Sure. Looks much better. Will resend this series.

> [...]

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
