Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a41c5-0000M5-5g
 for barebox@lists.infradead.org; Wed, 02 Dec 2015 07:14:05 +0000
Date: Wed, 2 Dec 2015 08:13:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151202071342.GM11966@pengutronix.de>
References: <1448983584-14939-1-git-send-email-fvallee@eukrea.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448983584-14939-1-git-send-email-fvallee@eukrea.fr>
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
Subject: Re: [RFC 0/2] imx_adc command for barebox
To: Florian Vallee <fvallee@eukrea.fr>
Cc: barebox@lists.infradead.org

Hi Florian,

On Tue, Dec 01, 2015 at 04:26:22PM +0100, Florian Vallee wrote:
> The two following patches import the out-of-tree imx_adc driver from Freescale
> in barebox.
> 
> The original driver was interfaced with userspace through IOCTLs, this simple
> port exposes a barebox command "imx_adc" which returns converted values in mV.
> As such it's more a command since it doesn't register itself anywhere and is
> accessed that way only.

You can register the values as device parameters using dev_add_param_int
and friends. That allows us to process the values from scripts or other
code.

> 
> There doesn't seem to be any ADC driver in barebox right now, Is there any
> interest in cleaning this up for inclusion ?

I currently have no use for it, but I am willing to include it if you
clean it up. So maybe the question is more if you have interest ;)

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
