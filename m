Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpMQ1-0008GS-Cs
 for barebox@lists.infradead.org; Mon, 04 May 2015 19:52:47 +0000
Date: Mon, 4 May 2015 21:52:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150504195220.GS6325@pengutronix.de>
References: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
 <1430619980-26243-8-git-send-email-andrew.smirnov@gmail.com>
 <20150504070119.GJ6325@pengutronix.de>
 <CAHQ1cqGjdGfVhbLLXf1JeiuTm898uxvMCh7cPXsAphEVfTF6qQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGjdGfVhbLLXf1JeiuTm898uxvMCh7cPXsAphEVfTF6qQ@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/8] i.MX: serial: Distil common clock ungating code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, May 04, 2015 at 11:04:25AM -0700, Andrey Smirnov wrote:
> > Please add a imx6_ namespace to this function. The calling code always
> > knows that it is running on imx6, so you can use IMX6_CCM_BASE_ADDR
> > directly rather than using soc##_. The function above is imx6 specific
> > anyway since only this SoC has the gate registers on 0x68..0x80.
> 
> What about i.MX51? As far as I can tell it is the same as i.MX6 in
> this aspect. This function wouldn't have any consumers on i.MX51
> architecture, of course, but shouldn't this function have a SoC
> variant agnostic name, just for the sake of genericity?

On i.MX1/21/25/27/31/35 the function would look different, so when
trying to create a generic function we would need to decide which SoC
we are on. cpu_is_imxxy() doesn't work at that place because it needs
initialisation. #ifdefs do not work because we may have multiple SoC
supports compiled in. Even if we could decide which SoC we are on,
we still need a cascade of if() or #ifdef. Since the caller already
knows the SoC type it's easiest to create SoC specific functions.

If i.MX51 (and i.MX53 probably aswell) is the same as i.MX6 the i.MX6
function could simply call the i.MX5 function.

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
