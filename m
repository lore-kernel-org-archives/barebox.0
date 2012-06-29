Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkavF-0000z6-UB
 for barebox@lists.infradead.org; Fri, 29 Jun 2012 13:07:43 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 29 Jun 2012 15:07:37 +0200
References: <1340974442-1687-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340974442-1687-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201206291507.37250.jbe@pengutronix.de>
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
Subject: Re: [PATCH] ARM mxs: Clear USB boot mode during startup
To: barebox@lists.infradead.org
Cc: wsa@pengutronix.de

Sascha Hauer wrote:
> When the i.MX28 boots from USB, the ROM code sets this bit. When
> after a reset the ROM code detects that this bit is set it will
> boot from USB again. This means that if we boot once from USB the
> chip will continue to boot from USB until the next power cycle.

And if the RTC has a battery it will boot from USB forever...

> [...]

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
