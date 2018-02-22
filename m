Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx009.vodafonemail.xion.oxcs.net ([153.92.174.87])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eorkN-0007DA-FG
 for barebox@lists.infradead.org; Thu, 22 Feb 2018 14:21:21 +0000
Date: Thu, 22 Feb 2018 15:20:57 +0100 (CET)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <1846760146.2938.1519309257312@mail.vodafone.de>
In-Reply-To: <20180222080357.7ces7vlsip6gnmxs@pengutronix.de>
References: <20180222080357.7ces7vlsip6gnmxs@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: autotools for barebox host/target tools?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

I have some experience with the gnu autotools.

Could you specify which tools you are thinking about ?

An alternative to the gnu autotools could also be 'meson'.

giorgio

> On February 22, 2018 at 9:03 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> 
> Hi All,
> 
> I was just thinking, the kernel build system is great for compiling
> barebox itself, but for compiling the userspace host and target tools
> autotools would be a better match as they much better allow to specify
> the necessary compilers and to pull the necessary dependencies in.
> Any opinions or even volunteers?
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
