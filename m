Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXZ4G-00005a-7d
 for barebox@lists.infradead.org; Thu, 03 Sep 2015 18:17:01 +0000
Date: Thu, 3 Sep 2015 20:16:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150903181636.GL18700@pengutronix.de>
References: <1441287526-2077-1-git-send-email-pmamonov@gmail.com>
 <1441295192.3102.9.camel@pengutronix.de>
 <20150903193155.1127b6d5fa5948cc70ec4a16@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150903193155.1127b6d5fa5948cc70ec4a16@gmail.com>
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
Subject: Re: [PATCH] ata: intf_platform_ide: add OF bindings
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Thu, Sep 03, 2015 at 07:31:55PM +0300, Antony Pavlov wrote:
> On Thu, 03 Sep 2015 17:46:32 +0200
> Lucas Stach <l.stach@pengutronix.de> wrote:
> 
> > Hi Peter.
> > 
> > Sorry, but this patch is wrong. You can't just make up completely ad-hoc
> > DT bindings. You are pushing platformdata 1:1 into the DT, which is not
> > how the conversion to DT should be done.
> > 
> > There is also no pre-existing binding for "ata-generic" in the Linux
> > kernel which would define any of those properties.
> 
> Hmmm. in linux-4.2/drivers/ata/pata_of_platform.c I see "ata-generic"
> with "reg-shift" and "pio-mode" properties.

It seems this binding comes from the good old days when writing binding
doc was an optional task ;)

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
